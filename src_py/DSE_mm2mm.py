import os
import re
import math
import copy
import json
import time
import logging
import itertools
import numpy as np
from statistics import mean
from collections import defaultdict
from Device import Device, DeviceBase
from defaultlist import defaultlist
from DataflowGraph import DataflowGraph
from Floorplan import Floorplanner
from Common import RESOURCE_TYPES, RESOURCE_TYPES_NO_MEM, RESOURCE_TYPES_MEM
from SlotManager import SlotManager
from TopRTLParser import TopRTLParser
from GlobalRouting import GlobalRouting
from LatencyBalancing import LatencyBalancing
from Codegen import generate_new_rtl_top
from FloorplanTclGeneration import generate_floorplan_constraints
from HLSUtils import dump_directives_to_tcl, run_hls
import matplotlib.pyplot as plt
import oapackage

class DSE_mm2mm:
    def __init__(self, board:DeviceBase, top_rtl_parser:TopRTLParser, slot_manager:SlotManager, floorplan:Floorplanner, graph:DataflowGraph, DSE_LIB_JSON, PREFIX_REGEXS_TO_FUNC_LIBNAME, AreaUtilizationRatio, sub_rtl_paths, LAnum, floorplanmethod):
        self.board = board
        self.top_rtl_parser = top_rtl_parser
        self.slot_manager = slot_manager
        self.floorplan = floorplan
        self.graph = graph
        self.DSE_LIB_JSON = DSE_LIB_JSON
        self.PREFIX_REGEXS_TO_FUNC_LIBNAME = PREFIX_REGEXS_TO_FUNC_LIBNAME
        self.AreaUtilizationRatio = AreaUtilizationRatio
        self.sub_rtl_paths = sub_rtl_paths
        
        self.directives = {"unroll": [], "pipeline": [], "array_partition": [], "allocation": [], "bind_storage": []}
        self.floorplan.preprocessEmptySlots()
        self.grouping_set = self.flatten_list_to_set(self.graph.top_rtl_parser.getStrictGroupingConstraints())
        
        self.dse_lib_dict = defaultdict()
        self.dse_lib_uram_dict = defaultdict()
        self.vname_to_libname = {}
        self.new_vname_to_drctvs = {}
        self.new_vname_to_all = {}
        self.snapshots_latency = []
        self.snapshots_resource = []
        self.snapshots_type = []
        self.best_longest_latency_bygroup = {}
        # self.vname_all_topoorder = defaultlist() # ! topological sort is not yet used.
        self.vname_grouped_topoorder = defaultlist(list)
        self.inc_fp_vname_to_dst_slot = {}
        
        # Get utilization on each slot:
        self.s2util = self.floorplan.getUtilizationQuantity()
        for each_s2util in self.s2util.items():
            logging.info("Slot: {}: Util: {}".format(each_s2util[0].getRTLModuleName(), each_s2util[1]))
            # e.g., "Slot: CR_X4Y8_To_CR_X7Y11: Util: {'BRAM': 30, 'DSP': 0, 'FF': 2162, 'LUT': 2202, 'URAM': 0}"
        self.s2totalarea = {_:_.getArea() for _ in self.s2util.keys()}
        # e.g., "('CR_X4Y0_To_CR_X7Y3', {'BRAM': 240, 'DSP': 1056, 'FF': 240960, 'LUT': 120480, 'URAM': 144})"
        
        self.look_ahead_num = LAnum
        self.floorplanmethod = floorplanmethod
    
    def snapshot_lat_resource(self, type):
        if self.snapshots_resource and self.snapshots_latency:
            logging.info("Pre snapshot:\nLatency: {}, Resource: {}".format(self.snapshots_latency[-1], self.snapshots_resource[-1]))
        self.s2totalarea = {_:_.getArea() for _ in self.floorplan.getUtilizationQuantity().keys()}
        # TOTAL_AREA = {__:sum([self.s2totalarea[_][__] for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys()))]) for __ in RESOURCE_TYPES} # ! Preferred
        TOTAL_AREA = {'BRAM': 2016, 'DSP': 5184, 'FF': 1319040, 'LUT': 659520, 'URAM': 544}
        snapshot_list = [
            {"latency": 0, "area":{_:0 for _ in RESOURCE_TYPES}},
            {"latency": 0, "area":{_:0 for _ in RESOURCE_TYPES}},
            {"latency": 0, "area":{_:0 for _ in RESOURCE_TYPES}},
            {"latency": 0, "area":{_:0 for _ in RESOURCE_TYPES}}
        ]
        kernel0_count = 0
        kernel1_count = 0
        nondf_count = 0
        for vname in self.new_vname_to_all.keys():
            if re.search("_x0", vname) and not re.search("nondf_", vname):
                snapshot_list[0]["latency"] = max(self.new_vname_to_all[vname]["latency"], snapshot_list[0]["latency"])
                for r in RESOURCE_TYPES:
                    snapshot_list[0]["area"][r] += self.new_vname_to_all[vname][r]
                kernel0_count += 1
            elif re.search("_x1", vname) and not re.search("nondf_", vname):
                snapshot_list[1]["latency"] = max(self.new_vname_to_all[vname]["latency"], snapshot_list[1]["latency"])
                for r in RESOURCE_TYPES:
                    snapshot_list[1]["area"][r] += self.new_vname_to_all[vname][r]
                kernel1_count += 1
            elif re.search("_x0", vname) and re.search("nondf_", vname):
                logging.info("snapshot nondf vname: {}".format(vname))
                snapshot_list[2]["latency"] = max(self.new_vname_to_all[vname]["latency"], snapshot_list[2]["latency"])
                for r in RESOURCE_TYPES:
                    snapshot_list[2]["area"][r] += self.new_vname_to_all[vname][r]
                nondf_count += 1
            elif re.search("_x1", vname) and re.search("nondf_", vname):
                logging.info("snapshot nondf vname: {}".format(vname))
                snapshot_list[3]["latency"] = max(self.new_vname_to_all[vname]["latency"], snapshot_list[3]["latency"])
                for r in RESOURCE_TYPES:
                    snapshot_list[3]["area"][r] += self.new_vname_to_all[vname][r]
                nondf_count += 1
            else:
                logging.error("Unexpected vname: {}".format(vname))
                exit(1)
        
        resource_consumed = max([sum([_["area"][__] for _ in snapshot_list])/TOTAL_AREA[__] for __ in RESOURCE_TYPES])
        if resource_consumed > self.AreaUtilizationRatio:
            return
        logging.error((kernel0_count, nondf_count))
        self.snapshots_resource.append(resource_consumed)
        self.snapshots_latency.append(sum([_["latency"] for _ in snapshot_list]))
        logging.info("Post snapshot:\nLatency: {}, Resource: {}".format(self.snapshots_latency[-1], self.snapshots_resource[-1]))
        # logging.info("df resource: {}".format(snapshot_list[-2]))
        self.snapshots_type.append(type)
        # logging.info("Nondf resource: {}".format(snapshot_list[-1]))
        # self.snapshots_type.append(type)
    
    def balance_bram_uram(self, new_design_point_bram, dse_lib_uram_dict, bram_util, bram_total, uram_util, uram_total, alpha, curr_libname):
        success = 0
        if new_design_point_bram == 0:
            success = 1
        elif bram_util + new_design_point_bram <= bram_total * alpha:
            success = 1
        elif curr_libname in dse_lib_uram_dict.keys():
            if uram_util + dse_lib_uram_dict[curr_libname][0]["URAM"] <= uram_total * alpha:
                success = 2
            else:
                success = 0
        else:
            success = 0
        return success
    
    def util_within_total(self, util, total, alpha):
        within = True
        for r in RESOURCE_TYPES:
            if util[r] > total[r] * alpha:  # ! zero (=) not included when counting overflow
                within = False
                break
        return within
    
    # 0. Load DSE lib and sort by latency in non-decreasing order
    def _0_load_dse_lib(self):
        # Reading from dse lib ".json" file
        with open(self.DSE_LIB_JSON, "r") as dse_lib_f:
            data = json.load(dse_lib_f)
            
        # Removing oversize design points
        total_area_limit = {_[0]:_[1]*self.AreaUtilizationRatio/2 for _ in self.board.getTotalAvailArea().items()}
        # logging.info(self.board.getTotalAvailArea())
        # logging.info(total_area_limit)
        for func_name in data.keys():
            # logging.info(func_name)
            # logging.info("Pre length: {}".format(len(data[func_name])))
            data[func_name] = list(filter(lambda x:all([x[_] < total_area_limit[_] for _ in RESOURCE_TYPES]), data[func_name]))
            # logging.info("Post length: {}".format(len(data[func_name])))
        
        # Sorting dse lib by latency (large -> small), and remove redundant points for each function
        for func_name in data.keys():
            self.dse_lib_dict[func_name] = []
            data[func_name].sort(
                key = lambda x : (
                    -x["latency"],
                    max([x[_]/total_area_limit[_] for _ in RESOURCE_TYPES])
                )
            )
            logging.info(func_name)
            # logging.info(func_name + " " + str([_["latency"] for _ in data[func_name]]))
            last_latency = math.inf
            for each_point in data[func_name]:
                if each_point["latency"] < last_latency:
                    self.dse_lib_dict[func_name].append(each_point)
                    last_latency = each_point["latency"]
                #     logging.info("Adding: {}".format(each_point))
                # else:
                #     logging.warning("Ignoring: {}".format(each_point))
            
        # self.dse_lib_uram_dict = json.loads(open("data_uram.json", "r").read())
    
    # 1. Map all vertices from dataflow graph to the DSE lib
    def _1_map_top_to_lib(self):
        # logging.info(len(self.graph.getAllVertices()))
        for v in self.graph.getAllVertices():
            matched = 0
            for reg_ex in self.PREFIX_REGEXS_TO_FUNC_LIBNAME.keys():
                if re.search(reg_ex, v.name):
                    self.vname_to_libname[v.name] = self.PREFIX_REGEXS_TO_FUNC_LIBNAME[reg_ex]
                    matched = 1
                    break
            if matched == 0:
                logging.warning("Function {} found no match by regex".format(v.name))
        # input("\nPlease check the unmatched functions above,\nand press any key to continue (or Ctrl+C to stop)...")
        logging.info("\nContinue...")
        # assert len(vname_to_libname) == len(graph.getAllVertices()) - len(graph.hls_prj_manager.getSubInst()), (len(vname_to_libname), len(graph.getAllVertices()) - len(graph.hls_prj_manager.getSubInst()))
    
    # 2. find the topological order in each group, # ! Currently topological order is not yet used.
    def _2_group_by_kernels(self):
        with open(self.DSE_LIB_JSON, "r") as dse_lib_f:
            data_temp = json.load(dse_lib_f)
        # for each_func in data_temp.keys():
        #     logging.info(data_temp[each_func][0])
        # exit(0)
        self.floorplan.topologicalSort() # generate self.floorplan.topostack
        # self.vname_all_topoorder = defaultlist() # ! topological sort is not yet used.
        self.vname_grouped_topoorder = defaultlist(list)    # group_list of vertex_list of (latency, name)
        
        # 1. Set the first n list in vname_grouped_topoorder as dataflow kernels
        for i in range(len(self.floorplan.topostack)):
            vf_name = self.floorplan.topostack[i]
            if vf_name in self.vname_to_libname.keys():
                if re.search("_x(\d+)", vf_name) and not re.search(r"nondf_", vf_name):
                    kernel_index = re.search("_x(\d+)", vf_name).group(1)
                    # self.vname_all_topoorder.append((self.graph.getVertex(vf_name).getLatency(), self.graph.getVertex(vf_name).getArea(), vf_name, kernel_index))
                    # self.vname_grouped_topoorder[int(kernel_index)].append([self.graph.getVertex(vf_name).getLatency(), self.graph.getVertex(vf_name).getArea(), vf_name])
                    '''
                    self.new_vname_to_all[vf_name] = {
                        "drctv": {
                            "unroll": [],
                            "pipeline": [],
                            "array_partition": [],
                            "allocation": [],
                            "bind_storage": []
                        },
                        "latency": self.graph.getVertex(vf_name).getLatency(),
                        "BRAM": self.graph.getVertex(vf_name).getArea()["BRAM"],
                        "DSP": self.graph.getVertex(vf_name).getArea()["DSP"],
                        "FF": self.graph.getVertex(vf_name).getArea()["FF"],
                        "LUT": self.graph.getVertex(vf_name).getArea()["LUT"],
                        "URAM": self.graph.getVertex(vf_name).getArea()["URAM"]
                    }'''
                    self.vname_grouped_topoorder[int(kernel_index)].append([data_temp[self.vname_to_libname[vf_name]][0]["latency"], {_:data_temp[self.vname_to_libname[vf_name]][0][_] for _ in RESOURCE_TYPES}, vf_name])
                    self.new_vname_to_all[vf_name] = data_temp[self.vname_to_libname[vf_name]][0]
                    # if kernel_index not in self.best_longest_latency_bygroup.keys():
                    #     self.best_longest_latency_bygroup[kernel_index] = -1
                else:
                    logging.warning("WARNING: r'_x\d+' pattern not found in floorplan.topostack[{}] -- {}".format(i, vf_name))
                    # exit(1)
        
        # 2. Append the non-dataflow kernels behind dataflow kernels' list
        for i in range(len(self.floorplan.topostack)):
            vf_name = self.floorplan.topostack[i]
            if vf_name in self.vname_to_libname.keys():
                if re.search(r"nondf_", vf_name):
                    logging.info("vf_name: {}".format(vf_name))
                    # self.vname_grouped_topoorder.append([[self.graph.getVertex(vf_name).getLatency(), self.graph.getVertex(vf_name).getArea(), vf_name]])
                    '''
                    self.new_vname_to_all[vf_name] = {
                        "drctv": {
                            "unroll": [],
                            "pipeline": [],
                            "array_partition": [],
                            "allocation": [],
                            "bind_storage": []
                        },
                        "latency": self.graph.getVertex(vf_name).getLatency(),
                        "BRAM": self.graph.getVertex(vf_name).getArea()["BRAM"],
                        "DSP": self.graph.getVertex(vf_name).getArea()["DSP"],
                        "FF": self.graph.getVertex(vf_name).getArea()["FF"],
                        "LUT": self.graph.getVertex(vf_name).getArea()["LUT"],
                        "URAM": self.graph.getVertex(vf_name).getArea()["URAM"]
                    }'''
                    self.vname_grouped_topoorder.append([[data_temp[self.vname_to_libname[vf_name]][0]["latency"], {_:data_temp[self.vname_to_libname[vf_name]][0][_] for _ in RESOURCE_TYPES}, vf_name]])
                    self.new_vname_to_all[vf_name] = data_temp[self.vname_to_libname[vf_name]][0]
        logging.info("{} {}".format( self.vname_grouped_topoorder, self.vname_to_libname.items()))
        assert sum([len(_) for _ in self.vname_grouped_topoorder]) == len(self.vname_to_libname), "{} {}".format(sum([len(_) for _ in self.vname_grouped_topoorder]), len(self.vname_to_libname))
        
        for i in range(len(self.vname_grouped_topoorder)):
            self.vname_grouped_topoorder[i].sort(key = lambda x: (-x[0], x[2]))  # sorted by latency (and alphabetically) within each group
        # logging.info(self.vname_grouped_topoorder)
        # logging.info(self.new_vname_to_all)
        # exit()
        
        # print(graph.top_rtl_parser.getStrictGroupingConstraints())
        # print(len(graph.top_rtl_parser.getStrictGroupingConstraints()))
    
    def rename_drctvs(self, drctvs, vname, libname):
        if vname.find("nondf_") != -1:
            logging.info(vname)
            logging.info(libname)
            real_nondf_name = re.search(r"nondf_kernel_[A-Za-z0-9]+_x\d+", vname)
            if not real_nondf_name:
                logging.error("Non-dataflow kernel {}'s name is not legal. A legal name should be 'nondf_kernel_[A-Za-z0-9]+_x\d+'.".format(vname))
                return
            else:
                real_nondf_name = real_nondf_name.group(0)
            for drctv in drctvs["unroll"]:
                drctv["func_name"] = real_nondf_name
                drctv["loop_label"] = drctv["loop_label"].replace(libname, real_nondf_name)
            for drctv in drctvs["pipeline"]:
                drctv["func_name"] = real_nondf_name
                drctv["loop_label"] = drctv["loop_label"].replace(libname, real_nondf_name)
            for drctv in drctvs["array_partition"]:
                drctv["func_name"] = real_nondf_name
            for drctv in drctvs["bind_storage"]:
                drctv["func_name"] = real_nondf_name
        else:
            for drctv in drctvs["unroll"]:
                drctv["func_name"] = vname.removesuffix("_U0")
                drctv["loop_label"] = drctv["loop_label"].replace(libname, vname.removesuffix("_U0"))
            for drctv in drctvs["pipeline"]:
                drctv["func_name"] = vname.removesuffix("_U0")
                drctv["loop_label"] = drctv["loop_label"].replace(libname, vname.removesuffix("_U0"))
            for drctv in drctvs["array_partition"]:
                drctv["func_name"] = vname.removesuffix("_U0")
            for drctv in drctvs["bind_storage"]:
                drctv["func_name"] = vname.removesuffix("_U0")
            
    def dse_step(self, kernel_index, func_index_list, design_point):
        temp_new_vname_to_drctvs = copy.deepcopy(self.new_vname_to_drctvs)
        temp_new_vname_to_all = copy.deepcopy(self.new_vname_to_all)
        temp_s2util = copy.deepcopy(self.s2util)
        temp_inc_fp_vname_to_dst_slot = copy.deepcopy(self.inc_fp_vname_to_dst_slot)
        temp_lat = []
        temp_area = []
        all_fit = {}
        for func_index in func_index_list:
            fit_success = False
            curr_lat = self.vname_grouped_topoorder[kernel_index][func_index][0]      # LAT
            curr_area = self.vname_grouped_topoorder[kernel_index][func_index][1]     # AREA
            curr_vname = self.vname_grouped_topoorder[kernel_index][func_index][2]    # NAME
            curr_libname = self.vname_to_libname[curr_vname]
            curr_slot = self.floorplan.getVertexNameToSlot()[curr_vname]
            curr_slot_totalarea = self.s2totalarea[curr_slot]
            # logging.info("{} {} {} {} {}".format(curr_lat, curr_area, curr_vname, curr_slot.getRTLModuleName(), curr_slot_totalarea))
            # logging.info(design_point)
            
            # (1) if still fit
            if self.util_within_total(
                {_:temp_s2util[curr_slot][_]-curr_area[_]+design_point[_] for _ in RESOURCE_TYPES},
                curr_slot_totalarea,
                self.AreaUtilizationRatio
                ):
                fit_success = True
                
                new_drctvs = copy.deepcopy(design_point["drctv"])
                # logging.info(new_drctvs)
                self.rename_drctvs(new_drctvs, curr_vname, curr_libname)
                # logging.info(new_drctvs)
                temp_new_vname_to_drctvs[curr_vname] = new_drctvs
                
                new_all = copy.deepcopy(design_point)
                self.rename_drctvs(new_all["drctv"], curr_vname, curr_libname)
                temp_new_vname_to_all[curr_vname] = new_all
                
                logging.info("Fit!")
                logging.info("Old slot util: {}".format(temp_s2util[curr_slot]))
                logging.info("curr_util: {}".format(curr_area))
                logging.info("new design point: {}".format(design_point))
                
                for r in RESOURCE_TYPES:
                    temp_s2util[curr_slot][r] += design_point[r] - curr_area[r]
                logging.info("Updated slot util: {}".format(temp_s2util[curr_slot]))
                
                temp_lat.append(design_point["latency"])
                temp_area.append({_:design_point[_] for _ in RESOURCE_TYPES})
            
            elif curr_vname in self.grouping_set: # and curr_vname.find("nondf_") == -1:
                # will not try incremental floorplanning for grouped dataflow functions 
                # ! Also skip for non-dataflow functions, or timing broken
                area_overflow = {r:temp_s2util[curr_slot][r]+design_point[r]-curr_area[r]-self.AreaUtilizationRatio*curr_slot_totalarea[r] for r in RESOURCE_TYPES}
                logging.info("!!! Area Overflow: {}".format({r:temp_s2util[curr_slot][r]+design_point[r]-curr_area[r]-self.AreaUtilizationRatio*curr_slot_totalarea[r] for r in RESOURCE_TYPES}))
                logging.info("Total area available in {} is {}".format(curr_slot.getRTLModuleName(), self.s2totalarea[curr_slot]))
                logging.info("Old slot util: {}".format(temp_s2util[curr_slot]))
                logging.info("curr_util: {}".format(curr_area))
                logging.info("new design point: {}".format(design_point))
                pass
            
            else:
                # Calculate area overflow:
                #   (slot util + new design point util - old design point util) - alpha * slot total area
                # -- <1> positive: overflow; <2> negative: ok. <3> Largest positive: bottleneck-type resource
                area_overflow = {r:temp_s2util[curr_slot][r]+design_point[r]-curr_area[r]-self.AreaUtilizationRatio*curr_slot_totalarea[r] for r in RESOURCE_TYPES}
                # Then decide which resource is the bottleneck
                area_overflow_ratio = {r:area_overflow[r]/curr_slot_totalarea[r] for r in RESOURCE_TYPES}
                logging.info("!!! Area Overflow: {}".format({r:temp_s2util[curr_slot][r]+design_point[r]-curr_area[r]-self.AreaUtilizationRatio*curr_slot_totalarea[r] for r in RESOURCE_TYPES}))
                logging.info("Total area available in {} is {}".format(curr_slot.getRTLModuleName(), self.s2totalarea[curr_slot]))
                logging.info("Old slot util: {}".format(temp_s2util[curr_slot]))
                logging.info("curr_util: {}".format(curr_area))
                logging.info("new design point: {}".format(design_point))
                
            
                # for v in self.floorplan.s2v[curr_slot]:
                #     logging.info("{} {}".format(v.name, v.getArea()))
                
                key_of_max_overflow_ratio = max(area_overflow_ratio, key=area_overflow_ratio.get)  # -> str
                other_keys = set(RESOURCE_TYPES) - {key_of_max_overflow_ratio}
                
                # Then find the "dst slot" with least usage of bottleneck-type resource among all slots, since _eq_ is overrode, slots can be directly compared
                other_s2util = dict(filter(lambda x:(x[0].getOrigUpRightY() < 8) and (x[0] != curr_slot), temp_s2util.items()))
                assert len(other_s2util) == 3, "curr_slot: {};\n< 8 ?: {};\nother_s2util: {};\n{}".format(curr_slot.getRTLModuleName(), curr_slot.getOrigUpRightY() < 8, [(_[0].getRTLModuleName(), _[1]) for _ in other_s2util.items()], [(_.getRTLModuleName(), _!=curr_slot, _.getRTLModuleName()!=curr_slot.getRTLModuleName(), _.getOrigUpRightY()<8) for _ in temp_s2util.keys()])
                
                other_s2util_sortedby_min_key = sorted(
                    other_s2util.items(),
                    key=lambda x:(
                        x[1][key_of_max_overflow_ratio],
                        mean([x[1][_]/self.s2totalarea[x[0]][_] for _ in other_keys])
                    )
                ) # Sort by bottleneck-type resource first, then by the mean of other four resources, both incrementally, and take the minimum one, return a list of tuple [(<slot 1>, <resource usage 1>), ...]
                
                # TODO: Then decide which vertices in the current "src slot" to move to "dst slot"? or just move the current v?
                
                # Check whether the current vertex can be fit into "other_s2util_sortedby_min_key", in the order above
                for each_s2util in other_s2util_sortedby_min_key:
                    each_s = each_s2util[0]
                    each_util = each_s2util[1]
                    # Calculate area overflow:
                    #   (dst slot util + new design point util) - alpha * dst slot total area
                    each_area_overflow = {r:temp_s2util[each_s][r]+design_point[r]-self.AreaUtilizationRatio*self.s2totalarea[each_s][r] for r in RESOURCE_TYPES}
                    
                    # # (2) If yes, then move: update directives, and update slot util, and incremental floorplan, break
                    if not any([of > 0 for of in each_area_overflow.values()]):
                        # <0> Move successfully
                        fit_success = True
                        # <1> Update directive
                        new_drctvs = copy.deepcopy(design_point["drctv"])
                        # logging.info(new_drctvs)
                        self.rename_drctvs(new_drctvs, curr_vname, curr_libname)
                        # logging.info(new_drctvs)
                        temp_new_vname_to_drctvs[curr_vname] = new_drctvs
                        
                        new_all = copy.deepcopy(design_point)
                        self.rename_drctvs(new_all["drctv"], curr_vname, curr_libname)
                        temp_new_vname_to_all[curr_vname] = new_all
                            
                        # <2> Update slot util
                        # <2.1> Add dst util by new design_point's area
                        for r in RESOURCE_TYPES:
                            temp_s2util[each_s][r] += design_point[r]
                        # <2.2> Subtract src (current) util by old (current) design_point's area
                        for r in RESOURCE_TYPES:
                            temp_s2util[curr_slot][r] -= curr_area[r]
                            
                        # <3> Incremental floorplan
                        # # TODO: make sure whether "incrementalFloorplan()" is executed one-by-one here, or all together later
                        # # ! current choice: all together later
                        temp_inc_fp_vname_to_dst_slot[curr_vname] = each_s.getName()
                        logging.info("Incremental planning {} to {}".format(curr_vname, each_s.getName()))
                            
                        logging.info("Updated slot util: {}".format(temp_s2util[each_s]))
                        
                        temp_lat.append(design_point["latency"])
                        temp_area.append({_:design_point[_] for _ in RESOURCE_TYPES})
                        break
                # break --|-- from `for each_s2util in other_s2util_sortedby_min_key:`
                    # # (3) If no, then try the next slot, if still not, try next design point (or no solution found)
                    else:
                        pass
            all_fit[curr_vname] = fit_success
            
        if all(all_fit.values()):
            self.new_vname_to_drctvs = copy.deepcopy(temp_new_vname_to_drctvs)
            self.new_vname_to_all = copy.deepcopy(temp_new_vname_to_all)
            self.s2util = copy.deepcopy(temp_s2util)
            self.inc_fp_vname_to_dst_slot = copy.deepcopy(temp_inc_fp_vname_to_dst_slot)
            logging.info("all_fit: {}".format(all_fit))
            # Update `self.vname_grouped_topoorder` and re-order
            for func_index in func_index_list:
                self.vname_grouped_topoorder[kernel_index][func_index][0] = temp_lat[func_index]
                self.vname_grouped_topoorder[kernel_index][func_index][1] = temp_area[func_index]
                # Remember to change the latency and area in DataflowGraph as well:
                self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].latency = temp_lat[func_index]
                self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].area = temp_area[func_index]
                
            
            # TODO: If already reaches the best design point in terms of latency, remove the current vertices from `self.vname_grouped_topoorder` to stop further optimization on them.
            curr_vname = self.vname_grouped_topoorder[kernel_index][0][2]    # NAME
            curr_libname = self.vname_to_libname[curr_vname]
            # logging.info("!!!!! self.vname_grouped_topoorder[kernel_index][0][0] {}".format(self.vname_grouped_topoorder[kernel_index][0][0]))
            # logging.info("!!!!! self.dse_lib_dict[curr_libname][-1][\"latency\"] {}".format(self.dse_lib_dict[curr_libname][-1]["latency"]))
            if self.vname_grouped_topoorder[kernel_index][0][0] == self.dse_lib_dict[curr_libname][-1]["latency"]:
                logging.info("Already-best removal of {}".format([_[2] for _ in self.vname_grouped_topoorder[kernel_index][ : len(func_index_list)]]))
                self.vname_grouped_topoorder[kernel_index] = self.vname_grouped_topoorder[kernel_index][len(func_index_list) : ]
            self.vname_grouped_topoorder[kernel_index].sort(key = lambda x: (-x[0], x[2]))  # sorted by latency (and alphabetically) within each group
            
            logging.info("Fit success.")
            return True, all_fit
        else:
            logging.info("Fit failure: {}".format(all_fit))
            return False, all_fit

    def flatten_list_to_set(self, list_of_lists):
        return set([_ for sublist in list_of_lists for _ in sublist])
    
    def defragmentation(self, fit_detail):
        # logging.info({_.getRTLModuleName():self.s2util[_] for _ in self.s2util.keys()})
        # Type 1: defragmentation for non-dataflow
        defrag_success = False
        if all([("nondf_" in _) for _ in fit_detail.keys()]):
            logging.info("Defragmentation for non-dataflow.")
            nondf_slot_list = set([self.floorplan.v2s[self.graph.vertices[_]] for _ in fit_detail.keys()])
            slots = list(filter(lambda x:(x.getOrigUpRightY() < 8 and x not in nondf_slot_list), self.s2util.keys()))
            if len(slots) == 0:
                logging.info("Overflow in all slots. Defragmentation fails.")
                return False
            slots.sort(
                key = lambda x: -mean([self.s2util[x][_]/self.s2totalarea[x][_] for _ in RESOURCE_TYPES])
            )
            logging.info("src_slot: {}".format([slot.getRTLModuleName() for slot in nondf_slot_list]))
            logging.info("dst_slot: {}".format([slot.getRTLModuleName() for slot in slots]))
            defrag_success_list = []
            for src_slot in nondf_slot_list:    # src
                v_list = sorted( self.floorplan.s2v[src_slot], key = lambda x : -max(x.getArea().values()) )
                each_defrag_success = False
                for v in v_list:
                    if v.name in self.grouping_set: # ! Non-dataflow also skipped here.
                        # logging.info("Skip defrag {} because of grouping.".format(v.name))
                        continue
                    for dst_slot in slots:  # dst slot
                        if self.util_within_total(
                            {_:self.s2util[dst_slot][_]+v.getArea()[_] for _ in RESOURCE_TYPES},
                            self.s2totalarea[dst_slot],
                            self.AreaUtilizationRatio
                            ):
                            # (1) Incremental floorplanning v to dst slot
                            self.inc_fp_vname_to_dst_slot[v.name] = dst_slot.getName()
                            self.floorplan.incrementalFloorplan(self.inc_fp_vname_to_dst_slot)
                            self.inc_fp_vname_to_dst_slot.clear()
                            # (2) Update src/dst slot util
                            for r in RESOURCE_TYPES:    # src
                                self.s2util[src_slot][r] -= v.getArea()[r]
                            for r in RESOURCE_TYPES:    # src
                                self.s2util[dst_slot][r] += v.getArea()[r]
                            each_defrag_success = True
                            break
                        else:
                            pass
                defrag_success_list.append(each_defrag_success)             
            defrag_success = all(defrag_success_list)
        elif not any([("nondf_" in _) for _ in fit_detail.keys()]):
            logging.info("Defragmentation for dataflow functions.")
            slots = list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))
            if len(slots) == 0:
                logging.info("Overflow in all slots. Defragmentation fails.")
                return False
            slots.sort(
                key = lambda x: -mean([self.s2util[x][_]/self.s2totalarea[x][_] for _ in RESOURCE_TYPES])
            )
            # slots by util in non-increasing order
            for i in range(1, len(slots)):  # src slot
                # sort vertices in current slot by max-util in non-increasing order
                v_list = sorted( self.floorplan.s2v[slots[i]], key = lambda x : -max(x.getArea().values()) )
                logging.info("Slot: {}".format(slots[i].getRTLModuleName()))
                # for v in v_list:
                #     logging.info("{} {}".format(v.name, v.getArea()))
                for v in v_list:
                    if v.name in self.grouping_set: # ! Non-dataflow also skipped here.
                        # logging.info("Skip defrag {} because of grouping.".format(v.name))
                        continue
                    for j in range(i):  # dst slot
                        if self.util_within_total(
                            {_:self.s2util[slots[j]][_]+v.getArea()[_] for _ in RESOURCE_TYPES},
                            self.s2totalarea[slots[j]],
                            self.AreaUtilizationRatio
                            ):
                            # (1) Incremental floorplanning v to dst slot
                            self.inc_fp_vname_to_dst_slot[v.name] = slots[j].getName()
                            self.floorplan.incrementalFloorplan(self.inc_fp_vname_to_dst_slot)
                            self.inc_fp_vname_to_dst_slot.clear()
                            # (2) Update src/dst slot util
                            for r in RESOURCE_TYPES:    # src
                                self.s2util[slots[i]][r] -= v.getArea()[r]
                            for r in RESOURCE_TYPES:    # src
                                self.s2util[slots[j]][r] += v.getArea()[r]
                            defrag_success = True
                            break
                        else:
                            pass            
        else:
            logging.info("Mixed dataflow and non-dataflow. Currently cannot deal with.")
                    
        # logging.info("Post Defragmentation")
        # for slot in slots:
        #     logging.info("{} {:.4f}".format(slot.getRTLModuleName(), mean([self.s2util[slot][_]/self.s2totalarea[slot][_] for _ in RESOURCE_TYPES])))
        #     logging.info("{} {:.4f}".format(slot.getRTLModuleName(), mean([self.floorplan.getUtilizationQuantity()[slot][_]/self.s2totalarea[slot][_] for _ in RESOURCE_TYPES])))
                        
        return defrag_success
    
    def _3_dse_main_algorithm(self):
        self.new_vname_to_drctvs = {_:{"unroll": [], "pipeline": [], "array_partition": [], "allocation": [], "bind_storage": []} for _ in self.vname_to_libname.keys()}
        
        self.inc_fp_vname_to_dst_slot = {}
        
        # 1. Find the bottleneck vertex with maximum latency among all kernels, if equality exists among different kernels, choose the one with smallest kernel index
        # 2. Find the second-longest vertex among all kernels
        # 3. Find a new design point for bottleneck vertex satisfying:
        #   # (1) Latency smaller than the second-longest vertex
        #   # (2) Max latency among all points satisfying (1)
        # 4. Try to fit the new design point into original slot
        #   # If 4 succeeds, update directive list and slot usage, start over for the previous second-longest (current bottleneck) vertex
        # 5. If 4 fails, try to fit the new design point into another slot # ! For those points in grouping constraint (and outside of currently "lower-half" of the board), stop (don't change their position)
        #   # If 5 succeeds, update directive list and old/new slot usage, start over for the previous second-longest (current bottleneck) vertex
        # 6. If 5 fails, remove it from the dse candidate vertex list, and start over for the new bottleneck
        
        LAT = 0
        AREA = 1
        NAME = 2
        while True:
            dse_stop = False
            
            # 1.1 Find the bottleneck vertex with maximum latency among all kernels, if equality exists among different kernels, choose the one with smallest kernel index
            longest_func_latency = -1
            longest_func_kernel_index = -1
            longest_func = {}
            longest_func_index_list = []
            
            for kernel_index in range(len(self.vname_grouped_topoorder)):   # self.vname_grouped_topoorder --> [0]: latency, [1]: area, [2]: func_name
                if len(self.vname_grouped_topoorder[kernel_index]) == 0:
                    continue    # extreme case, where all nodes in this kernel are non-optimizable (and already removed)
                if longest_func_latency < self.vname_grouped_topoorder[kernel_index][0][LAT]:
                    longest_func_latency = self.vname_grouped_topoorder[kernel_index][0][LAT]
                    longest_func_kernel_index = kernel_index
                    longest_func = self.vname_grouped_topoorder[kernel_index][0]
            assert longest_func_latency != -1 and longest_func_kernel_index != -1 and longest_func, "vname_grouped_topoorder: {}".format(self.vname_grouped_topoorder)
            logging.info("Longest func: {}".format(longest_func))
            
            curr_libname = self.vname_to_libname[longest_func[NAME]]    # function name in the DSE lib (without kernel index r"_x\d+")
            assert self.dse_lib_dict[curr_libname], "design space for {} function not found!".format(longest_func[NAME])
            design_points_pruning_index = 0
            
            # 1.2 Find the set of longest functions in that kernel with the same length
            for i in range(len(self.vname_grouped_topoorder[longest_func_kernel_index])):
                if self.vname_grouped_topoorder[longest_func_kernel_index][i][LAT] == longest_func_latency and self.vname_grouped_topoorder[longest_func_kernel_index][i][NAME].find(curr_libname) != -1:
                    longest_func_index_list.append(i)
                else:
                    break
            logging.info("Longest Function List:\n\t\t{}".format([self.vname_grouped_topoorder[longest_func_kernel_index][_][NAME] for _ in longest_func_index_list]))
            # while longest_func_till_index < len(self.vname_grouped_topoorder[longest_func_kernel_index]):
            #     if self.vname_grouped_topoorder[longest_func_kernel_index][longest_func_till_index][LAT] == longest_func_latency:
            #         longest_func_till_index += 1
            # logging.info("Longest Function List:\n\t\t{}".format([self.vname_grouped_topoorder[longest_func_kernel_index][_][NAME] for _ in range(0, longest_func_till_index)]))
            
            # 2. Find the second-longest vertex among all kernels
            second_longest_func_latency_list = []
            second_longest_func_latency = -1
            for kernel_index in range(len(self.vname_grouped_topoorder)):
                if len(self.vname_grouped_topoorder[kernel_index]) == 0:
                    continue    # extreme case, where all nodes in this kernel are non-optimizable (and already removed)
                for func_index in range(0, len(self.vname_grouped_topoorder[kernel_index])):
                    if self.vname_grouped_topoorder[kernel_index][func_index][LAT] < longest_func_latency:
                        second_longest_func_latency_list.append(self.vname_grouped_topoorder[kernel_index][func_index][LAT])
                        break
            if not second_longest_func_latency_list:
                logging.warning("Second-Longest Function not found, DSE ends.")
                # break
                logging.info(self.new_vname_to_all)
                second_longest_func_latency = longest_func[LAT] - 1
            else:
                second_longest_func_latency = max(second_longest_func_latency_list)
                logging.info("Second-longest latency in each kernel: {}".format(second_longest_func_latency_list))
                logging.info("Second-longest latency = {}".format(second_longest_func_latency))
            # assert second_longest_func_latency_list, "vname_grouped_topoorder: {}".format(self.vname_grouped_topoorder)
            
            # 3. Find a new design point for bottleneck vertex satisfying (1) and (2):
            #   # (1) Latency smaller than the second-longest vertex
            #   # (2) Max latency among all points satisfying (1)
            #   # ! If (1) cannot be met, choose the design point with minimum latency
                # ! But if the minimum latency one cannot be met, need to change strategy to (3)
            #   # (3) Choose the next smaller-latency point, and apply to all vertices having the same latency with current `longest_func`.
            #   #     TODO: Mix global floorplanning here for a batch-update of longest functions could probably improve the QoR.
            
            # Pruning DSE lib by removing
            # logging.info("Pre design-space pruning, len = {}".format(len(self.dse_lib_dict[curr_libname])))
            while design_points_pruning_index < len(self.dse_lib_dict[curr_libname]):
                if longest_func[LAT] > self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]:
                    logging.info("Stop pruning at latency: {}".format(self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]))
                    break
                logging.info("Longest Lat: {}, Pruning Lat in lib: {}".format(longest_func[LAT], self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]))
                design_points_pruning_index += 1
            self.dse_lib_dict[curr_libname] = self.dse_lib_dict[curr_libname][design_points_pruning_index : ]
            available_design_points = self.dse_lib_dict[curr_libname]
            # logging.info("Post design-space pruning, len = {}".format(len(self.dse_lib_dict[curr_libname])))
            # logging.info("Post design-space pruning, len = {}".format(len(available_design_points)))
            
            # Finding the new design point (next smaller latency) to move to
            dp_index = 0
            while dp_index < len(available_design_points):
                if available_design_points[dp_index]["latency"] < second_longest_func_latency:
                    dp_index += 1
                    break
                dp_index += 1
            available_design_points = available_design_points[:dp_index]    # only changes `available_design_points`, doesn't affect `self.dse_lib_dict[curr_libname]`
            # logging.info(len(available_design_points))
            if len(available_design_points) == 0:
                logging.info("Already reached best point for {}".format([self.vname_grouped_topoorder[_][func_index][NAME] for _ in longest_func_kernel_index]))
                
            logging.info('available_design_points[-1]["latency"]: {} v.s. Second-longest latency: {}'.format(available_design_points[-1]["latency"], second_longest_func_latency))
            
            # 4. Try to fit the new design point into original slot
            #   # If 4 succeeds, update directive list and slot usage, start over for the previous second-longest (current bottleneck) vertex
            design_point = available_design_points[-1]  # try the ideal next design point first
            # logging.info("Pre : s2util = {}".format({_.getRTLModuleName():self.s2util[_] for _ in self.s2util.keys()}))
            old_s2util = copy.deepcopy(self.s2util)
            fit_success, fit_detail = self.dse_step(
                longest_func_kernel_index,
                longest_func_index_list,
                design_point
            )
            logging.info("Pre v.s. Post slot util ratio = \n{}".format(
                '\n'.join([
                    "{}\n{} {}".format(
                        _.getRTLModuleName(),
                        ["{:.4f}".format(old_s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES],
                        ["{:.4f}".format(self.s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                    ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))
                ])
            ))
            
            logging.info("Pre : Longest func {} of kernel {} = {}".format(longest_func[NAME], longest_func_kernel_index, longest_func_latency))
            logging.info("Post: Longest func {} of kernel {} = {}".format(self.vname_grouped_topoorder[longest_func_kernel_index][0][NAME], longest_func_kernel_index, self.vname_grouped_topoorder[longest_func_kernel_index][0][LAT]))
            
            # input()
            
            if fit_success:                
                # Check if there's any incremental floorplanning needed
                if self.inc_fp_vname_to_dst_slot:
                    self.floorplan.incrementalFloorplan(self.inc_fp_vname_to_dst_slot)
                    self.inc_fp_vname_to_dst_slot.clear()
                self.snapshot_lat_resource(0)
            else:
                dse_stop = True
                # 1. Try defragmentation and re-run dse_step, if success, then (1) incremental floorplan, (2) check reaches best of not, then continue
                defrag_success = self.defragmentation(fit_detail)  # especially meaningful for non-dataflow big kernels because we cannot move them
                if defrag_success:
                    old_s2util = copy.deepcopy(self.s2util)
                    fit_success, fit_detail = self.dse_step(
                        longest_func_kernel_index,
                        longest_func_index_list,
                        design_point
                    )
                    logging.info("Pre v.s. Post slot util ratio = \n{}".format(
                        '\n'.join([
                            "{}\n{} {}".format(
                                _.getRTLModuleName(),
                                ["{:.4f}".format(old_s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES],
                                ["{:.4f}".format(self.s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                            ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))
                        ])
                    ))
                    # logging.info("Pre v.s. Post total util = \n{} {}".format(
                    #     [sum([old_s2util[_][__] for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))]) for __ in RESOURCE_TYPES],
                    #     [sum([self.s2util[_][__] for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))]) for __ in RESOURCE_TYPES]
                    # ))
                    if fit_success:
                        # Check if there's any incremental floorplanning needed
                        if self.inc_fp_vname_to_dst_slot:
                            self.floorplan.incrementalFloorplan(self.inc_fp_vname_to_dst_slot)
                            self.inc_fp_vname_to_dst_slot.clear()
                        self.snapshot_lat_resource(1)
                        dse_stop = False
                    else:
                        # self.floorplan.printFloorplan()
                        dse_stop = True
                else:
                    dse_stop = True
                    
                # 2. If defragmentation + re-dse_step fails, try look-ahead.
                # The risk of setting a larger look ahead number is that, it's going to take longer, and more importantly, potentially squeezing the design space for other vertices.
                if dse_stop:
                    logging.info("Look-ahead list: \n{}".format(
                        [(_["latency"], max([_[__]/self.s2totalarea[self.floorplan.getVertexNameToSlot()[longest_func[NAME]]][__] for __ in RESOURCE_TYPES])) for _ in self.dse_lib_dict[curr_libname][dp_index:]]
                    ))
                    for _i in range(dp_index, min(dp_index + self.look_ahead_num, len(self.dse_lib_dict[curr_libname]))):
                    # if dp_index < len(self.dse_lib_dict[curr_libname]):
                        logging.info("Look-ahead")
                        design_point = self.dse_lib_dict[curr_libname][_i]
                        fit_success, fit_detail = self.dse_step(
                            longest_func_kernel_index,
                            longest_func_index_list,
                            design_point
                        )
                        logging.info("Pre v.s. Post slot util ratio = \n{}".format(
                            '\n'.join([
                                "{}\n{} {}".format(
                                    _.getRTLModuleName(),
                                    ["{:.4f}".format(old_s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES],
                                    ["{:.4f}".format(self.s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                                ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))
                            ])
                        ))
                        
                        logging.info("Pre : Longest func {} of kernel {} = {}".format(longest_func[NAME], longest_func_kernel_index, longest_func_latency))
                        logging.info("Post: Longest func {} of kernel {} = {}".format(self.vname_grouped_topoorder[longest_func_kernel_index][0][NAME], longest_func_kernel_index, self.vname_grouped_topoorder[longest_func_kernel_index][0][LAT]))
                        if fit_success:
                            # Check if there's any incremental floorplanning needed
                            if self.inc_fp_vname_to_dst_slot:
                                self.floorplan.incrementalFloorplan(self.inc_fp_vname_to_dst_slot)
                                self.inc_fp_vname_to_dst_slot.clear()
                            dse_stop = False
                            self.snapshot_lat_resource(2)
                            break
                        else:
                            # self.floorplan.printFloorplan()
                            dse_stop = True
                        
                # TODO: 3. try look-back (relaxation) and removing current vertices from `self.vname_grouped_topoorder` to stop further optimization on them.
                if dse_stop == True:
                    logging.info("Look-back")
                    for design_point in available_design_points[-2::-1]:
                        old_s2util = copy.deepcopy(self.s2util)
                        fit_success, fit_detail = self.dse_step(
                            longest_func_kernel_index,
                            longest_func_index_list,
                            design_point
                        )
                        logging.info("Pre v.s. Post slot util ratio = \n{}".format(
                            '\n'.join([
                                "{}\n{} {}".format(
                                    _.getRTLModuleName(),
                                    ["{:.4f}".format(old_s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES],
                                    ["{:.4f}".format(self.s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                                ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))
                            ])
                        ))
                        # logging.info("Pre v.s. Post total util = \n{} {}".format(
                        #     [sum([old_s2util[_][__] for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))]) for __ in RESOURCE_TYPES],
                        #     [sum([self.s2util[_][__] for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))]) for __ in RESOURCE_TYPES]
                        # ))
                        if fit_success:
                            # Check if there's any incremental floorplanning needed
                            if self.inc_fp_vname_to_dst_slot:
                                self.floorplan.incrementalFloorplan(self.inc_fp_vname_to_dst_slot)
                                self.inc_fp_vname_to_dst_slot.clear()
                            dse_stop = False
                            self.snapshot_lat_resource(3)
                            for each_vname in self.graph.vertices.keys():
                                logging.info("{}".format({each_vname:self.graph.vertices[each_vname].area}))
                            break
                        else:
                            # self.floorplan.printFloorplan()
                            dse_stop = True
            
            if dse_stop == True and any(self.vname_grouped_topoorder):
                # logging.info("{}".format(self.vname_grouped_topoorder[0]))
                logging.info("Deleting index {} fromm vname_group_topoorder".format(longest_func_kernel_index))
                del self.vname_grouped_topoorder[longest_func_kernel_index]
                logging.info("{}".format(self.vname_grouped_topoorder))
                dse_stop = False
            
            # if dse_stop == True or if all vertices best (removed from `self.vname_grouped_topoorder`)
            if dse_stop or not any(self.vname_grouped_topoorder):   
                break
            
    def dse_step_no_fp(self, kernel_index, func_index_list, design_point):
        temp_new_vname_to_drctvs = copy.deepcopy(self.new_vname_to_drctvs)
        temp_new_vname_to_all = copy.deepcopy(self.new_vname_to_all)
        temp_s2util = copy.deepcopy(self.s2util)
        temp_lat = []
        temp_area = []
        all_fit = {}
        for func_index in func_index_list:
            fit_success = False
            curr_lat = self.vname_grouped_topoorder[kernel_index][func_index][0]      # LAT
            curr_area = self.vname_grouped_topoorder[kernel_index][func_index][1]     # AREA
            curr_vname = self.vname_grouped_topoorder[kernel_index][func_index][2]    # NAME
            curr_libname = self.vname_to_libname[curr_vname]
            curr_slot = self.floorplan.getVertexNameToSlot()[curr_vname]
            curr_slot_totalarea = self.s2totalarea[curr_slot]
            # logging.info("{} {} {} {} {}".format(curr_lat, curr_area, curr_vname, curr_slot.getRTLModuleName(), curr_slot_totalarea))
            # logging.info(design_point)
            
            # (1) if still fit
            if self.util_within_total(
                {_:temp_s2util[curr_slot][_]-curr_area[_]+design_point[_] for _ in RESOURCE_TYPES},
                curr_slot_totalarea,
                self.AreaUtilizationRatio
                ):
                fit_success = True
                
                new_drctvs = copy.deepcopy(design_point["drctv"])
                # logging.info(new_drctvs)
                self.rename_drctvs(new_drctvs, curr_vname, curr_libname)
                # logging.info(new_drctvs)
                temp_new_vname_to_drctvs[curr_vname] = new_drctvs
                
                new_all = copy.deepcopy(design_point)
                self.rename_drctvs(new_all["drctv"], curr_vname, curr_libname)
                temp_new_vname_to_all[curr_vname] = new_all
                
                logging.info("Fit!")
                logging.info("Old slot util: {}".format(temp_s2util[curr_slot]))
                logging.info("curr_util: {}".format(curr_area))
                logging.info("new design point: {}".format(design_point))
                
                for r in RESOURCE_TYPES:
                    temp_s2util[curr_slot][r] += design_point[r] - curr_area[r]
                logging.info("Updated slot util: {}".format(temp_s2util[curr_slot]))
                
                temp_lat.append(design_point["latency"])
                temp_area.append({_:design_point[_] for _ in RESOURCE_TYPES})
            
            all_fit[curr_vname] = fit_success
            
        if all(all_fit.values()):
            self.new_vname_to_drctvs = copy.deepcopy(temp_new_vname_to_drctvs)
            self.new_vname_to_all = copy.deepcopy(temp_new_vname_to_all)
            self.s2util = copy.deepcopy(temp_s2util)
            logging.info("all_fit: {}".format(all_fit))
            # Update `self.vname_grouped_topoorder` and re-order
            for func_index in func_index_list:
                self.vname_grouped_topoorder[kernel_index][func_index][0] = temp_lat[func_index]
                self.vname_grouped_topoorder[kernel_index][func_index][1] = temp_area[func_index]
                # Remember to change the latency and area in DataflowGraph as well:
                self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].latency = temp_lat[func_index]
                self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].area = temp_area[func_index]
                
            
            # TODO: If already reaches the best design point in terms of latency, remove the current vertices from `self.vname_grouped_topoorder` to stop further optimization on them.
            curr_vname = self.vname_grouped_topoorder[kernel_index][0][2]    # NAME
            curr_libname = self.vname_to_libname[curr_vname]
            # logging.info("!!!!! self.vname_grouped_topoorder[kernel_index][0][0] {}".format(self.vname_grouped_topoorder[kernel_index][0][0]))
            # logging.info("!!!!! self.dse_lib_dict[curr_libname][-1][\"latency\"] {}".format(self.dse_lib_dict[curr_libname][-1]["latency"]))
            if self.vname_grouped_topoorder[kernel_index][0][0] == self.dse_lib_dict[curr_libname][-1]["latency"]:
                logging.info("Already-best removal of {}".format([_[2] for _ in self.vname_grouped_topoorder[kernel_index][ : len(func_index_list)]]))
                self.vname_grouped_topoorder[kernel_index] = self.vname_grouped_topoorder[kernel_index][len(func_index_list) : ]
            self.vname_grouped_topoorder[kernel_index].sort(key = lambda x: (-x[0], x[2]))  # sorted by latency (and alphabetically) within each group
            
            logging.info("Fit success.")
            return True, all_fit
        else:
            logging.info("Not-fit removal of {}".format([_[2] for _ in self.vname_grouped_topoorder[kernel_index][ : len(func_index_list)]]))
            self.vname_grouped_topoorder[kernel_index] = self.vname_grouped_topoorder[kernel_index][len(func_index_list) : ]
            self.vname_grouped_topoorder[kernel_index].sort(key = lambda x: (-x[0], x[2]))  # sorted by latency (and alphabetically) within each group
            logging.info("Fit failure: {}".format(all_fit))
            return False, all_fit
            
    def _3_dse_main_algorithm_no_fp(self):
        self.new_vname_to_drctvs = {_:{"unroll": [], "pipeline": [], "array_partition": [], "allocation": [], "bind_storage": []} for _ in self.vname_to_libname.keys()}
        
        self.inc_fp_vname_to_dst_slot = {}
        
        # 1. Find the bottleneck vertex with maximum latency among all kernels, if equality exists among different kernels, choose the one with smallest kernel index
        # 2. Find the second-longest vertex among all kernels
        # 3. Find a new design point for bottleneck vertex satisfying:
        #   # (1) Latency smaller than the second-longest vertex
        #   # (2) Max latency among all points satisfying (1)
        # 4. Try to fit the new design point into original slot
        #   # If 4 succeeds, update directive list and slot usage, start over for the previous second-longest (current bottleneck) vertex
        # 5. If 4 fails, try to fit the new design point into another slot # ! For those points in grouping constraint (and outside of currently "lower-half" of the board), stop (don't change their position)
        #   # If 5 succeeds, update directive list and old/new slot usage, start over for the previous second-longest (current bottleneck) vertex
        # 6. If 5 fails, remove it from the dse candidate vertex list, and start over for the new bottleneck
        
        LAT = 0
        AREA = 1
        NAME = 2
        while True:
            dse_stop = False
            
            # 1.1 Find the bottleneck vertex with maximum latency among all kernels, if equality exists among different kernels, choose the one with smallest kernel index
            longest_func_latency = -1
            longest_func_kernel_index = -1
            longest_func = {}
            longest_func_index_list = []
            
            for kernel_index in range(len(self.vname_grouped_topoorder)):   # self.vname_grouped_topoorder --> [0]: latency, [1]: area, [2]: func_name
                if len(self.vname_grouped_topoorder[kernel_index]) == 0:
                    continue    # extreme case, where all nodes in this kernel are non-optimizable (and already removed)
                if longest_func_latency < self.vname_grouped_topoorder[kernel_index][0][LAT]:
                    longest_func_latency = self.vname_grouped_topoorder[kernel_index][0][LAT]
                    longest_func_kernel_index = kernel_index
                    longest_func = self.vname_grouped_topoorder[kernel_index][0]
            assert longest_func_latency != -1 and longest_func_kernel_index != -1 and longest_func, "vname_grouped_topoorder: {}".format(self.vname_grouped_topoorder)
            logging.info("Longest func: {}".format(longest_func))
            
            curr_libname = self.vname_to_libname[longest_func[NAME]]    # function name in the DSE lib (without kernel index r"_x\d+")
            assert self.dse_lib_dict[curr_libname], "design space for {} function not found!".format(longest_func[NAME])
            design_points_pruning_index = 0
            
            # 1.2 Find the set of longest functions in that kernel with the same length
            for i in range(len(self.vname_grouped_topoorder[longest_func_kernel_index])):
                if self.vname_grouped_topoorder[longest_func_kernel_index][i][LAT] == longest_func_latency and self.vname_grouped_topoorder[longest_func_kernel_index][i][NAME].find(curr_libname) != -1:
                    longest_func_index_list.append(i)
                else:
                    break
            logging.info("Longest Function List:\n\t\t{}".format([self.vname_grouped_topoorder[longest_func_kernel_index][_][NAME] for _ in longest_func_index_list]))
            # while longest_func_till_index < len(self.vname_grouped_topoorder[longest_func_kernel_index]):
            #     if self.vname_grouped_topoorder[longest_func_kernel_index][longest_func_till_index][LAT] == longest_func_latency:
            #         longest_func_till_index += 1
            # logging.info("Longest Function List:\n\t\t{}".format([self.vname_grouped_topoorder[longest_func_kernel_index][_][NAME] for _ in range(0, longest_func_till_index)]))
            
            # 2. Find the second-longest vertex among all kernels
            second_longest_func_latency_list = []
            second_longest_func_latency = -1
            for kernel_index in range(len(self.vname_grouped_topoorder)):
                if len(self.vname_grouped_topoorder[kernel_index]) == 0:
                    continue    # extreme case, where all nodes in this kernel are non-optimizable (and already removed)
                for func_index in range(0, len(self.vname_grouped_topoorder[kernel_index])):
                    if self.vname_grouped_topoorder[kernel_index][func_index][LAT] < longest_func_latency:
                        second_longest_func_latency_list.append(self.vname_grouped_topoorder[kernel_index][func_index][LAT])
                        break
            if not second_longest_func_latency_list:
                logging.warning("Second-Longest Function not found, DSE ends.")
                break
            # assert second_longest_func_latency_list, "vname_grouped_topoorder: {}".format(self.vname_grouped_topoorder)
            second_longest_func_latency = max(second_longest_func_latency_list)
            logging.info("Second-longest latency in each kernel: {}".format(second_longest_func_latency_list))
            logging.info("Second-longest latency = {}".format(second_longest_func_latency))
            
            # 3. Find a new design point for bottleneck vertex satisfying (1) and (2):
            #   # (1) Latency smaller than the second-longest vertex
            #   # (2) Max latency among all points satisfying (1)
            #   # ! If (1) cannot be met, choose the design point with minimum latency
                # ! But if the minimum latency one cannot be met, need to change strategy to (3)
            #   # (3) Choose the next smaller-latency point, and apply to all vertices having the same latency with current `longest_func`.
            #   #     TODO: Mix global floorplanning here for a batch-update of longest functions could probably improve the QoR.
            
            # Pruning DSE lib by removing
            # logging.info("Pre design-space pruning, len = {}".format(len(self.dse_lib_dict[curr_libname])))
            while design_points_pruning_index < len(self.dse_lib_dict[curr_libname]):
                if longest_func[LAT] > self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]:
                    logging.info("Stop pruning at latency: {}".format(self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]))
                    break
                logging.info("Longest Lat: {}, Pruning Lat in lib: {}".format(longest_func[LAT], self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]))
                design_points_pruning_index += 1
            self.dse_lib_dict[curr_libname] = self.dse_lib_dict[curr_libname][design_points_pruning_index : ]
            available_design_points = self.dse_lib_dict[curr_libname]
            # logging.info("Post design-space pruning, len = {}".format(len(self.dse_lib_dict[curr_libname])))
            # logging.info("Post design-space pruning, len = {}".format(len(available_design_points)))
            
            # Finding the new design point (next smaller latency) to move to
            dp_index = 0
            while dp_index < len(available_design_points):
                if available_design_points[dp_index]["latency"] < second_longest_func_latency:
                    dp_index += 1
                    break
                dp_index += 1
            available_design_points = available_design_points[:dp_index]    # only changes `available_design_points`, doesn't affect `self.dse_lib_dict[curr_libname]`
            # logging.info(len(available_design_points))
            if len(available_design_points) == 0:
                logging.info("Already reached best point for {}".format([self.vname_grouped_topoorder[_][func_index][NAME] for _ in longest_func_kernel_index]))
                
            logging.info('available_design_points[-1]["latency"]: {} v.s. Second-longest latency: {}'.format(available_design_points[-1]["latency"], second_longest_func_latency))
            
            # 4. Try to fit the new design point into original slot
            #   # If 4 succeeds, update directive list and slot usage, start over for the previous second-longest (current bottleneck) vertex
            design_point = available_design_points[-1]  # try the ideal next design point first
            # logging.info("Pre : s2util = {}".format({_.getRTLModuleName():self.s2util[_] for _ in self.s2util.keys()}))
            old_s2util = copy.deepcopy(self.s2util)
            fit_success, fit_detail = self.dse_step_no_fp(
                longest_func_kernel_index,
                longest_func_index_list,
                design_point
            )
            logging.info("Pre v.s. Post slot util ratio = \n{}".format(
                '\n'.join([
                    "{}\n{} {}".format(
                        _.getRTLModuleName(),
                        ["{:.4f}".format(old_s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES],
                        ["{:.4f}".format(self.s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                    ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))
                ])
            ))
            
            # logging.info("Pre : Longest func {} of kernel {} = {}".format(longest_func[NAME], longest_func_kernel_index, longest_func_latency))
            # logging.info("Post: Longest func {} of kernel {} = {}".format(self.vname_grouped_topoorder[longest_func_kernel_index][0][NAME], longest_func_kernel_index, self.vname_grouped_topoorder[longest_func_kernel_index][0][LAT]))
            
            # input()
            
            if fit_success:                
                # Check if there's any incremental floorplanning needed
                self.snapshot_lat_resource(0)
            else:
                pass
                            
            # if dse_stop == True or if all vertices best (removed from `self.vname_grouped_topoorder`)
            if dse_stop or not any(self.vname_grouped_topoorder):   
                break
            
    def dse_step_global_fp(self, kernel_index, func_index_list, design_point):
        temp_new_vname_to_drctvs = copy.deepcopy(self.new_vname_to_drctvs)
        curr_vname = self.vname_grouped_topoorder[kernel_index][0][2]    # NAME
        curr_libname = self.vname_to_libname[curr_vname]
        old_latency = {}
        old_area = {}
        for func_index in func_index_list:
            # Remember to change the latency and area in DataflowGraph as well:
            old_latency[func_index] = copy.deepcopy(self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].latency)
            old_area[func_index] = copy.deepcopy(self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].area)
            self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].latency = design_point["latency"]
            self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].area = {_:design_point[_] for _ in RESOURCE_TYPES}
        if self.floorplanmethod == 'IterativeDivisionToHalfSLR':
            fp_success = self.floorplan.coarseGrainedFloorplan()
        elif self.floorplanmethod == 'EightWayDivisionToHalfSLR':
            logging.info("Running 8-way")
            fp_success = self.floorplan.eightWayPartition()
        else:
            logging.error("Unknown floorplanning.")
            exit(1)
        # fp_success = self.floorplan.coarseGrainedFloorplan()
        if fp_success:
            self.s2totalarea = {_:_.getArea() for _ in self.floorplan.getUtilizationQuantity().keys()}
            logging.info("Slots: {}".format({_:_.getRTLModuleName() for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys()))}))
            temp_s2util = self.floorplan.getUtilizationQuantity()
            max_s2util = max([max([(temp_s2util[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys()))])
            logging.info(max_s2util)
            logging.info(type(max_s2util))
            fp_success &= (max_s2util <= self.AreaUtilizationRatio)
        if not fp_success:
            # Recovering old dataflowgraph
            for func_index in func_index_list:
                self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].latency = old_latency[func_index]
                self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].area = old_area[func_index]
            self.floorplan.coarseGrainedFloorplan()
            logging.info("Ouch")
            return False, {}
        for func_index in func_index_list:
            self.vname_grouped_topoorder[kernel_index][func_index][0] = design_point["latency"]
            self.vname_grouped_topoorder[kernel_index][func_index][1] = {_:design_point[_] for _ in RESOURCE_TYPES}
            curr_vname = self.vname_grouped_topoorder[kernel_index][func_index][2]    # NAME
            self.new_vname_to_all[curr_vname] = copy.deepcopy(design_point)

            curr_libname = self.vname_to_libname[curr_vname]
            new_drctvs = copy.deepcopy(design_point["drctv"])
            # logging.info(new_drctvs)
            self.rename_drctvs(new_drctvs, curr_vname, curr_libname)
            # logging.info(new_drctvs)
            temp_new_vname_to_drctvs[curr_vname] = new_drctvs
        self.new_vname_to_drctvs = copy.deepcopy(temp_new_vname_to_drctvs)
        if self.vname_grouped_topoorder[kernel_index][0][0] == self.dse_lib_dict[curr_libname][-1]["latency"]:
            logging.info("Already-best removal of {}".format([_[2] for _ in self.vname_grouped_topoorder[kernel_index][ : len(func_index_list)]]))
            self.vname_grouped_topoorder[kernel_index] = self.vname_grouped_topoorder[kernel_index][len(func_index_list) : ]
        return True, {}
        
    def _3_dse_main_algorithm_global_fp(self):
        self.new_vname_to_drctvs = {_:{"unroll": [], "pipeline": [], "array_partition": [], "allocation": [], "bind_storage": []} for _ in self.vname_to_libname.keys()}
        
        self.inc_fp_vname_to_dst_slot = {}
        
        # 1. Find the bottleneck vertex with maximum latency among all kernels, if equality exists among different kernels, choose the one with smallest kernel index
        # 2. Find the second-longest vertex among all kernels
        # 3. Find a new design point for bottleneck vertex satisfying:
        #   # (1) Latency smaller than the second-longest vertex
        #   # (2) Max latency among all points satisfying (1)
        # 4. Try to fit the new design point into original slot
        #   # If 4 succeeds, update directive list and slot usage, start over for the previous second-longest (current bottleneck) vertex
        # 5. If 4 fails, try to fit the new design point into another slot # ! For those points in grouping constraint (and outside of currently "lower-half" of the board), stop (don't change their position)
        #   # If 5 succeeds, update directive list and old/new slot usage, start over for the previous second-longest (current bottleneck) vertex
        # 6. If 5 fails, remove it from the dse candidate vertex list, and start over for the new bottleneck
        
        LAT = 0
        AREA = 1
        NAME = 2
        while True:
            dse_stop = False
            
            # 1.1 Find the bottleneck vertex with maximum latency among all kernels, if equality exists among different kernels, choose the one with smallest kernel index
            longest_func_latency = -1
            longest_func_kernel_index = -1
            longest_func = {}
            longest_func_index_list = []
            
            for kernel_index in range(len(self.vname_grouped_topoorder)):   # self.vname_grouped_topoorder --> [0]: latency, [1]: area, [2]: func_name
                if len(self.vname_grouped_topoorder[kernel_index]) == 0:
                    continue    # extreme case, where all nodes in this kernel are non-optimizable (and already removed)
                if longest_func_latency < self.vname_grouped_topoorder[kernel_index][0][LAT]:
                    longest_func_latency = self.vname_grouped_topoorder[kernel_index][0][LAT]
                    longest_func_kernel_index = kernel_index
                    longest_func = self.vname_grouped_topoorder[kernel_index][0]
            assert longest_func_latency != -1 and longest_func_kernel_index != -1 and longest_func, "vname_grouped_topoorder: {}".format(self.vname_grouped_topoorder)
            logging.info("Longest func: {}".format(longest_func))
            
            curr_libname = self.vname_to_libname[longest_func[NAME]]    # function name in the DSE lib (without kernel index r"_x\d+")
            assert self.dse_lib_dict[curr_libname], "design space for {} function not found!".format(longest_func[NAME])
            design_points_pruning_index = 0
            
            # 1.2 Find the set of longest functions in that kernel with the same length
            for i in range(len(self.vname_grouped_topoorder[longest_func_kernel_index])):
                if self.vname_grouped_topoorder[longest_func_kernel_index][i][LAT] == longest_func_latency and self.vname_grouped_topoorder[longest_func_kernel_index][i][NAME].find(curr_libname) != -1:
                    longest_func_index_list.append(i)
                else:
                    break
            logging.info("Longest Function List:\n\t\t{}".format([self.vname_grouped_topoorder[longest_func_kernel_index][_][NAME] for _ in longest_func_index_list]))
            # while longest_func_till_index < len(self.vname_grouped_topoorder[longest_func_kernel_index]):
            #     if self.vname_grouped_topoorder[longest_func_kernel_index][longest_func_till_index][LAT] == longest_func_latency:
            #         longest_func_till_index += 1
            # logging.info("Longest Function List:\n\t\t{}".format([self.vname_grouped_topoorder[longest_func_kernel_index][_][NAME] for _ in range(0, longest_func_till_index)]))
            
            # 2. Find the second-longest vertex among all kernels
            second_longest_func_latency_list = []
            second_longest_func_latency = -1
            for kernel_index in range(len(self.vname_grouped_topoorder)):
                if len(self.vname_grouped_topoorder[kernel_index]) == 0:
                    continue    # extreme case, where all nodes in this kernel are non-optimizable (and already removed)
                for func_index in range(0, len(self.vname_grouped_topoorder[kernel_index])):
                    if self.vname_grouped_topoorder[kernel_index][func_index][LAT] < longest_func_latency:
                        second_longest_func_latency_list.append(self.vname_grouped_topoorder[kernel_index][func_index][LAT])
                        break
            # if not second_longest_func_latency_list:
            #     logging.warning("Second-Longest Function not found, DSE ends.")
            #     break
            # # assert second_longest_func_latency_list, "vname_grouped_topoorder: {}".format(self.vname_grouped_topoorder)
            # second_longest_func_latency = max(second_longest_func_latency_list)
            # logging.info("Second-longest latency in each kernel: {}".format(second_longest_func_latency_list))
            # logging.info("Second-longest latency = {}".format(second_longest_func_latency))
            if not second_longest_func_latency_list:
                logging.warning("Second-Longest Function not found, DSE ends.")
                # break
                # logging.info(self.new_vname_to_all)
                second_longest_func_latency = longest_func[LAT] - 1
            else:
                second_longest_func_latency = max(second_longest_func_latency_list)
                logging.info("Second-longest latency in each kernel: {}".format(second_longest_func_latency_list))
                logging.info("Second-longest latency = {}".format(second_longest_func_latency))
            # assert second_longest_func_latency_list, "vname_grouped_topoorder: {}".format(self.vname_grouped_topoorder)
            
            # 3. Find a new design point for bottleneck vertex satisfying (1) and (2):
            #   # (1) Latency smaller than the second-longest vertex
            #   # (2) Max latency among all points satisfying (1)
            #   # ! If (1) cannot be met, choose the design point with minimum latency
                # ! But if the minimum latency one cannot be met, need to change strategy to (3)
            #   # (3) Choose the next smaller-latency point, and apply to all vertices having the same latency with current `longest_func`.
            #   #     TODO: Mix global floorplanning here for a batch-update of longest functions could probably improve the QoR.
            
            # Pruning DSE lib by removing
            # logging.info("Pre design-space pruning, len = {}".format(len(self.dse_lib_dict[curr_libname])))
            while design_points_pruning_index < len(self.dse_lib_dict[curr_libname]):
                if longest_func[LAT] > self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]:
                    logging.info("Stop pruning at latency: {}".format(self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]))
                    break
                logging.info("Longest Lat: {}, Pruning Lat in lib: {}".format(longest_func[LAT], self.dse_lib_dict[curr_libname][design_points_pruning_index]["latency"]))
                design_points_pruning_index += 1
            self.dse_lib_dict[curr_libname] = self.dse_lib_dict[curr_libname][design_points_pruning_index : ]
            available_design_points = self.dse_lib_dict[curr_libname]
            # logging.info("Post design-space pruning, len = {}".format(len(self.dse_lib_dict[curr_libname])))
            # logging.info("Post design-space pruning, len = {}".format(len(available_design_points)))
            
            # Finding the new design point (next smaller latency) to move to
            dp_index = 0
            while dp_index < len(available_design_points):
                if available_design_points[dp_index]["latency"] < second_longest_func_latency:
                    dp_index += 1
                    break
                dp_index += 1
            available_design_points = available_design_points[:dp_index]    # only changes `available_design_points`, doesn't affect `self.dse_lib_dict[curr_libname]`
            # logging.info(len(available_design_points))
            if len(available_design_points) == 0:
                logging.info("Already reached best point for {}".format([self.vname_grouped_topoorder[longest_func_kernel_index][func_index][NAME] for func_index in longest_func_index_list]))
            else:
                logging.info('available_design_points[-1]["latency"]: {} v.s. Second-longest latency: {}'.format(available_design_points[-1]["latency"], second_longest_func_latency))
            
            # 4. Try to fit the new design point into original slot
            #   # If 4 succeeds, update directive list and slot usage, start over for the previous second-longest (current bottleneck) vertex
            design_point = available_design_points[-1]  # try the ideal next design point first
            # logging.info("Pre : s2util = {}".format({_.getRTLModuleName():self.floorplan.getUtilizationQuantity()[_] for _ in self.floorplan.getUtilizationQuantity().keys()}))
            old_s2util = copy.deepcopy(self.floorplan.getUtilizationQuantity())
            old_s2totalarea = copy.deepcopy(self.s2totalarea)
            fit_success, fit_detail = self.dse_step_global_fp(
                longest_func_kernel_index,
                longest_func_index_list,
                design_point
            )
            self.s2totalarea = {_:_.getArea() for _ in self.floorplan.getUtilizationQuantity().keys()}
            # logging.info("Pre:")
            # for slot in list(filter(lambda x:x.getOrigUpRightY() < 8, old_s2util.keys())):
            #     logging.info("Slot item: {}, Slot name: {}".format(slot, slot.getRTLModuleName()))
            # logging.info("Post:")
            # for slot in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys())):
            #     logging.info("Slot item: {}, Slot name: {}".format(slot, slot.getRTLModuleName()))
            logging.info("Pre slot util ratio = \n{}".format(
                '\n'.join([
                    "{}\n{}".format(
                        _.getRTLModuleName(),
                        ["{:.4f}".format(old_s2util[_][__]/old_s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                    ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, old_s2util.keys()))
                ])
            ))
            logging.info("Post slot util ratio = \n{}".format(
                '\n'.join([
                    "{}\n{}".format(
                        _.getRTLModuleName(),
                        ["{:.4f}".format(self.floorplan.getUtilizationQuantity()[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                    ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys()))
                ])
            ))
            
            logging.info("Pre : Longest func {} of kernel {} = {}".format(longest_func[NAME], longest_func_kernel_index, longest_func_latency))
            logging.info("Post: Longest func {} of kernel {} = {}".format(self.vname_grouped_topoorder[longest_func_kernel_index][0][NAME], longest_func_kernel_index, self.vname_grouped_topoorder[longest_func_kernel_index][0][LAT]))
            
            # input()
            
            # if fit_success:
            #     self.snapshot_lat_resource(4)
            # else:
            #     dse_stop = True
            # # if dse_stop == True or if all vertices best (removed from `self.vname_grouped_topoorder`)
            # if dse_stop or not any(self.vname_grouped_topoorder):   
            #     break
            
            if fit_success:
                self.snapshot_lat_resource(4)
            else:
                dse_stop = True
                # 2. If defragmentation + re-dse_step fails, try look-ahead.
                # The risk of setting a larger look ahead number is that, it's going to take longer, and more importantly, potentially squeezing the design space for other vertices.
                if dse_stop:
                    logging.info("Look-ahead list: \n{}".format(
                        [(_["latency"], max([_[__]/self.s2totalarea[self.floorplan.getVertexNameToSlot()[longest_func[NAME]]][__] for __ in RESOURCE_TYPES])) for _ in self.dse_lib_dict[curr_libname][dp_index:]]
                    ))
                    for _i in range(dp_index, min(dp_index + self.look_ahead_num, len(self.dse_lib_dict[curr_libname]))):
                    # if dp_index < len(self.dse_lib_dict[curr_libname]):
                        logging.info("Look-ahead")
                        design_point = self.dse_lib_dict[curr_libname][_i]
                        old_s2util = copy.deepcopy(self.floorplan.getUtilizationQuantity())
                        old_s2totalarea = copy.deepcopy(self.s2totalarea)
                        fit_success, fit_detail = self.dse_step_global_fp(
                            longest_func_kernel_index,
                            longest_func_index_list,
                            design_point
                        )
                        
                        self.s2totalarea = {_:_.getArea() for _ in self.floorplan.getUtilizationQuantity().keys()}
                        # logging.info("Pre:")
                        # for slot in list(filter(lambda x:x.getOrigUpRightY() < 8, old_s2util.keys())):
                        #     logging.info("Slot item: {}, Slot name: {}".format(slot, slot.getRTLModuleName()))
                        # logging.info("Post:")
                        # for slot in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys())):
                        #     logging.info("Slot item: {}, Slot name: {}".format(slot, slot.getRTLModuleName()))
                        logging.info("Pre slot util ratio = \n{}".format(
                            '\n'.join([
                                "{}\n{}".format(
                                    _.getRTLModuleName(),
                                    ["{:.4f}".format(old_s2util[_][__]/old_s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                                ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, old_s2util.keys()))
                            ])
                        ))
                        logging.info("Post slot util ratio = \n{}".format(
                            '\n'.join([
                                "{}\n{}".format(
                                    _.getRTLModuleName(),
                                    ["{:.4f}".format(self.floorplan.getUtilizationQuantity()[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                                ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys()))
                            ])
                        ))
                        
                        logging.info("Pre : Longest func {} of kernel {} = {}".format(longest_func[NAME], longest_func_kernel_index, longest_func_latency))
                        logging.info("Post: Longest func {} of kernel {} = {}".format(self.vname_grouped_topoorder[longest_func_kernel_index][0][NAME], longest_func_kernel_index, self.vname_grouped_topoorder[longest_func_kernel_index][0][LAT]))
                        if fit_success:
                            dse_stop = False
                            self.snapshot_lat_resource(5)
                            break
                        else:
                            # self.floorplan.printFloorplan()
                            dse_stop = True
                        
                # TODO: 3. try look-back (relaxation) and removing current vertices from `self.vname_grouped_topoorder` to stop further optimization on them.
                if dse_stop == True:
                    logging.info("Look-back")
                    for design_point in available_design_points[-2::-1]:
                        old_s2util = copy.deepcopy(self.s2util)
                        old_s2util = copy.deepcopy(self.floorplan.getUtilizationQuantity())
                        old_s2totalarea = copy.deepcopy(self.s2totalarea)
                        fit_success, fit_detail = self.dse_step_global_fp(
                            longest_func_kernel_index,
                            longest_func_index_list,
                            design_point
                        )
                        self.s2totalarea = {_:_.getArea() for _ in self.floorplan.getUtilizationQuantity().keys()}
                        # logging.info("Pre:")
                        # for slot in list(filter(lambda x:x.getOrigUpRightY() < 8, old_s2util.keys())):
                        #     logging.info("Slot item: {}, Slot name: {}".format(slot, slot.getRTLModuleName()))
                        # logging.info("Post:")
                        # for slot in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys())):
                        #     logging.info("Slot item: {}, Slot name: {}".format(slot, slot.getRTLModuleName()))
                        logging.info("Pre slot util ratio = \n{}".format(
                            '\n'.join([
                                "{}\n{}".format(
                                    _.getRTLModuleName(),
                                    ["{:.4f}".format(old_s2util[_][__]/old_s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                                ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, old_s2util.keys()))
                            ])
                        ))
                        logging.info("Post slot util ratio = \n{}".format(
                            '\n'.join([
                                "{}\n{}".format(
                                    _.getRTLModuleName(),
                                    ["{:.4f}".format(self.floorplan.getUtilizationQuantity()[_][__]/self.s2totalarea[_][__]) for __ in RESOURCE_TYPES]
                                ) for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.floorplan.getUtilizationQuantity().keys()))
                            ])
                        ))
                        
                        logging.info("Pre : Longest func {} of kernel {} = {}".format(longest_func[NAME], longest_func_kernel_index, longest_func_latency))
                        logging.info("Post: Longest func {} of kernel {} = {}".format(self.vname_grouped_topoorder[longest_func_kernel_index][0][NAME], longest_func_kernel_index, self.vname_grouped_topoorder[longest_func_kernel_index][0][LAT]))
                        # logging.info("Pre v.s. Post total util = \n{} {}".format(
                        #     [sum([old_s2util[_][__] for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))]) for __ in RESOURCE_TYPES],
                        #     [sum([self.s2util[_][__] for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))]) for __ in RESOURCE_TYPES]
                        # ))
                        if fit_success:
                            dse_stop = False
                            self.snapshot_lat_resource(6)
                            break
                        else:
                            # self.floorplan.printFloorplan()
                            dse_stop = True
                            
                
            if dse_stop == True and any(self.vname_grouped_topoorder):
                # logging.info("{}".format(self.vname_grouped_topoorder[0]))
                logging.info("Deleting index {} fromm vname_group_topoorder".format(longest_func_kernel_index))
                del self.vname_grouped_topoorder[longest_func_kernel_index]
                logging.info("{}".format(self.vname_grouped_topoorder))
                dse_stop = False
                
            # if dse_stop == True or if all vertices best (removed from `self.vname_grouped_topoorder`)
            if dse_stop or not any(self.vname_grouped_topoorder):   
                break
    
    def _4_draw_dse_path(self):
        funcs = list(self.vname_to_libname.keys())
        with open(self.DSE_LIB_JSON, "r") as ds_f:
            data = json.load(ds_f)
        
        # TOTAL_AREA = {__:sum([self.s2totalarea[_][__] for _ in list(filter(lambda x:x.getOrigUpRightY() < 8, self.s2util.keys()))]) for __ in RESOURCE_TYPES} # ! Preferred
        # TOTAL_AREA = {_[0]:_[1]/2 for _ in self.board.getTotalAvailArea().items()}
        TOTAL_AREA = {'BRAM': 2016, 'DSP': 5184, 'FF': 1319040, 'LUT': 659520, 'URAM': 544} # ignore the right-most column for Vitis IP
        logging.info(TOTAL_AREA)
        # print(data.keys())
        # 1. Design Space extraction for A single dataflow kernel
        # df_funcs = [_ for _ in funcs if _.find("_x0") != -1]
        
        logging.info("1. Extracting dataflow kernel's functions...")
        df_funcs = []
        funcs_count = {_:0 for _ in self.PREFIX_REGEXS_TO_FUNC_LIBNAME.values()}
        for each_func in funcs:
            if each_func.find("_x0") == -1 or each_func.find("nondf_") != -1:
                continue
            _found = False
            for each_prefix in self.PREFIX_REGEXS_TO_FUNC_LIBNAME.keys():
                if re.search(each_prefix, each_func):
                    _found = True
                    funcs_count[self.PREFIX_REGEXS_TO_FUNC_LIBNAME[each_prefix]] += 1
            if _found:
                df_funcs.append(each_func)
        logging.info(df_funcs)
        logging.info(len(df_funcs))
        # exit(0)
        # Remove redundancy for each function (PE) ---------------------
        # logging.info("2. Removing non-pareto-front points of each function")
        # data_clean = defaultdict()
        # for key in data.keys():
        #     if key.find("nondf_") != -1:
        #         continue
        #     data_clean[key] = []
        #     data[key] = sorted(data[key],
        #         key=lambda x: (
        #             -x["latency"],
        #             max([x[_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
        #         )
        #     )   # major: latency large -> small; minor: resource small -> large
        #     last_latency = math.inf
        #     last_max_resource = 0
        #     for each_point in data[key]:
        #         data_clean[key].append(each_point)  # ! Not removing redundancy here
        #         # if each_point["latency"] < last_latency:
        #         #     data_clean[key].append(each_point)
        #         #     last_latency = each_point["latency"]
        #         #     last_max_resource = max([each_point[_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
        #     data_clean[key].reverse()   # major: latency small -> large; minor: resource large -> small
        
        # Sort dse lib dataflow functions
        for k in data.keys():
            if k.find("nondf_") != -1:
                continue
            data[k] = sorted(
                data[k],
                key=lambda x: (
                    x["latency"],
                    -max([x[_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
                )
            )# major: latency small -> large; minor: resource large -> small
        logging.info("data:\n{}\n{}".format(data.keys(), len(data)))
        # exit(0)
        
        # Building libname_to_vname
        count = 0
        libname_to_vname = defaultdict(list)
        for v in self.graph.getAllVertices():
            matched = 0
            for reg_ex in self.PREFIX_REGEXS_TO_FUNC_LIBNAME.keys():
                if re.search(reg_ex, v.name):
                    count += 1
                    libname_to_vname[self.PREFIX_REGEXS_TO_FUNC_LIBNAME[reg_ex]].append(v.name)
                    matched = 1
                    break
            if matched == 0:
                logging.warning("Function {} found no match by regex".format(v.name))
        logging.info("{}".format(data.keys())) # ['nondf_kernel_heat', 'A_IO_L3_in', 'A_IO_L3_in_serialize', 'A_IO_L2_in', 'A_IO_L2_in_boundary', 'B_IO_L3_in', 'B_IO_L3_in_serialize', 'B_IO_L2_in', 'B_IO_L2_in_boundary', 'C_IO_L3_in', 'C_IO_L3_in_serialize', 'C_IO_L2_in', 'C_IO_L2_in_boundary', 'PE_wrapper', 'A_PE_dummy_in', 'B_PE_dummy_in', 'C_PE_dummy_in', 'D_drain_IO_L1_out_wrapper', 'D_drain_IO_L1_out_boundary_wrapper', 'D_drain_IO_L2_out', 'D_drain_IO_L2_out_boundary', 'D_drain_IO_L3_out', 'D_drain_IO_L3_out_serialize']
        
        # Finding the design point for whole dataflow kernel ---------------------
        design_space_df = list()
        data_copy = copy.deepcopy(data)
        
        for k in list(data_copy.keys()):
            if k.find("nondf_") != -1:
                del data_copy[k]
        logging.info("data_copy:\n{}\n{}".format(data_copy, len(data_copy)))
        # need to check whether there's solution for 0.4<resource<self.AreaUtilizationRatio and latency<90000.
        
        last_latency = math.inf
        last_func_name = ""
        last_resource = {_:0 for _ in RESOURCE_TYPES}
        while True:
            data_list = list(sorted(
                list([[_[0], _[1]] for _ in data_copy.items()]),
                key = lambda x: (
                    x[1][-1]["latency"],
                    -max([x[1][-1][_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
                )
            ))
            # If the largest is still the last function, stop adding to design space df.
            if last_func_name == data_list[-1][0] and last_latency == data_list[-1][1][-1]["latency"] and all([last_resource[_]==data_list[-1][1][-1][_] for _ in RESOURCE_TYPES]):
                break
            last_func_name = data_list[-1][0]
            last_latency = data_list[-1][1][-1]["latency"]
            for r in RESOURCE_TYPES:
                last_resource[r] = data_list[-1][1][-1][r]
        
            design_space_df.append({})
            design_space_df[-1]["latency"] = data_list[-1][1][-1]["latency"]
            design_space_df[-1]["area"] = {_:0 for _ in RESOURCE_TYPES}    # init
            design_space_df[-1]["subarea"] = {}
            
            for i in range(len(data_list) - 1):
                data_list[i][1] = sorted(
                    data_list[i][1],
                    key = lambda x: -max([x[_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
                )   # Then data_list[i][1][-1] always has the smallest func.
                
            # The longest func
            for i in range(len(data_list)):
                for r in RESOURCE_TYPES:
                    # libname: data_list[-1][0]; metrics list: data_list[-1][1] (data_list[-1][1][-1] is the one with largest latency and least resource usage)
                    design_space_df[-1]["area"][r] += funcs_count[data_list[i][0]] * data_list[i][1][-1][r]
                
                for each_func in libname_to_vname[data_list[i][0]]:
                    design_space_df[-1]["subarea"][each_func]={_:data_list[i][1][-1][_] for _ in RESOURCE_TYPES}
            
            if len(data_copy[data_list[-1][0]]) > 1:
                del data_copy[data_list[-1][0]][-1]
                
        logging.info(len(design_space_df))
        logging.info("\n")
        # logging.info(design_space_df[0]["latency"])
        # logging.info(design_space_df[0]["area"])
        logging.info(design_space_df[-1]["latency"])
        logging.info(design_space_df[-1]["area"])
        logging.info("\n".join([str((_[0], _[1].items())) for _ in design_space_df[-1]["subarea"].items()]))
        # logging.info("!!!: {}".format(len(design_space_df[-1]["subarea"])))
        
        # 2. Design Space extraction for non-dataflow kernel
        design_space_nondf = list()
        key = "nondf_kernel_cov"
        data[key] = sorted(data[key],
            key=lambda x: (
                -x["latency"],
                max([x[_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
            )
        )   # major: latency large -> small; minor: resource small -> large
        last_latency = math.inf
        for each_point in data[key]:
            if each_point["latency"] < last_latency:
                design_space_nondf.append({"latency": each_point["latency"], "area": {_:each_point[_] for _ in RESOURCE_TYPES}})
                design_space_nondf[-1]["subarea"] = {key:{_:each_point[_] for _ in RESOURCE_TYPES}}
                last_latency = each_point["latency"]
        design_space_nondf.reverse()   # major: latency small -> large; minor: resource large -> small
        
        logging.info(len(design_space_nondf))
        logging.info("\n")
        logging.info(design_space_nondf[-1]["latency"])
        logging.info(design_space_nondf[-1]["area"])
        # logging.info("\n")
        # logging.info(design_space_nondf[-1])
        # exit(0)
        # # Remember to change the latency and area in DataflowGraph as well:
        # self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].latency = design_point["latency"]
        # self.graph.vertices[self.vname_grouped_topoorder[kernel_index][func_index][2]].area = {_:design_point[_] for _ in RESOURCE_TYPES}
        # fp_success = self.floorplan.coarseGrainedFloorplan()
        # if not fp_success:
        #     logging.info("Ouch")
        #     return False, {}
        
        # 3. The whole mixed-df-nondf design space
        all_design_points_product = [_ for _ in itertools.product(*[design_space_df, design_space_nondf, design_space_nondf])]
        # logging.info([len(_["subarea"]) for _ in all_design_points_product[0]])
        # exit(0)
        logging.info("len(all_design_points_product): {}".format(len(all_design_points_product)))
        logging.info("Finding Global-FP Solution...")
        all_design_points = []
        all_design_points_with_constraints = []
        count = 0
        all_records = []
        smallest_area_list = []
        smallest_area = math.inf
        for design_point_product in all_design_points_product:
            latency_list = [_["latency"] for _ in design_point_product]
            area_list = [_["area"] for _ in design_point_product]
            # logging.info('{}'.format(latency_list))
            # logging.info('{}'.format(area_list))
            # exit(0)
            area_list = {__:sum([_[__] for _ in area_list]) for __ in RESOURCE_TYPES}
            max_area_ratio = max([area_list[_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
            if max_area_ratio < smallest_area:
                smallest_area = max_area_ratio
                smallest_area_list = [_["area"] for _ in design_point_product]
            if max_area_ratio > self.AreaUtilizationRatio:
                continue
            all_design_points.append(
                (
                    max_area_ratio,
                    sum([latency_list[0], max(latency_list[1], latency_list[2])])
                )
            )
            # if max_area_ratio > 0.408 or sum([latency_list[0], max(latency_list[1], latency_list[2])]) > 1.65e6:
            #     continue
            if sum([latency_list[0], max(latency_list[1], latency_list[2])]) >= 1647202:
                continue
            # Testing Global Floorplan Solution
            # logging.info("Point {}".format(count))
            # subarea_list = [_["subarea"] for _ in design_point_product]
            # # logging.info(subarea_list)
            # kernel0_subarea_list = {k:v for k, v in subarea_list[0].items() if re.search(r'_x0', k) and not re.search("nondf_", k)}
            # # kernel1_subarea_list = {k:v for k, v in subarea_list[2].items() if re.search(r'_x1', k)}
            # kernel_nondf_subarea_list_0 = subarea_list[1]
            # kernel_nondf_subarea_list_1 = subarea_list[2]
            # logging.info("kernel0 subarea len: {}, list: {}".format(len(kernel0_subarea_list), kernel0_subarea_list))
            # logging.info("Kernel nondf subarea 0 len: {}, list: {}".format(len(kernel_nondf_subarea_list_0), kernel_nondf_subarea_list_0))
            # logging.info("Kernel nondf subarea 1 len: {}, list: {}".format(len(kernel_nondf_subarea_list_1), kernel_nondf_subarea_list_1))
            # for func_name in kernel0_subarea_list:
            #     self.graph.vertices[func_name].area = kernel0_subarea_list[func_name]
            # # for func_name in kernel1_subarea_list:
            # #     self.graph.vertices[func_name].area = kernel1_subarea_list[func_name]
            # for func_name in kernel_nondf_subarea_list_0:
            #     self.graph.vertices["grp_nondf_kernel_cov_x0_fu_99"].area = kernel_nondf_subarea_list_0[func_name]
            # for func_name in kernel_nondf_subarea_list_1:
            #     self.graph.vertices["grp_nondf_kernel_cov_x1_fu_107"].area = kernel_nondf_subarea_list_1[func_name]
            # # input("Awaiting user input 0")
                
            # fp_success = self.floorplan.coarseGrainedFloorplan()
            # if not fp_success:
            #     logging.info("Fail to GlobalFP.")
            #     all_records.append((
            #         max_area_ratio,
            #         sum([latency_list[0], max(latency_list[1], latency_list[2])]),
            #         False
            #     ))
            #     logging.info("fail area_list: {}".format([_["area"] for _ in design_point_product]))
            #     logging.info("fail latency_list: {}".format([_["latency"] for _ in design_point_product]))
            # else:
            #     all_design_points_with_constraints.append(
            #         (
            #             max_area_ratio,
            #             sum([latency_list[0], max(latency_list[1], latency_list[2])])
            #         )
            #     )
            #     all_records.append((
            #         max_area_ratio,
            #         sum([latency_list[0], max(latency_list[1], latency_list[2])]),
            #         True
            #     ))
            #     logging.info("success area_list: {}".format([_["area"] for _ in design_point_product]))
            #     logging.info("success latency_list: {}".format([_["latency"] for _ in design_point_product]))
            count += 1
            # input("Awaiting user input 1")
        logging.info("{} points to test global floorplan.".format(count))
        logging.info("All not feasible points: {}".format([_ for _ in all_records if _[2] == False]))
        logging.info("All feasible points !!!: {}".format([_ for _ in all_records if _[2] == True]))
        
        exit(0)
        
        # input("Awaiting user input 2")
        pareto = oapackage.ParetoDoubleLong()
        for i in range(len(all_design_points)):
            w = oapackage.doubleVector((-all_design_points[i][0], -all_design_points[i][1]))
            pareto.addvalue(w, i)
        # pareto.show(verbose=1)
        lst = pareto.allindices()
        pareto_front = np.array(all_design_points)[lst,:]
        pareto_front = np.array(sorted(pareto_front, key = lambda x : x[1]))    # sorted by resource, for drawing the pareto front
        
        x = np.array([_[0] for _ in all_design_points])
        y = np.array([_[1] for _ in all_design_points])
        # x_all = np.array([_[0] for _ in all_records])
        # y_all = np.array([_[1] for _ in all_records])
        
        # logging.info("Solving Pareto-Front for Vertices with Area Constraints")
        # pareto_real = oapackage.ParetoDoubleLong()
        # for i in range(len(all_design_points_with_constraints)):
        #     w = oapackage.doubleVector((-all_design_points_with_constraints[i][0], -all_design_points_with_constraints[i][1]))
        #     pareto_real.addvalue(w, i)
        # lst_real = pareto_real.allindices()
        # pareto_front_real = np.array(all_design_points_with_constraints)[lst_real,:]
        # pareto_front_real = np.array(sorted(pareto_front_real, key = lambda x : x[1]))    # sorted by resource, for drawing the pareto front
        # logging.info("Pareto-Front Considering area constraints: {}".format(pareto_front_real))
        logging.info("Min latency on pareto-front: {}".format(min(pareto_front[:,1])))
        
        fig = plt.figure(dpi=500)
        ax = fig.add_subplot(111)
        ax.scatter(x, y, s=0.1, marker=",", color="lightcyan", alpha=1.0, label="Non-Pareto-Front Points")
        ax.plot(pareto_front[:,0], pareto_front[:,1], markersize=1, marker="o", color="red", linewidth=0.3, label="Pareto-Front w/o Area Constraint")
        # ax.scatter(x_all, y_all, s=0.1, marker="s", color="darkgreen", alpha=0.4, label="Local Points")
        # ax.plot(pareto_front_real[:,0], pareto_front_real[:,1], markersize=3, marker="o", color="darkviolet", linewidth=1, label="Pareto-Front w/ Area Constraint (Partial)")
        ax.plot([self.AreaUtilizationRatio, self.AreaUtilizationRatio], [0, 1.4e8], color="peru", linewidth=2, linestyle=":", label="Resource Constraint")
        current_largest = 0
        snapshot_type_index_list = [0]
        # logging.info("len(self.snapshots_resource): {}".format(len(self.snapshots_resource)))
        # logging.info("len(self.snapshots_latency): {}".format(len(self.snapshots_latency)))
        logging.info("len(self.snapshots_type): {}".format(len(self.snapshots_type)))
        logging.info("snapshots_type: {}".format(self.snapshots_type))
        for i in range(0, len(self.snapshots_resource) - 1):
            color = "green"
            if max(self.snapshots_type[i + 1], current_largest) == 0:
                color = "green"
            elif max(self.snapshots_type[i + 1], current_largest) == 1:
                if len(snapshot_type_index_list) == 1:
                    logging.info("Path 0 to. {} {}".format(self.snapshots_resource[i], self.snapshots_latency[i]))
                    snapshot_type_index_list.append(i + 1)
                color = "darkorange"
            elif max(self.snapshots_type[i + 1], current_largest) == 2:
                while len(snapshot_type_index_list) < 2:
                    snapshot_type_index_list.append(i + 1)
                if len(snapshot_type_index_list) == 2:
                    logging.info("Path 1 to. {} {}".format(self.snapshots_resource[i], self.snapshots_latency[i]))
                    snapshot_type_index_list.append(i + 1)
                color = "magenta"
            elif max(self.snapshots_type[i + 1], current_largest) == 3:
                while len(snapshot_type_index_list) < 3:
                    snapshot_type_index_list.append(i + 1)
                if len(snapshot_type_index_list) == 3:
                    logging.info("Path 2 to. {} {}".format(self.snapshots_resource[i], self.snapshots_latency[i]))
                    snapshot_type_index_list.append(i + 1)
                color = "gold"
            elif max(self.snapshots_type[i + 1], current_largest) == 4:
                while len(snapshot_type_index_list) < 4:
                    snapshot_type_index_list.append(i + 1)
                if len(snapshot_type_index_list) == 4:
                    snapshot_type_index_list.append(i + 1)
                    break
            current_largest = max(self.snapshots_type[i + 1], current_largest)
            ax.annotate("", xy=(self.snapshots_resource[i + 1], self.snapshots_latency[i + 1]), xytext=(self.snapshots_resource[i], self.snapshots_latency[i]), arrowprops=dict(arrowstyle="->", color=color, linewidth=1, shrinkA=0.1, shrinkB=0.1, patchA=None, patchB=None, connectionstyle="arc3,rad=0."))
        while len(snapshot_type_index_list) < 4:
            snapshot_type_index_list.append(len(self.snapshots_type))
        logging.info("Path 3 to. {} {}".format(self.snapshots_resource[snapshot_type_index_list[-1]-1], self.snapshots_latency[snapshot_type_index_list[-1]-1]))
        logging.info("snapshot_type_index_list: {}".format(snapshot_type_index_list))
        if len(snapshot_type_index_list) <= 4:
            if 0 < snapshot_type_index_list[1]:
                ax.scatter(np.array(self.snapshots_resource[0:snapshot_type_index_list[1]]), np.array(self.snapshots_latency[0:snapshot_type_index_list[1]]), s=3, marker='*', color="green", label="Path 0: Plain DSE + Incr Floorplan")
            if snapshot_type_index_list[1] < snapshot_type_index_list[2]:
                ax.scatter(np.array(self.snapshots_resource[snapshot_type_index_list[1]:snapshot_type_index_list[2]]), np.array(self.snapshots_latency[snapshot_type_index_list[1]:snapshot_type_index_list[2]]), s=3, marker='*', color="darkorange", label="Path 1: With Defragmentation")
            if snapshot_type_index_list[2] < snapshot_type_index_list[3]:
                ax.scatter(np.array(self.snapshots_resource[snapshot_type_index_list[2]:snapshot_type_index_list[3]]), np.array(self.snapshots_latency[snapshot_type_index_list[2]:snapshot_type_index_list[3]]), s=3, marker='*', color="magenta", label="Path 2: With Looking-Ahead")
            if snapshot_type_index_list[3] < len(self.snapshots_type):
                ax.scatter(np.array(self.snapshots_resource[snapshot_type_index_list[3]:]), np.array(self.snapshots_latency[snapshot_type_index_list[3]:]), s=3, marker='*', color="gold", label="Path 3: With Looking-Back")
        elif len(snapshot_type_index_list) == 5:
            for i in range(snapshot_type_index_list[-1], len(self.snapshots_resource) - 1):
                ax.annotate("", xy=(self.snapshots_resource[i + 1], self.snapshots_latency[i + 1]), xytext=(self.snapshots_resource[i], self.snapshots_latency[i]), arrowprops=dict(arrowstyle="->", color="blue", linewidth=1, shrinkA=0.1, shrinkB=0.1, patchA=None, patchB=None, connectionstyle="arc3,rad=0.3", alpha=0.5))
            if 0 < snapshot_type_index_list[1]:
                ax.scatter(np.array(self.snapshots_resource[0:snapshot_type_index_list[1]]), np.array(self.snapshots_latency[0:snapshot_type_index_list[1]]), s=3, marker='*', color="green", label="Incr-FP Path 0: Plain DSE (also No-FP Path)")
            if snapshot_type_index_list[1] < snapshot_type_index_list[2]:
                ax.scatter(np.array(self.snapshots_resource[snapshot_type_index_list[1]:snapshot_type_index_list[2]]), np.array(self.snapshots_latency[snapshot_type_index_list[1]:snapshot_type_index_list[2]]), s=3, marker='*', color="darkorange", label="Incr-FP Path 1: With Defragmentation")
            if snapshot_type_index_list[2] < snapshot_type_index_list[3]:
                ax.scatter(np.array(self.snapshots_resource[snapshot_type_index_list[2]:snapshot_type_index_list[3]]), np.array(self.snapshots_latency[snapshot_type_index_list[2]:snapshot_type_index_list[3]]), s=3, marker='*', color="magenta", label="Incr-FP Path 2: With Looking-Ahead")
            if snapshot_type_index_list[3] < snapshot_type_index_list[4]:
                ax.scatter(np.array(self.snapshots_resource[snapshot_type_index_list[3]:snapshot_type_index_list[4]]), np.array(self.snapshots_latency[snapshot_type_index_list[3]:snapshot_type_index_list[4]]), s=3, marker='*', color="gold", label="Incr-FP Path 3: With Looking-Back")
            ax.scatter(np.array(self.snapshots_resource[snapshot_type_index_list[4]:]), np.array(self.snapshots_latency[snapshot_type_index_list[4]:]), s=3, marker='*', color="blue", label="Global-FP Path")
        else:
            ax.scatter(np.array(self.snapshots_resource), np.array(self.snapshots_latency), s=3, marker='*', color="green", label="Path: Plain DSE w/o Incr Floorplan")
            
        plt.gca().ticklabel_format(style="sci", scilimits=(-1,2), axis='y')
        
        ax.set_xlabel("Max Resource Util")
        ax.set_ylabel("Latency (Cycles)")
        ax.set_title("DSE of \"MM*1+COV*2\" Benchmark")
        ax.legend(loc="upper right", prop=dict(size=6))
        plt.savefig("ds.png")
        ax.set_ylim([1e6, 6e6])
        ax.set_xlim([0.4, 0.625]) # [0.4, 0.585]
        # ax.set_ylim([1.5e8, 2e8])
        plt.savefig("ds1.png")
        # ax.set_xlim([0.38, 0.72])
        # ax.set_ylim([7.5e4, 1.3e5])
        # plt.savefig("ds2.png")
        # ax.set_xlim([0.48, 0.57])
        # ax.set_ylim([8.90e4, 9.05e4])
        # ax.get_legend().remove()
        # plt.savefig("ds3.png")

        pass
    
    def record_results(self, dse_type, runtime, latency_list, resource_list, stage_list):
        OUTPUT_PATH = "../output/"
        if dse_type == "incrfp":
            if not os.path.exists(OUTPUT_PATH):
                os.makedirs(OUTPUT_PATH)
            stages = []
            # ---------------------------
            for i in range(len(stage_list)):
                while stage_list[i] > len(stages):
                    stages.append((resource_list[i-1], latency_list[i-1]))
            while len(stages) < 4:
                stages.append((resource_list[-1], latency_list[-1]))
            # ---------------------------
            with open(OUTPUT_PATH + "latency_resource_runtime.log", "w") as output_f:
                output_f.write("Iterative (DO + Incr FP) (Our FADO) directive search result (Table 5):\n")
                output_f.write("Runtime (s): {:.4f}\n".format(runtime))
                output_f.write("Latency (thousand cycles): {}\n".format(latency_list[-1] / 1e3))
                output_f.write("Resource: {:.0f}%\n".format(resource_list[-1]*100))
                output_f.write("==============================================\n")
                output_f.write("============ DSE Stages (Table 6) ============\n")
                output_f.write("Original (no directive):\n  Resource: {:.2f}%, Latency (thousand cycles): {:.1f}\n".format(resource_list[0]*100, latency_list[0]/1e3))
                output_f.write("Stage 0: Online\n  Resource: {:.2f}%, Latency (thousand cycles): {:.1f}\n".format(stages[0][0]*100, stages[0][1]/1e3))
                output_f.write("Stage 1: Online+Offline\n  Resource: {:.2f}%, Latency (thousand cycles): {:.1f}\n".format(stages[1][0]*100, stages[1][1]/1e3))
                output_f.write("Stage 2: Online+Offline+Ahead\n  Resource: {:.2f}%, Latency (thousand cycles): {:.1f}\n".format(stages[2][0]*100, stages[2][1]/1e3))
                output_f.write("Stage 3: Online+Offline+Ahead+Back\n  Resource: {:.2f}%, Latency (thousand cycles): {:.1f}\n".format(stages[3][0]*100, stages[3][1]/1e3))
                logging.info("\n=======================\nLatency, Resource and Runtime are logged in the path {}.\n=======================".format(os.getcwd() + "/" + OUTPUT_PATH + "latency_resource_runtime.log"))
        
        elif dse_type == "globalfp":
            if not os.path.exists(OUTPUT_PATH):
                os.makedirs(OUTPUT_PATH)
            # ---------------------------
            with open(OUTPUT_PATH + "latency_resource_runtime.log", "w") as output_f:
                output_f.write("Iterative (DO + AutoBridge FP) directive search result:\n")
                output_f.write("Runtime (s): {:.4f}\n".format(runtime))
                output_f.write("Latency (thousand cycles): {}\n".format(latency_list[-1] / 1e3))
                output_f.write("Resource: {:.0f}%\n".format(resource_list[-1]*100))
                logging.info("\n=======================\nLatency, Resource and Runtime are logged in the path {}.\n=======================".format(os.getcwd() + "/" + OUTPUT_PATH + "latency_resource_runtime.log"))
                
        elif dse_type == "nofp":
            if not os.path.exists(OUTPUT_PATH):
                os.makedirs(OUTPUT_PATH)
            # ---------------------------
            with open(OUTPUT_PATH + "latency_resource_runtime.log", "w") as output_f:
                output_f.write("Initial FP -> Iterative DO: directive search result:\n")
                output_f.write("Runtime (s): {:.4f}\n".format(runtime))
                output_f.write("Latency (thousand cycles): {}\n".format(latency_list[-1] / 1e3))
                output_f.write("Resource: {:.0f}%\n".format(resource_list[-1]*100))
                logging.info("\n=======================\nLatency, Resource and Runtime are logged in the path {}.\n=======================".format(os.getcwd() + "/" + OUTPUT_PATH + "latency_resource_runtime.log"))

                
    def dse(self, dse_type):
        self._0_load_dse_lib()      # dse lib sorted by latency (small -> large) in `self.dse_lib_dict`
        self._1_map_top_to_lib()    # `self.vname_to_libname`
        logging.info(len(self.vname_to_libname))
        logging.info(list(self.vname_to_libname.items())[0])
        logging.info(list(self.vname_to_libname.items())[1])
        self._2_group_by_kernels()  # `self.vname_grouped_topoorder`    [df0, df1, .., dfn, nondf1, nondf2, ...]
        self.snapshot_lat_resource(0)
        
        if dse_type == "nofp":
            logging.info("Pre DSE Latency: {}".format(self.snapshots_latency[-1]))
            start_time = time.time()
            self._3_dse_main_algorithm_no_fp()
            end_time = time.time()
            logging.info("DSE w/o Floorplanning time: {} seconds.".format(end_time - start_time))
            logging.info("Post DSE Latency: {}".format(self.snapshots_latency[-1]))
            logging.info("Post DSE Resource: {}".format(self.snapshots_resource[-1]))
            logging.info("self.snapshots_resource: {}".format(self.snapshots_resource)) 
            logging.info("self.snapshots_latency: {}".format(self.snapshots_latency)) 
            global_router = GlobalRouting(self.floorplan, self.top_rtl_parser, self.slot_manager)
            rebalance = LatencyBalancing(self.graph, self.floorplan, global_router)
            # dump directives
            logging.info("{}".format(self.new_vname_to_drctvs))
            # exit(0)
            for each_drctvs in self.new_vname_to_drctvs.values():
                for each_type in self.directives.keys():
                    self.directives[each_type] += each_drctvs[each_type]
            dump_directives_to_tcl("directives.tcl", self.directives)
            print("> 10. Generate New RTL")
            if not self.sub_rtl_paths:
                print("New RTL in ./{}".format(self.top_rtl_parser.getTopModuleName()))
                generate_new_rtl_top(self.top_rtl_parser.top_module_ast, self.graph.getNameToEdgeMap(), self.top_rtl_parser.getTopModuleName(), self.floorplan, False)
            else:
                print(self.sub_rtl_paths)
                for sub_rtl_path in self.sub_rtl_paths:
                    print("New RTL in ./{}".format(self.top_rtl_parser.getModuleName(sub_rtl_path)))
                    generate_new_rtl_top(self.top_rtl_parser.rtl_parse_path(sub_rtl_path), self.graph.getNameToEdgeMap(), self.top_rtl_parser.getModuleName(sub_rtl_path), self.floorplan, True)
                    
            print("> 11. Generate Floorplanning TCL Constraints")
            top_nodes = [_.name for _ in self.top_rtl_parser.traverseVertexInTopAST()]
            # print(top_nodes)
            generate_floorplan_constraints(self.floorplan, global_router, top_nodes, len(self.sub_rtl_paths))
            self.record_results(dse_type, end_time - start_time, self.snapshots_latency, self.snapshots_resource, self.snapshots_type)
        elif dse_type == "globalfp":
            # self.floorplan.MAX_USAGE_ALLOWED = 0.85
            start_time = time.time()
            self._3_dse_main_algorithm_global_fp()
            end_time = time.time()
            logging.info("DSE + Global Floorplanning time: {} seconds.".format(end_time - start_time))
            self.floorplan.printFloorplan()
            # self._4_draw_dse_path()
            logging.info("self.snapshots_resource: {}".format(self.snapshots_resource)) 
            logging.info("self.snapshots_latency: {}".format(self.snapshots_latency)) 
            logging.info("self.snapshots_type: {}".format(self.snapshots_type))
            global_router = GlobalRouting(self.floorplan, self.top_rtl_parser, self.slot_manager)
            rebalance = LatencyBalancing(self.graph, self.floorplan, global_router)
            # dump directives
            logging.info("{}".format(self.new_vname_to_drctvs))
            # exit(0)
            for each_drctvs in self.new_vname_to_drctvs.values():
                for each_type in self.directives.keys():
                    self.directives[each_type] += each_drctvs[each_type]
            dump_directives_to_tcl("directives.tcl", self.directives)
            print("> 10. Generate New RTL")
            if not self.sub_rtl_paths:
                print("New RTL in ./{}".format(self.top_rtl_parser.getTopModuleName()))
                generate_new_rtl_top(self.top_rtl_parser.top_module_ast, self.graph.getNameToEdgeMap(), self.top_rtl_parser.getTopModuleName(), self.floorplan, False)
            else:
                print(self.sub_rtl_paths)
                for sub_rtl_path in self.sub_rtl_paths:
                    print("New RTL in ./{}".format(self.top_rtl_parser.getModuleName(sub_rtl_path)))
                    generate_new_rtl_top(self.top_rtl_parser.rtl_parse_path(sub_rtl_path), self.graph.getNameToEdgeMap(), self.top_rtl_parser.getModuleName(sub_rtl_path), self.floorplan, True)
                    
            print("> 11. Generate Floorplanning TCL Constraints")
            top_nodes = [_.name for _ in self.top_rtl_parser.traverseVertexInTopAST()]
            # print(top_nodes)
            generate_floorplan_constraints(self.floorplan, global_router, top_nodes, len(self.sub_rtl_paths))
            self.record_results(dse_type, end_time - start_time, self.snapshots_latency, self.snapshots_resource, self.snapshots_type)
        elif dse_type == "incrfp":
            start_time = time.time()
            self._3_dse_main_algorithm()
            end_time = time.time()
            logging.info("DSE + Incremental Floorplanning time: {} seconds.".format(end_time - start_time))
            # self._4_draw_dse_path()
            # self.floorplan.printFloorplan()
            self.floorplan.coarseGrainedFloorplan()
            # self.floorplan.printFloorplan()
            self.floorplan.printFloorplan()
            self.floorplan.coarseGrainedFloorplan()
            self.floorplan.printFloorplan()
            logging.info("self.snapshots_resource: {}".format(self.snapshots_resource)) 
            logging.info("self.snapshots_latency: {}".format(self.snapshots_latency)) 
            logging.info("self.snapshots_type: {}".format(self.snapshots_type))
            global_router = GlobalRouting(self.floorplan, self.top_rtl_parser, self.slot_manager)
            rebalance = LatencyBalancing(self.graph, self.floorplan, global_router)
            # dump directives
            logging.info("{}".format(self.new_vname_to_drctvs))
            # exit(0)
            for each_drctvs in self.new_vname_to_drctvs.values():
                for each_type in self.directives.keys():
                    self.directives[each_type] += each_drctvs[each_type]
            dump_directives_to_tcl("directives.tcl", self.directives)
            print("> 10. Generate New RTL")
            if not self.sub_rtl_paths:
                print("New RTL in ./{}".format(self.top_rtl_parser.getTopModuleName()))
                generate_new_rtl_top(self.top_rtl_parser.top_module_ast, self.graph.getNameToEdgeMap(), self.top_rtl_parser.getTopModuleName(), self.floorplan, False)
            else:
                print(self.sub_rtl_paths)
                for sub_rtl_path in self.sub_rtl_paths:
                    print("New RTL in ./{}".format(self.top_rtl_parser.getModuleName(sub_rtl_path)))
                    generate_new_rtl_top(self.top_rtl_parser.rtl_parse_path(sub_rtl_path), self.graph.getNameToEdgeMap(), self.top_rtl_parser.getModuleName(sub_rtl_path), self.floorplan, True)
                    
            print("> 11. Generate Floorplanning TCL Constraints")
            top_nodes = [_.name for _ in self.top_rtl_parser.traverseVertexInTopAST()]
            # print(top_nodes)
            generate_floorplan_constraints(self.floorplan, global_router, top_nodes, len(self.sub_rtl_paths))
            self.record_results(dse_type, end_time - start_time, self.snapshots_latency, self.snapshots_resource, self.snapshots_type)
        elif dse_type == "LAtest":
            start_time = time.time()
            self._3_dse_main_algorithm()
            end_time = time.time()
            logging.info("DSE + Incremental Floorplanning time: {} seconds.".format(end_time - start_time))
            # self._4_draw_dse_path()
            logging.info("self.snapshots_resource: {}".format(self.snapshots_resource)) 
            logging.info("self.snapshots_latency: {}".format(self.snapshots_latency))
            return [self.snapshots_resource[-1], self.snapshots_latency[-1], end_time - start_time] 
        else:
            # start_time = time.time()
            # self._3_dse_main_algorithm()
            # end_time = time.time()
            # logging.info("DSE + Incremental Floorplanning time: {} seconds.".format(end_time - start_time)) # 0.9751691818237305
            # logging.info(self.snapshots_resource) # [0.20348586851043182, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.41242283950617287, 0.4182098765432099, 0.4182098765432099, 0.4411764705882353, 0.4485294117647059, 0.45588235294117646, 0.45588235294117646, 0.45588235294117646, 0.45588235294117646, 0.45588235294117646, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.4852941176470588, 0.4632352941176471, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.45955882352941174, 0.47794117647058826, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4471450617283951, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.5339506172839507, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.49344135802469136, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358]
            # logging.info(self.snapshots_latency) # [131839334, 5166583, 5166583, 4609536, 4256597, 4256597, 3765132, 3659263, 3240845, 3240845, 2782093, 2569303, 2569183, 2561160, 2561096, 2561033, 2545207, 2487319, 2487263, 2438231, 2429960, 2429960, 2405798, 2405798, 2393134, 2393134, 2302546, 2302546, 2210647, 2210647, 2194261, 2194261, 2175583, 2175583, 2171488, 2012104, 2010120, 2006088, 2003534, 2001992, 1999439, 1995344, 1991249, 1987154, 1983059, 1978964, 1881032, 1872462, 1868367, 1864272, 1860177, 1856082, 1851987, 1847892, 1676183, 1671772, 1669975, 1668118, 1668054, 1667927, 1667678, 1667677, 1665880, 1664982, 1664086, 1664022, 1663832, 1663583, 1663582, 1661785, 1659990, 1659737, 1659488, 1659487, 1657690, 1655894, 1655642, 1655393, 1655392, 1651297, 1647202]
            # logging.info(self.snapshots_type) # [0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 2, 2, 0, 2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 2, 2, 0, 2, 0, 0, 2, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 2, 3]
            
            # start_time = time.time()
            # self._3_dse_main_algorithm_global_fp()
            # end_time = time.time()
            # logging.info("DSE + Global Floorplanning time: {} seconds.".format(end_time - start_time)) # 210.5726444721222
            # logging.info(self.snapshots_resource) # [0.20348586851043182, 0.4066358024691358, 0.41242283950617287, 0.4182098765432099, 0.4182098765432099, 0.42978395061728397, 0.44135802469135804, 0.44135802469135804, 0.4645061728395062, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.6158979257641921, 0.6172936377971858, 0.6186893498301795]
            # logging.info(self.snapshots_latency) # [131839334, 5166583, 5166583, 4118071, 4118071, 4118071, 3659319, 3659319, 3659319, 3372599, 3372599, 2913791, 2913791, 2913791, 2913791, 2913791, 2577870]
            # logging.info(self.snapshots_type) # [0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]
            
            self.snapshots_resource = [0.20348586851043182, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.41242283950617287, 0.4182098765432099, 0.4182098765432099, 0.4411764705882353, 0.4485294117647059, 0.45588235294117646, 0.45588235294117646, 0.45588235294117646, 0.45588235294117646, 0.45588235294117646, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.4852941176470588, 0.4632352941176471, 0.44135802469135804, 0.44135802469135804, 0.44135802469135804, 0.45955882352941174, 0.47794117647058826, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4471450617283951, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.5339506172839507, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.5802469135802469, 0.49344135802469136, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.4066358024691358, 0.20348586851043182, 0.4066358024691358, 0.41242283950617287, 0.4182098765432099, 0.4182098765432099, 0.42978395061728397, 0.44135802469135804, 0.44135802469135804, 0.4645061728395062, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.4876543209876543, 0.6158979257641921, 0.6172936377971858, 0.6186893498301795]
            self.snapshots_latency = [131839334, 5166583, 5166583, 4609536, 4256597, 4256597, 3765132, 3659263, 3240845, 3240845, 2782093, 2569303, 2569183, 2561160, 2561096, 2561033, 2545207, 2487319, 2487263, 2438231, 2429960, 2429960, 2405798, 2405798, 2393134, 2393134, 2302546, 2302546, 2210647, 2210647, 2194261, 2194261, 2175583, 2175583, 2171488, 2012104, 2010120, 2006088, 2003534, 2001992, 1999439, 1995344, 1991249, 1987154, 1983059, 1978964, 1881032, 1872462, 1868367, 1864272, 1860177, 1856082, 1851987, 1847892, 1676183, 1671772, 1669975, 1668118, 1668054, 1667927, 1667678, 1667677, 1665880, 1664982, 1664086, 1664022, 1663832, 1663583, 1663582, 1661785, 1659990, 1659737, 1659488, 1659487, 1657690, 1655894, 1655642, 1655393, 1655392, 1651297, 1647202, 131839334, 5166583, 5166583, 4118071, 4118071, 4118071, 3659319, 3659319, 3659319, 3372599, 3372599, 2913791, 2913791, 2913791, 2913791, 2913791, 2577870]
            self.snapshots_type = [0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 2, 2, 0, 2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 2, 2, 0, 2, 0, 0, 2, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]
            self._4_draw_dse_path()
            
    
    # 3. main DSE procedure
    def dse_old(self):
        # 3. DSE 
        # # in the order of ...
        # # (1) Among kernel: topological order; TODO: currently the topo-order among kernels are manually controlled, but does this really matters?
        # # (2) Within kernel: non-increasing order on latency
        # logging.debug(floorplan.topostack)
        #
        # 3.1 Sort vertices (latency, area, name) pair in non-increasing order
            # for each_group in vname_grouped_topoorder:
            #     heapq._heapify_max(each_group)
        # heapq._heapify_max(self.vname_all_topoorder)
        self.vname_all_topoorder = sorted(self.vname_all_topoorder, key = lambda x : (x[0], x[3]))
            
        # 3.2 Search group-by-group, vertex-by-vertex, design-point-by-design-point
        # Stop condition for DSE on multiple kernels should be
        # (1) Keep popping out elements when all of them reaches the best design point
        # (2) Keep popping out elements when the next design point is too large to fit in any slot available
        # for each_group in vname_grouped_topoorder: #!Abandoned
            # Stop condition for DSE on a group should be
            # # Going through all the vertices in the group (TODO: pruning B by area when there's no solution found for A and B's area is even larger than A)
            # # So that during DSE, always try the optimal design point at first
        
        # Get utilization on each slot:
        s2util = self.floorplan.getUtilizationQuantity()
        for each_s2util in s2util.items():
            logging.info("Slot: {}: Util: {}".format(each_s2util[0].getRTLModuleName(), each_s2util[1]))
        s2totalarea = {_:_.getArea() for _ in s2util.keys()}
        # print(s2util)
        # print([(_[0].getRTLModuleName(), _[1]) for _ in s2totalarea.items()])
        # print(list(filter(lambda x:x[0].getOrigUpRightY() < 8, [(_[0].getRTLModuleName(), _[1]) for _ in s2totalarea.items()])))
        # print(dict(filter(lambda x:x[0].getOrigUpRightY() < 8, s2util.items())))
        # print([(_[0].getRTLModuleName(), _[1]) for _ in dict(filter(lambda x:x[0].getOrigUpRightY() < 8, s2util.items())).items()])

        # print([(_[0].getRTLModuleName(), _[1]) for _ in floorplan.getUtilizationQuantity().items()])
        # print([floorplan.s2v.items()])
        # for item in floorplan.s2v.items():
        #     print(item[0].getRTLModuleName())
        #     print([_.name for _ in item[1]])
        inc_fp_vname_to_dst_slot = {}
        # for i in range(len(vname_grouped_topoorder)):
            # curr_count = 0
            # total_count = len(vname_grouped_topoorder[i])
            # while True:
                # if curr_count >= total_count:
                #     break
                # curr_count += 1
        while self.vname_all_topoorder:
            # Choose the next design point for the node with minimum latency -- pop from heap
            # min_lat_v = heapq._heappop_max(self.vname_all_topoorder)
            min_lat_v = self.vname_all_topoorder.pop(0)  # pop the left-most element with min latency then min index.
            curr_lat = min_lat_v[0]
            curr_area = min_lat_v[1]
            curr_vname = min_lat_v[2]
            curr_kernel_index = min_lat_v[3]
            
            # If the current latency is no larger than the existing best latency for current kernel, then no need for DSE.
            if curr_lat <= self.best_longest_latency_bygroup[curr_kernel_index]:
                continue
            
            logging.info("\n\nCurrent vname: {}".format(curr_vname))
            curr_libname = ""   
                
            # Get all design points
            for reg_ex in self.PREFIX_REGEXS_TO_FUNC_LIBNAME.keys():
                if re.search(reg_ex, curr_vname):
                    curr_libname = self.PREFIX_REGEXS_TO_FUNC_LIBNAME[reg_ex]
                    break
            assert curr_libname, "vname: {} -- regex in DSE lib is not found".format(curr_vname)
            
            available_design_points = self.dse_lib_dict[curr_libname]
            assert available_design_points, "design space for {} function not found!".format(curr_vname)
            # logging.info("Design space for current vname: {}".format(available_design_points))
            # logging.info("Design space's size: {}".format(len(available_design_points)))
            # exit(0)
            
            # Get the current slot of this vertex
            curr_slot = self.floorplan.getVertexNameToSlot()[curr_vname]
            curr_slot_totalarea = s2totalarea[curr_slot]
            # # ! If the current vertex is not within lower-half of the board -- which we are running DSE on, it means that no DSE needed for the current vertex
            if curr_slot.getOrigUpRightY() >= 8:
                print("At slot {}, out of DSE region! Vertex {} skipped...".format(curr_slot.getRTLModuleName(), curr_vname))
                continue
            logging.info("Current slot: {}".format(curr_slot.getRTLModuleName()))
            
            # Search for the next design point
            # # There are three possibilities
            # # (1) It still fits into the current slot, and the floorplan will not change
            # # (2) It cannot fit into the current slot, and need to do topological-incremental-floorplan, then a solution is found.
            # # (3) It cannot fit into the current slot, !!!no solution during floorplanning is got, then try the next design point.
            for design_point in available_design_points:    # latency from small to large
                # current solution better than the next design point, then no need to change
                if design_point["latency"] >= curr_lat:
                    # print("Current Latency is even better than the design point given. skipped...")
                    break
                BorU = self.balance_bram_uram(
                        design_point["BRAM"],
                        self.dse_lib_uram_dict,
                        s2util[curr_slot]["BRAM"],
                        s2totalarea[curr_slot]["BRAM"],
                        s2util[curr_slot]["URAM"],
                        s2totalarea[curr_slot]["URAM"],
                        self.AreaUtilizationRatio,
                        curr_libname
                        )   # 0 for no solution, 1 for enough bram, 2 for change to uram
                # (1) if still fit
                if self.util_within_total(
                    {_:s2util[curr_slot][_]-curr_area[_]+design_point[_] for _ in RESOURCE_TYPES_NO_MEM},
                    curr_slot_totalarea,
                    self.AreaUtilizationRatio
                    ) and BorU:
                    # Floorplan doesn't need to be changed
                    
                    # Update directives
                    # print(design_point)
                    new_design_points = copy.deepcopy(design_point["drctv"]["pipeline"])
                    for new_design_point in new_design_points:
                        new_design_point["func_name"] = curr_vname.removesuffix("_U0")
                        new_design_point["loop_label"] = new_design_point["loop_label"].replace(curr_libname, curr_vname.removesuffix("_U0"))
                        self.directives["pipeline"].append(new_design_point)
                        
                    logging.info("Fit!")
                    logging.info("Old resource: {}".format(s2util[curr_slot]))
                    logging.info("curr_util: {}".format(curr_area))
                    logging.info("new design point: {}".format(design_point))
                    
                    # BRAM or URAM:
                    if BorU == 1:
                        if curr_libname in self.dse_lib_uram_dict.keys():
                            array_name = self.dse_lib_uram_dict[curr_libname][0]["drctv"]["bind_storage"][0]["array_name"]
                            self.directives["bind_storage"].append({"type":"ram_2p", "impl":"bram", "func_name":curr_vname.removesuffix("_U0"), "array_name":array_name})
                    elif BorU == 2:
                        array_name = self.dse_lib_uram_dict[curr_libname][0]["drctv"]["bind_storage"][0]["array_name"]
                        print("Using URAM for {} {}".format(curr_vname, array_name))
                        # input("Awaiting user any key...")
                        s2util[curr_slot]["URAM"] += self.dse_lib_uram_dict[curr_libname][0]["URAM"]
                        s2util[curr_slot]["BRAM"] -= curr_area["BRAM"]
                        self.directives["bind_storage"].append({"type":"ram_2p", "impl":"uram", "func_name":curr_vname.removesuffix("_U0"), "array_name":array_name})
                        
                    # Update slot util "s2util"
                    for r in RESOURCE_TYPES_NO_MEM:
                        s2util[curr_slot][r] += design_point[r] - curr_area[r]
                    logging.info("Updated resource: {}".format(s2util[curr_slot]))
                    
                    # Update best_longest_latency_bygroup[curr_kernel_index]
                    if design_point["latency"] > self.best_longest_latency_bygroup[curr_kernel_index]:
                        self.best_longest_latency_bygroup[curr_kernel_index] = design_point["latency"]
                    break
                # if not fit then...    
                else:
                    # Calculate area overflow:
                    #   (slot util + new design point util - old design point util) - alpha * slot total area
                    # -- <1> positive: overflow; <2> negative: ok. <3> Largest positive: bottleneck-type resource
                    area_overflow = {r:s2util[curr_slot][r]+design_point[r]-curr_area[r]-self.AreaUtilizationRatio*curr_slot_totalarea[r] for r in RESOURCE_TYPES_NO_MEM}
                    # Then decide which resource is the bottleneck
                    area_overflow_ratio = {r:area_overflow[r]/curr_slot_totalarea[r] for r in RESOURCE_TYPES_NO_MEM}
                    # assert any([of > 0 for of in area_overflow.values()]), "current vertex: {}; design point: {}; area_overflow: {}".format(curr_vname, design_point, area_overflow)    # ! zero not included when counting overflow
                    logging.info("Old resource: {}".format(s2util[curr_slot]))
                    logging.info("curr_util: {}".format(curr_area))
                    logging.info("new design point: {}".format(design_point))
                    # logging.info("!!! Area Overflow: {}".format(area_overflow))
                    logging.info("!!! Area Overflow: {}".format({r:s2util[curr_slot][r]+design_point[r]-curr_area[r]-self.AreaUtilizationRatio*curr_slot_totalarea[r] for r in RESOURCE_TYPES}))
                    logging.info("Total area available in {} is {}".format(curr_slot.getRTLModuleName(), s2totalarea[curr_slot]))
                    
                    key_of_max_overflow_ratio = max(area_overflow_ratio, key=area_overflow_ratio.get)  # -> str
                    # |--The element with max overflow ratio 
                    # area_ratio_other_keys = dict(filter(lambda x:x[0]!=key_of_max_overflow_ratio, {r:s2util[r]/curr_slot_totalarea[r] for r in RESOURCE_TYPES_NO_MEM}))
                    other_keys = set(RESOURCE_TYPES_NO_MEM) - {key_of_max_overflow_ratio}
                    # print(other_keys)
                    # print(area_overflow_ratio)
                    # print(key_of_max_overflow_ratio)
                    
                    # Then find the "dst slot" with least usage of bottleneck-type resource among all slots, since _eq_ is overrode, slots can be directly compared
                    other_s2util = dict(filter(lambda x:(x[0].getOrigUpRightY() < 8) and (x[0] != curr_slot), s2util.items()))
                    # print([(_[0].getRTLModuleName(), _[1]) for _ in other_s2util.items()])
                    assert len(other_s2util) == 3, "curr_slot: {};\n< 8 ?: {};\nother_s2util: {};\n{}".format(curr_slot.getRTLModuleName(), curr_slot.getOrigUpRightY() < 8, [(_[0].getRTLModuleName(), _[1]) for _ in other_s2util.items()], [(_.getRTLModuleName(), _!=curr_slot, _.getRTLModuleName()!=curr_slot.getRTLModuleName(), _.getOrigUpRightY()<8) for _ in s2util.keys()])
                    
                    # print(curr_slot.getRTLModuleName())
                    # print([(_[0].getRTLModuleName(), _[1]) for _ in other_s2util.items()])
                    # for x in other_s2util.items():
                    #     print(x[0].getRTLModuleName(), ([(x[1][_])  for _ in other_keys]))
                    #     print(x[0].getRTLModuleName(), ([(s2totalarea[x[0]][_])  for _ in other_keys]))
                    #     print(x[0].getRTLModuleName(), ([(x[1][_]/s2totalarea[x[0]][_])  for _ in other_keys]))
                    #     print()
                    other_s2util_sortedby_min_key = sorted(
                        other_s2util.items(),
                        key=lambda x:(
                            x[1][key_of_max_overflow_ratio],
                            mean([x[1][_]/s2totalarea[x[0]][_] for _ in other_keys])
                        )
                    ) # Sort by bottleneck-type resource first, then by the mean of other four resources, both incrementally, and take the minimum one, return a list of tuple [(<slot 1>, <resource usage 1>), ...]
                    
                    # TODO: Then decide which vertices in the current "src slot" to move to "dst slot"? or just move the current v?
                    # curr_slot_vs = floorplan.getSlotToVertices()[curr_slot]
                                    
                    # Check whether the current vertex can be fit into "other_s2util_sortedby_min_key", in the order above
                    fit_in_other_slot = False
                    for each_s2util in other_s2util_sortedby_min_key:
                        each_s = each_s2util[0]
                        each_util = each_s2util[1]
                        # Calculate area overflow:
                        #   (dst slot util + new design point util) - alpha * dst slot total area
                        each_area_overflow = {r:s2util[each_s][r]+design_point[r]-self.AreaUtilizationRatio*s2totalarea[each_s][r] for r in RESOURCE_TYPES_NO_MEM}
                        
                        each_BorU = self.balance_bram_uram(
                                design_point["BRAM"],
                                self.dse_lib_uram_dict,
                                s2util[each_s]["BRAM"],
                                s2totalarea[each_s]["BRAM"],
                                s2util[each_s]["URAM"],
                                s2totalarea[each_s]["URAM"],
                                self.AreaUtilizationRatio,
                                curr_libname
                                )   # 0 for no solution, 1 for enough bram, 2 for change to uram
                        
                        # # (2) If yes, then move: update directives, and update slot util, and incremental floorplan, break
                        if not any([of > 0 for of in each_area_overflow.values()]) and each_BorU:
                            # <0> Move successfully
                            fit_in_other_slot = True
                            # <1> Update directive
                            new_design_points = copy.deepcopy(design_point["drctv"]["pipeline"])
                            for new_design_point in new_design_points:
                                new_design_point["func_name"] = curr_vname.removesuffix("_U0")
                                new_design_point["loop_label"] = new_design_point["loop_label"].replace(curr_libname, curr_vname.removesuffix("_U0"))
                                self.directives["pipeline"].append(new_design_point)
                            # <2> Update slot util
                            # <2.1> Add dst util by new design_point's area
                            for r in RESOURCE_TYPES_NO_MEM:
                                s2util[each_s][r] += design_point[r]
                            # <2.2> Subtract src (current) util by old (current) design_point's area
                            for r in RESOURCE_TYPES_NO_MEM:
                                s2util[curr_slot][r] -= curr_area[r]
                            # <3> Incremental floorplan
                            # # TODO: make sure whether "incrementalFloorplan()" is executed one-by-one here, or all together later
                            # # ! current choice: all together later
                            inc_fp_vname_to_dst_slot[curr_vname] = each_s.getName()
                            logging.info("Incremental planning {} to {}".format(curr_vname, each_s.getName()))
                            logging.info("Old resource: {}".format(s2util[each_s]))
                            logging.info("curr_util: {}".format(curr_area))
                            logging.info("new design point: {}".format(design_point))
                            logging.info("each_BorU: {}".format(each_BorU))
                            # <4> BRAM or URAM
                            if each_BorU == 1:
                                if curr_libname in self.dse_lib_uram_dict.keys():
                                    array_name = self.dse_lib_uram_dict[curr_libname][0]["drctv"]["bind_storage"][0]["array_name"]
                                    self.directives["bind_storage"].append({"type":"ram_2p", "impl":"bram", "func_name":curr_vname.removesuffix("_U0"), "array_name":array_name})
                            elif each_BorU == 2:
                                array_name = self.dse_lib_uram_dict[curr_libname][0]["drctv"]["bind_storage"][0]["array_name"]
                                print("Using URAM for {} {}".format(curr_vname, array_name))
                                # input("Awaiting user any key...")
                                s2util[each_s]["URAM"] += self.dse_lib_uram_dict[curr_libname][0]["URAM"]
                                s2util[each_s]["BRAM"] -= curr_area["BRAM"]
                                self.directives["bind_storage"].append({"type":"ram_2p", "impl":"uram", "func_name":curr_vname.removesuffix("_U0"), "array_name":array_name})
                            logging.info("Updated resource: {}".format(s2util[each_s]))
                            
                            # Update best_longest_latency_bygroup[curr_kernel_index]
                            if design_point["latency"] > self.best_longest_latency_bygroup[curr_kernel_index]:
                                self.best_longest_latency_bygroup[curr_kernel_index] = design_point["latency"]
                            
                            break
                    # break --|-- from `for each_s2util in other_s2util_sortedby_min_key:`
                        # # (3) If no, then try the next slot, if still not, try next design point (or no solution found)
                        else:
                            pass
                        
                    # Incremental floorplan solution found, stop DSE for current vertex.
                    if fit_in_other_slot == True:
                        break
                    else:
                        logging.info("No solution found: design point {} for {}.\n".format(design_point, curr_vname))
                        
            # break from --|-- `for design_point in available_design_points:`
            
            # Push the node back into the heap                
            # !!! No need to push any point that we have been through back to the heap
            # # ! If search to the best point, then do not push back into the current heap
            # # TODO: do we need to push into another heap?
            # heapq.heappush(vname_grouped_topoorder[i], min_lat_v)
            
        logging.info("To Incremental Floorplan:")
        logging.info(inc_fp_vname_to_dst_slot)
            # input("\nNext group of vertices...\n")
        for each_s2util in s2util.items():
            logging.info("Slot: {}: Util: {}".format(each_s2util[0].getRTLModuleName(), each_s2util[1]))
        self.floorplan.incrementalFloorplan(inc_fp_vname_to_dst_slot)
        global_router = GlobalRouting(self.floorplan, self.top_rtl_parser, self.slot_manager)
        rebalance = LatencyBalancing(self.graph, self.floorplan, global_router)
        # dump directives
        dump_directives_to_tcl("directives.tcl", self.directives)
        
        
        # for each_node in vname_grouped_topoorder[0]:
        #     print(each_node)
        # last_ = 0
        # test_ = heapq.heappop(vname_grouped_topoorder[0])[0]
        # while len(vname_grouped_topoorder[0]) > 0 and test_ >= last_:
        #     test_ = heapq.heappop(vname_grouped_topoorder[0])[0]
        # print(vname_grouped_topoorder[0])
        
        # for func_name in dse_lib_dict.keys():
        #     print(dse_lib_dict[func_name][-1]["latency"])
        # Need to solve the case of <0.51 * 4 with 0.50 * 1> -> <0.51 * 5>