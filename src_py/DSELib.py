from ast import Str
import re
import copy
import json
import math
import logging
import itertools
from os.path import isfile, isdir
from HLSUtils import HLS_TCL_TEXT, run_hls, dump_directives_to_tcl
from HLSProject import HLSProject
from collections import defaultdict
from defaultlist import defaultlist
from anytree import Node, RenderTree, PreOrderIter, PostOrderIter, LevelOrderIter, LevelOrderGroupIter

PIPELINE_MAX_LOOP_BOUND = 128

'''
A function in dataflow consists of multiple loop groups:
    == DATAFLOW START ==
    PE1
    |--LOOP_GROUP1
    |      |--INNER_LOOP
    |      |--...
    |--LOOP_GROUP2
    |      |--INNER_LOOP
    |      |--...
    |--...
    === DATAFLOW END ===
We do post-level-order "PIPELINE" directive DSE and save
'''
class ForNode(object):
    def __init__(self, label, bound, arr_dims):
        self.label = label
        self.bound = bound
        self.total_bound = bound
        self.arr_dims = arr_dims
        self.iterLat = -1
        self.initII = -1
    def __str__(self):
        return "{}".format(self.label)
        # return "{}, Init II: {}, Iter Lat: {}".format(self.label, self.initII, self.iterLat)
    def updateIterLat(self, iterLat):
        self.iterLat = iterLat
    def updateInitII(self, initII):
        self.initII = initII

class DSELib:
    def __init__(self, SOLUTION, BOARD_PART, TARGET_FREQ, DSE_LIB_SRC, DSE_LIB_JSON):
        self.drctv_list = {"unroll": [], "pipeline": [], "array_partition": [], "allocation": [], "bind_storage": []}
        self.func_loop_tree = {}
        self.func_loop_stack = []
        self.dse_lib = defaultdict(list)
        self.dse_lib_uram = defaultdict(list)
        self.func_name = ""
        
        self.SOLUTION = SOLUTION
        self.BOARD_PART = BOARD_PART
        self.TARGET_FREQ = TARGET_FREQ
        self.DSE_LIB_SRC = DSE_LIB_SRC
        self.DSE_LIB_JSON = DSE_LIB_JSON
                      # it represents the last closest line is a func or a loop
        # key: function name; 
        # value (type list(dict)): 
        #   list({"drctv": directive dictionary, "latency": int, "FF": int, "LUT": int, "DSP": int, "BRAM": int}, ...)
        
    def render_tree(self, head):
        for pre, fill, node in RenderTree(head):
            logging.info("{}{}".format(pre, node.name)) # print
            
    def update_tree_total_bound(self, node:Node(ForNode)):
        if node.height > 0:
            max_children_total_bound = max(self.update_tree_total_bound(_) for _ in node.children)
            node.name.total_bound = node.name.bound * max_children_total_bound
        return node.name.total_bound
    
    def flatten_list(self, list_of_lists):
        return [_ for sublist in list_of_lists for _ in sublist]
    
    # 1. Build the for-loop tree
    def _1_parse_for_loop_tree(self, i:int, lines:list[str], loop_count:int, func_name:str, curr_func_is_dataflow:bool):
        while i < len(lines) and not re.match('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i]):
            if re.match('([ ]*)([a-zA-Z_0-9]+:)?([ ]*)(for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]) and not lines[i].strip().endswith("// SKIP_DSE"):
                regex_groups = re.search('([ ]*)([a-zA-Z_0-9]+:)?([ ]*)(for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]).groups()
                loop_count += 1

                # Add loop label
                loop_label = regex_groups[1].rstrip(':')
                
                # Get loop bound
                loop_bound = int(regex_groups[5]) if regex_groups[4] == "<" else int(regex_groups[5]) + 1
                
                # Get indent length
                indent = len(regex_groups[2])
                while len(self.func_loop_stack) and self.func_loop_stack[-1]["len"] >= indent:
                    self.func_loop_stack.pop()
                    
                # Get corresponding array dimension
                if curr_func_is_dataflow:
                    arr_dims = json.loads(lines[i].split("//")[-1])
                else:
                    arr_dims = dict()
                
                new_node = Node(ForNode(loop_label, loop_bound, arr_dims))
                # print(func_name, loop_label, self.func_loop_stack)
                
                if len(self.func_loop_stack) == 0:
                    new_node.parent = self.func_loop_tree[func_name]
                else:
                    new_node.parent = self.func_loop_stack[-1]["node"]
                self.func_loop_stack.append({"node": new_node, "len": indent})
                
            i += 1
            # end_of_while
            
        self.func_loop_stack.clear()
        return i, loop_count

    '''
    - Manual Control:
        - "// SKIP_DSE" suffix of a for loop guides the DSE procedure ignoring that loop
        - other loops ends with array partition guidance of \{"<array name Str>" : <dimension Int>\} 
    - 1. Similar to dataflow PEs, try to pipeline each level of loop until there's no latency improvement, generate pipeline domain
    - 2. For each level of pipeline, completely unroll the sub-loops.
         For each level of unroll, choose the best design point for the sub-loops.
           #! The assumption is that no sub-loops requires conflicting pragma settings (e.g., for ARRAY_PARTITION, no different factor for the same dimension of an array.)
           #! Assumption 2: loop bound are to the power of 2.
    - 3. For each level of unroll, stop it when increasing factor does not help.
        - For multiple for loop at the same level in the same first-level loop, assume there's no partition factor conflict.
    - 4. Keep a list of "combination of directives" for each loop branch, and then combine among multiple loop branches. 
    '''
    def _2_preprocess_non_dataflow_func(self, func_name, array_name_list):
        logging.info("Non-Dataflow")
        drctv_file_name = "directives_{}.tcl".format(func_name)
        # No directives at first:
        dump_directives_to_tcl(drctv_file_name, self.drctv_list)
        run_hls(
            self.DSE_LIB_SRC,
            func_name,
            self.SOLUTION,
            "" if self.BOARD_PART.upper() == "U250" else "#",
            "" if self.BOARD_PART.upper() == "U280" else "#",
            drctv_file_name,
            self.TARGET_FREQ,
            True,
            "timeout 10m"
        )
        hls_prj = HLSProject(
            func_name,                   # Top function's name
            "./{}".format(func_name),    # HLS Project folder name, same with top function's name
            self.SOLUTION                    # HLS solution name
        )
        hls_prj.processLatencyAndII()
        total_latency = hls_prj.getTotalLatency()
        total_area = hls_prj.getTotalArea()
        self.dse_lib[func_name].append({
            "drctv": copy.deepcopy(self.drctv_list),
            "latency": total_latency,
            "BRAM": total_area["BRAM"],
            "DSP": total_area["DSP"],
            "FF": total_area["FF"],
            "LUT": total_area["LUT"],
            "URAM": total_area["URAM"]
        })
        with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
            json.dump(self.dse_lib, temp_dse_lib_f)
        
        # With directives
        for RAM_TYPE in ["bram", "uram"]:
            post_level_order_node_list = []
            drctv_file_name = "directives_{}.tcl".format(func_name)
            first_level_loop_to_drctvs = [defaultlist() for _ in range(len(self.func_loop_tree[func_name].children))]
            
            # # 1. Extract first-level post-level-ordered loop branch, and run HLS for single branch.
            logging.info("Single Loop Design Points")
            for first_level_index in range(len(self.func_loop_tree[func_name].children)):
                first_level_sub_node = self.func_loop_tree[func_name].children[first_level_index]
                post_level_order_node_list.append(defaultlist())
                post_level_order_first_level = [list(node_groups) for node_groups in LevelOrderGroupIter(first_level_sub_node)]
                post_level_order_first_level.reverse()  # post-level order list of each first-level loop branch
                logging.info("Single Loop branch: {}".format(post_level_order_first_level))
                
                best_level_latency = [math.inf for _ in post_level_order_first_level]
                best_level_drctvs = [{"unroll": [], "pipeline": [], "array_partition": [], "allocation": [], "bind_storage": []} for _ in post_level_order_first_level]
                
                # Find the combination of unroll settings in this level
                for i in range(len(post_level_order_first_level)):
                    each_level = post_level_order_first_level[i]
                    # # Choice 1: combination
                    # level_unroll_factors = [[2**_ for _ in range(0, 1+math.floor(math.log2(each_node.name.bound)))] for each_node in each_level]
                    # level_unroll_factors_comb = list(itertools.product(*level_unroll_factors))
                    # print(level_unroll_factors)
                    # # Choice 2: [1, 1], [2, 2], ..., [min(bound1, 2**x), min(bound2, 2**x)]
                    level_unroll_factors_comb = [[min(2**_, each_node.name.bound) for each_node in each_level] for _ in range(1, int(math.log2(max([node.name.bound for node in each_level]))))]
                    #
                    
                    # Cyclic Array Partition
                    for each_unroll_group in level_unroll_factors_comb:
                        logging.info("\n{}".format(each_unroll_group))
                        for _i in range(len(each_unroll_group)):
                            self.drctv_list["unroll"].append({
                                "factor":each_unroll_group[_i],
                                "func_name":func_name,
                                "loop_label":"/"+each_level[_i].name.label
                            })
                            for each_partition in each_level[_i].name.arr_dims.items():
                                self.drctv_list["array_partition"].append({
                                    "type": 2,  # 2 for cyclic
                                    "factor": each_unroll_group[_i],
                                    "dim": each_partition[1], 
                                    "func_name": func_name,
                                    "array_name": each_partition[0]
                                })
                            # Remember adding the *BEST* config of sub-loops
                            # ! Note that the best config of level-n loop contains the best config of level-(n+1) loop, hence, only need to add n+1 level, no need for adding n+2, ...
                            # for _j in range(0, i):
                            if i > 0:
                                logging.info("best_level_drctvs[i - 1] = {}".format(best_level_drctvs[i - 1]))
                                # for _j in range(len(best_level_drctvs[i - 1])):
                                self.drctv_list["unroll"] += best_level_drctvs[i - 1]["unroll"]
                                self.drctv_list["array_partition"] += best_level_drctvs[i - 1]["array_partition"]
                        for each_array_name in array_name_list:
                            self.drctv_list["bind_storage"].append({
                                "type":"ram_2p",
                                "impl":RAM_TYPE,
                                "func_name":func_name,
                                "array_name":each_array_name
                            })
                        dump_directives_to_tcl(drctv_file_name, self.drctv_list)
                        run_hls(
                            self.DSE_LIB_SRC,
                            func_name,
                            self.SOLUTION,
                            "" if self.BOARD_PART.upper() == "U250" else "#",
                            "" if self.BOARD_PART.upper() == "U280" else "#",
                            drctv_file_name,
                            self.TARGET_FREQ,
                            True,
                            "timeout 5m"
                        )
                        # if HLS fails to schedule with the new pragma setting, then skip
                        if not isdir('{}/{}/syn/report/'.format(func_name, self.SOLUTION)):
                            if i > 0 and not any(best_level_drctvs[i].values()) and best_level_latency[i] == math.inf:
                                best_level_drctvs[i] = copy.deepcopy(best_level_drctvs[i - 1])
                                best_level_latency[i] = best_level_latency[i - 1]
                            self.drctv_list["unroll"].clear()
                            self.drctv_list["array_partition"].clear()
                            self.drctv_list["bind_storage"].clear()
                            break
                        hls_prj = HLSProject(
                            func_name,                   # Top function's name
                            "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                            self.SOLUTION                    # HLS solution name
                        )
                        hls_prj.processLatencyAndII()
                        hls_ii = hls_prj.getLoopII()
                        total_area = hls_prj.getTotalArea()
                        total_latency = hls_prj.getTotalLatency()
                        hls_iter_lat = hls_prj.getLoopIterLat()
                        logging.info(each_level)
                        logging.info(self.drctv_list)
                        logging.info("II: {}, Total Area: {}, Iter Latency: {}, Total Lat: {}\n".format(hls_ii, total_area, hls_iter_lat, total_latency))
                        if i > 0 and total_latency > best_level_latency[i - 1]:
                            logging.info("No improvement in latency last level: previous best: {}, current: {}".format(best_level_latency[i-1], total_latency))
                            if not any(best_level_drctvs[i].values()) and best_level_latency[i] == math.inf:
                                best_level_drctvs[i] = copy.deepcopy(best_level_drctvs[i - 1])
                                best_level_latency[i] = best_level_latency[i - 1]
                            self.drctv_list["unroll"].clear()
                            self.drctv_list["array_partition"].clear()
                            self.drctv_list["bind_storage"].clear()
                            break
                        if total_latency < best_level_latency[i]:
                            best_level_latency[i] = total_latency
                            best_level_drctvs[i] = copy.deepcopy(self.drctv_list)
                        else:
                            logging.info("No improvement in latency same level: previous best: {}, current: {}".format(best_level_latency[i], total_latency))
                            if i > 0 and not any(best_level_drctvs[i].values()) and best_level_latency[i] == math.inf:
                                best_level_drctvs[i] = copy.deepcopy(best_level_drctvs[i - 1])
                                best_level_latency[i] = best_level_latency[i - 1]
                            self.drctv_list["unroll"].clear()
                            self.drctv_list["array_partition"].clear()
                            self.drctv_list["bind_storage"].clear()
                            break
                        self.dse_lib[func_name].append({
                            "drctv": copy.deepcopy(self.drctv_list),
                            "latency": hls_prj.getTotalLatency(),
                            "BRAM": total_area["BRAM"],
                            "DSP": total_area["DSP"],
                            "FF": total_area["FF"],
                            "LUT": total_area["LUT"],
                            "URAM": total_area["URAM"]
                        })
                        first_level_loop_to_drctvs[first_level_index].append(copy.deepcopy(self.drctv_list))
                        with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
                            json.dump(self.dse_lib, temp_dse_lib_f)
                        self.drctv_list["unroll"].clear()
                        self.drctv_list["array_partition"].clear()
                        self.drctv_list["bind_storage"].clear()
                        
                    # Complete Array Partition -- only 1 point
                    for _i in range(len(level_unroll_factors_comb[0])):
                        self.drctv_list["unroll"].append({
                            "factor":each_level[_i].name.bound,
                            "func_name":func_name,
                            "loop_label":"/"+each_level[_i].name.label
                        })
                        for each_partition in each_level[_i].name.arr_dims.items():
                            self.drctv_list["array_partition"].append({
                                "type": 0,      # 0 for complete
                                "factor": 0,    # factor is useless for complete partition
                                "dim": each_partition[1], 
                                "func_name": func_name,
                                "array_name": each_partition[0]
                            })
                        # Remember adding the *BEST* config of sub-loops
                        # for _j in range(0, i):
                        if i > 0:
                            logging.info("best_level_drctvs[i - 1] = {}".format(best_level_drctvs[i - 1]))
                            # for _j in range(len(best_level_drctvs[i - 1])):
                            self.drctv_list["unroll"] += best_level_drctvs[i - 1]["unroll"]
                            self.drctv_list["array_partition"] += best_level_drctvs[i - 1]["array_partition"]
                    for each_array_name in array_name_list:
                        self.drctv_list["bind_storage"].append({
                            "type":"ram_2p",
                            "impl":RAM_TYPE,
                            "func_name":func_name,
                            "array_name":each_array_name
                        })
                    dump_directives_to_tcl(drctv_file_name, self.drctv_list)
                    run_hls(
                        self.DSE_LIB_SRC,
                        func_name,
                        self.SOLUTION,
                        "" if self.BOARD_PART.upper() == "U250" else "#",
                        "" if self.BOARD_PART.upper() == "U280" else "#",
                        drctv_file_name,
                        self.TARGET_FREQ,
                        True,
                        "timeout 5m"
                    )
                    # if HLS fails to schedule with the new pragma setting, then skip
                    if isdir('{}/{}/syn/report/'.format(func_name, self.SOLUTION)):
                        hls_prj = HLSProject(
                            func_name,                   # Top function's name
                            "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                            self.SOLUTION                    # HLS solution name
                        )
                        hls_prj.processLatencyAndII()
                        hls_ii = hls_prj.getLoopII()
                        total_area = hls_prj.getTotalArea()
                        total_latency = hls_prj.getTotalLatency()
                        hls_iter_lat = hls_prj.getLoopIterLat()
                        logging.info(each_level)
                        logging.info(self.drctv_list)
                        logging.info("II: {}, Total Area: {}, Iter Latency: {}, Total Lat: {}\n".format(hls_ii, total_area, hls_iter_lat, total_latency))
                        if (i > 0 and total_latency > best_level_latency[i - 1]) or total_latency >= best_level_latency[i]:
                            if i > 0 and not any(best_level_drctvs[i].values()) and best_level_latency[i] == math.inf:
                                best_level_drctvs[i] = copy.deepcopy(best_level_drctvs[i - 1])
                                best_level_latency[i] = best_level_latency[i - 1]
                            pass
                        else:
                            best_level_latency[i] = total_latency
                            best_level_drctvs[i] = copy.deepcopy(self.drctv_list)
                        
                            self.dse_lib[func_name].append({
                                "drctv": copy.deepcopy(self.drctv_list),
                                "latency": hls_prj.getTotalLatency(),
                                "BRAM": total_area["BRAM"],
                                "DSP": total_area["DSP"],
                                "FF": total_area["FF"],
                                "LUT": total_area["LUT"],
                                "URAM": total_area["URAM"]
                            })
                            first_level_loop_to_drctvs[first_level_index].append(copy.deepcopy(self.drctv_list))
                            with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
                                json.dump(self.dse_lib, temp_dse_lib_f)
                                
                    self.drctv_list["unroll"].clear()
                    self.drctv_list["array_partition"].clear()
                    self.drctv_list["bind_storage"].clear()
                    
                    # Loop Pipeline
                    real_ii = [1 for _ in range(len(each_level))]
                    real_iter_latency = [math.inf for _ in range(len(each_level))]
                    for ii in range(1, 5):
                        for j in range(len(each_level)):
                            each_node = each_level[j]
                            target_ii = real_ii[j] * ii
                            self.drctv_list["pipeline"].append({
                                "II": max(min(target_ii, real_iter_latency[j] - 1), 1),
                                "off": 0 if ii > 0 else 1,
                                "rewind": 0,
                                "func_name": func_name,
                                "loop_label": "/"+each_node.name.label
                            })
                        # for each_array_name in array_name_list:
                        #     self.drctv_list["bind_storage"].append({
                        #         "type":"ram_2p",
                        #         "impl":RAM_TYPE,
                        #         "func_name":func_name,
                        #         "array_name":each_array_name
                        #     })
                        dump_directives_to_tcl(drctv_file_name, self.drctv_list)
                        run_hls(
                            self.DSE_LIB_SRC,
                            func_name,
                            self.SOLUTION,
                            "" if self.BOARD_PART.upper() == "U250" else "#",
                            "" if self.BOARD_PART.upper() == "U280" else "#",
                            drctv_file_name,
                            self.TARGET_FREQ,
                            True,
                            "timeout 5m"
                        )
                        # if HLS fails to schedule with the new pragma setting, then skip
                        if not isdir('{}/{}/syn/report/'.format(func_name, self.SOLUTION)):
                            break
                        hls_prj = HLSProject(
                            func_name,                   # Top function's name
                            "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                            self.SOLUTION                    # HLS solution name
                        )
                        hls_prj.processLatencyAndII()
                        hls_ii = hls_prj.getLoopII()
                        total_area = hls_prj.getTotalArea()
                        total_latency = hls_prj.getTotalLatency()
                        hls_iter_lat = hls_prj.getLoopIterLat()
                        logging.info(each_level)
                        logging.info(self.drctv_list)
                        logging.info("II: {}, Total Area: {}, Iter Latency: {}, Total Lat: {}\n".format(hls_ii, total_area, hls_iter_lat, total_latency))
                        if i > 0 and total_latency > best_level_latency[i - 1]:
                            break
                        if total_latency < best_level_latency[i]:
                            best_level_latency[i] = total_latency
                            best_level_drctvs[i] = copy.deepcopy(self.drctv_list)
                        assert len(hls_ii) == len(real_ii), "hls_ii = {}; real_ii = {}".format(hls_ii, real_ii)
                        # Correction of real II achieved
                        # # When target ii = 1, find the real ii achieved, and the iteration latency--the upper bound of ii
                        if ii == 1:
                            # update real_ii based on hls report
                            for j in range(len(real_ii)):
                                real_ii[j] = max(hls_ii[j], real_ii[j])
                                self.drctv_list["pipeline"][j]["II"] = real_ii[j]
                        else:
                            for j in range(len(real_ii)):
                                self.drctv_list["pipeline"][j]["II"] = min(hls_ii[j], real_ii[j] * ii)
                        # update loop iteration latency based on hls report
                        for j in range(len(real_ii)):
                            real_iter_latency[j] = hls_iter_lat[j]
                        self.dse_lib[func_name].append({
                            "drctv": copy.deepcopy(self.drctv_list),
                            "latency": hls_prj.getTotalLatency(),
                            "BRAM": total_area["BRAM"],
                            "DSP": total_area["DSP"],
                            "FF": total_area["FF"],
                            "LUT": total_area["LUT"],
                            "URAM": total_area["URAM"]
                        })
                        first_level_loop_to_drctvs[first_level_index].append(copy.deepcopy(self.drctv_list))
                        with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
                            json.dump(self.dse_lib, temp_dse_lib_f)
                        self.drctv_list["pipeline"].clear()
                        self.drctv_list["bind_storage"].clear()
                        
                        # Early-exit: when all target ii are no-less-than iter-latency
                        if not any([real_ii[_] * ii < real_iter_latency[_] for _ in range(len(each_level))]):
                            # print(real_ii)
                            # print(real_iter_latency)
                            break
                        # exit(0)
                    print()
                    # Clean for Loop Pipeline directive settings
                    self.drctv_list["pipeline"].clear()
                    self.drctv_list["bind_storage"].clear()
            
            logging.info("\nSingle Loop Directives Extracted:")        
            logging.info(first_level_loop_to_drctvs)
            
            # # 2. Combination among different first-level loop branches' directives
            logging.info("\nCombinations among First Level Loops' Directives\n")
            for each_drctv_list in [list(_) for _ in itertools.product(*first_level_loop_to_drctvs)]:
                temp_drctv_list = {"unroll": [], "pipeline": [], "array_partition": [], "allocation": [], "bind_storage": []}
                for key in temp_drctv_list.keys():
                    for each_drctv in each_drctv_list:
                        temp_drctv_list[key] += copy.deepcopy(each_drctv[key])
                dump_directives_to_tcl(drctv_file_name, temp_drctv_list)
                run_hls(
                    self.DSE_LIB_SRC,
                    func_name,
                    self.SOLUTION,
                    "" if self.BOARD_PART.upper() == "U250" else "#",
                    "" if self.BOARD_PART.upper() == "U280" else "#",
                    drctv_file_name,
                    self.TARGET_FREQ,
                    True,
                    "timeout 7m"
                )
                # if HLS fails to schedule with the new pragma setting, then skip
                if not isdir('{}/{}/syn/report/'.format(func_name, self.SOLUTION)):
                    continue
                hls_prj = HLSProject(
                    func_name,                   # Top function's name
                    "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                    self.SOLUTION                    # HLS solution name
                )
                hls_prj.processLatencyAndII()
                hls_ii = hls_prj.getLoopII()
                total_area = hls_prj.getTotalArea()
                total_latency = hls_prj.getTotalLatency()
                hls_iter_lat = hls_prj.getLoopIterLat()
                logging.info("each_drctv_list: {}".format(each_drctv_list))
                logging.info("temp_drctv_list: {}".format(temp_drctv_list))
                logging.info("II: {}, Total Area: {}, Iter Latency: {}, Total Lat: {}\n".format(hls_ii, total_area, hls_iter_lat, total_latency))
                self.dse_lib[func_name].append({
                    "drctv": copy.deepcopy(temp_drctv_list),
                    "latency": hls_prj.getTotalLatency(),
                    "BRAM": total_area["BRAM"],
                    "DSP": total_area["DSP"],
                    "FF": total_area["FF"],
                    "LUT": total_area["LUT"],
                    "URAM": total_area["URAM"]
                })
                with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
                    json.dump(self.dse_lib, temp_dse_lib_f)
                    
    '''
    First, run HLS for single first-level loop branch, by post-level order. Stop when there's no latency improvement, or timeout 10m.
    Second, run HLS for combinations among branches.
    '''
    
    def _2_preprocess_dataflow_PE_with_array(self, func_name, array_name_list):
        logging.info("Dataflow's PE with array")
        # No directives at first:
        drctv_file_name = "directives_{}.tcl".format(func_name)
        dump_directives_to_tcl(drctv_file_name, self.drctv_list)
        run_hls(
            self.DSE_LIB_SRC,
            func_name,
            self.SOLUTION,
            "" if self.BOARD_PART.upper() == "U250" else "#",
            "" if self.BOARD_PART.upper() == "U280" else "#",
            drctv_file_name,
            self.TARGET_FREQ,
            True,
            "timeout 10m"
        )
        hls_prj = HLSProject(
            func_name,                   # Top function's name
            "./{}".format(func_name),    # HLS Project folder name, same with top function's name
            self.SOLUTION                    # HLS solution name
        )
        hls_prj.processLatencyAndII()
        total_latency = hls_prj.getTotalLatency()
        total_area = hls_prj.getTotalArea()
        self.dse_lib[func_name].append({
            "drctv": copy.deepcopy(self.drctv_list),
            "latency": total_latency,
            "BRAM": total_area["BRAM"],
            "DSP": total_area["DSP"],
            "FF": total_area["FF"],
            "LUT": total_area["LUT"],
            "URAM": total_area["URAM"]
        })
        with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
            json.dump(self.dse_lib, temp_dse_lib_f)
        
        # With directives
        for RAM_TYPE in ["bram", "uram"]:
            post_level_order_node_list = []
            drctv_file_name = "directives_{}.tcl".format(func_name)
            
            # # 1. Extract first-level post-level-ordered loop branch, and run HLS for single branch.
            for first_level_sub_node in self.func_loop_tree[func_name].children:
                post_level_order_node_list.append(defaultlist())
                post_level_order_first_level = [list(node_groups) for node_groups in LevelOrderGroupIter(first_level_sub_node)]
                post_level_order_first_level.reverse()  # post-level order list of each first-level loop branch
                curr_best_lat = math.inf
                for each_level in post_level_order_first_level:
                    real_ii = [1 for _ in range(len(each_level))]
                    for j in range(len(each_level)):
                        each_node = each_level[j]
                        target_ii = 1
                        self.drctv_list["pipeline"].append({
                            "II": target_ii,
                            "off": 0,
                            "rewind": 0,
                            "func_name": func_name,
                            "loop_label": "/"+each_node.name.label
                        })
                    for each_array_name in array_name_list:
                        self.drctv_list["bind_storage"].append({
                            "type":"ram_2p",
                            "impl":RAM_TYPE,
                            "func_name":func_name,
                            "array_name":each_array_name
                        })
                    logging.info(each_level)
                    logging.info(self.drctv_list)
                    dump_directives_to_tcl(drctv_file_name, self.drctv_list)
                    run_hls(
                        self.DSE_LIB_SRC,
                        func_name,
                        self.SOLUTION,
                        "" if self.BOARD_PART.upper() == "U250" else "#",
                        "" if self.BOARD_PART.upper() == "U280" else "#",
                        drctv_file_name,
                        self.TARGET_FREQ,
                        True,
                        "timeout 10m"
                    )
                    if not isdir('{}/{}/syn/report/'.format(func_name, self.SOLUTION)):
                        logging.info('{}/{}/syn/report/ directory not found!'.format(func_name, self.SOLUTION))
                        self.drctv_list["pipeline"].clear()
                        self.drctv_list["bind_storage"].clear()
                        break
                    hls_prj = HLSProject(
                        func_name,                   # Top function's name
                        "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                        self.SOLUTION                    # HLS solution name
                    )
                    hls_prj.processLatencyAndII()
                    hls_ii = hls_prj.getLoopII()
                    total_area = hls_prj.getTotalArea()
                    total_latency = hls_prj.getTotalLatency()
                    hls_iter_lat = hls_prj.getLoopIterLat()
                    logging.info("Pre-real II: {}, HLS II: {}, Total Area: {}, Iter Latency: {}, Total Lat: {}, each_level node names:{}".format(real_ii, hls_ii, total_area, hls_iter_lat, total_latency, [_.name.label for _ in each_level]))
                    if total_latency < curr_best_lat:
                        curr_best_lat = total_latency
                    else:
                        self.drctv_list["pipeline"].clear()
                        self.drctv_list["bind_storage"].clear()
                        break
                    # Add current level into post-level order list's current branch's list
                    # input("Next?...")
                    if len(hls_ii) != len(real_ii):
                        logging.error("len(hls_ii) != len(real_ii)")
                        self.drctv_list["pipeline"].clear()
                        self.drctv_list["bind_storage"].clear()
                        break
                        
                    for j in range(len(real_ii)):
                        real_ii[j] = max(hls_ii[j], real_ii[j])
                        self.drctv_list["pipeline"][j]["II"] = real_ii[j]
                        
                    for j in range(len(each_level)):
                        each_node = each_level[j]
                        each_node.name.updateInitII(hls_ii[j])
                        each_node.name.updateIterLat(hls_iter_lat[j])
                    post_level_order_node_list[-1].append(each_level)
                    self.drctv_list["pipeline"].clear()
                    self.drctv_list["bind_storage"].clear()
            
            # logging.info(post_level_order_node_list)
            # # Print the for-loop tree-view in current function in log info
            # logging.info("\n> Function Name: {} -----------------------------------".format(func_name))
            # self.render_tree(self.func_loop_tree[func_name])
            
            # # 2. Generate all N-combinations (1 <= N <= # of first-level loop branch) loop groups
            self.drctv_list["pipeline"].clear()
            self.drctv_list["bind_storage"].clear()            
            all_comb_among_groups = []
            for _l in range(1, len(post_level_order_node_list) + 1):
                for comb in list(itertools.combinations(post_level_order_node_list, _l)):
                    all_comb_among_groups += [self.flatten_list(_) for _ in itertools.product(*comb)]
            
            logging.info("\nAll combinations among for-loop-groups:")
            for each_group in all_comb_among_groups:
                logging.info(each_group)
            logging.info("\n")
            
            # # 3. Run for all N-combinations (1 <= N <= # of first-level loop branch) loop groups
            # #  Generate pipeline directives and Run HLS and save latency-resource (from HLS report)
            # #  by each element of cartesian product
            # #  forming a groups of (>3-D) planes for each element
            # #  e.g. Resource v.s. (ii of group 1)-(ii of group 2)-(...)-(ii of group n)
            for each_group in all_comb_among_groups:
                real_ii = [each_group[_].name.initII for _ in range(len(each_group))]
                print()
                print(each_group)
                print(real_ii)
                real_iter_latency = [each_group[_].name.iterLat for _ in range(len(each_group))]
                for ii in range(1, 5):
                    for j in range(len(each_group)):
                        each_node = each_group[j]
                        target_ii = real_ii[j] * ii
                        self.drctv_list["pipeline"].append({
                            "II": max(min(target_ii, real_iter_latency[j] - 1), 1),
                            "off": 0 if ii > 0 else 1,
                            "rewind": 0,
                            "func_name": func_name,
                            "loop_label": "/"+each_node.name.label
                        })
                    for each_array_name in array_name_list:
                        self.drctv_list["bind_storage"].append({
                            "type":"ram_2p",
                            "impl":RAM_TYPE,
                            "func_name":func_name,
                            "array_name":each_array_name
                        })
                    logging.info(each_level)
                    logging.info(self.drctv_list)
                    dump_directives_to_tcl(drctv_file_name, self.drctv_list)
                    run_hls(
                        self.DSE_LIB_SRC,
                        func_name,
                        self.SOLUTION,
                        "" if self.BOARD_PART.upper() == "U250" else "#",
                        "" if self.BOARD_PART.upper() == "U280" else "#",
                        drctv_file_name,
                        self.TARGET_FREQ,
                        True,
                        "timeout 10m"
                    )
                    if not isdir('{}/{}/syn/report/'.format(func_name, self.SOLUTION)):
                        self.drctv_list["pipeline"].clear()
                        self.drctv_list["bind_storage"].clear()
                        break
                    hls_prj = HLSProject(
                        func_name,                   # Top function's name
                        "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                        self.SOLUTION                    # HLS solution name
                    )
                    hls_prj.processLatencyAndII()
                    # print(hls_prj.getLoopLatency())
                    # print(hls_prj.getLoopII())
                    # print(hls_prj.getTotalLatency())
                    # print(hls_prj.getTotalArea())
                    hls_ii = hls_prj.getLoopII()
                    total_area = hls_prj.getTotalArea()
                    hls_iter_lat = hls_prj.getLoopIterLat()
                    total_latency = hls_prj.getTotalLatency()
                    logging.info("II: {}, Total Area: {}, Iter Latency: {}, Total Lat: {}".format(hls_ii, total_area, hls_iter_lat, total_latency))
                    assert len(hls_ii) == len(real_ii), "hls_ii = {}; real_ii = {}".format(hls_ii, real_ii)
                    # Correction of real II achieved
                    # # When target ii = 1, find the real ii achieved, and the iteration latency--the upper bound of ii
                    if ii == 1:
                        # update real_ii based on hls report
                        for j in range(len(real_ii)):
                            real_ii[j] = max(hls_ii[j], real_ii[j])
                            self.drctv_list["pipeline"][j]["II"] = real_ii[j]
                    else:
                        for j in range(len(real_ii)):
                            self.drctv_list["pipeline"][j]["II"] = min(hls_ii[j], real_ii[j] * ii)
                    # update loop iteration latency based on hls report
                    for j in range(len(real_ii)):
                        real_iter_latency[j] = hls_iter_lat[j]
                    self.dse_lib[func_name].append({
                        "drctv": copy.deepcopy(self.drctv_list),
                        "latency": hls_prj.getTotalLatency(),
                        "BRAM": total_area["BRAM"],
                        "DSP": total_area["DSP"],
                        "FF": total_area["FF"],
                        "LUT": total_area["LUT"],
                        "URAM": total_area["URAM"]
                    })
                    with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
                        json.dump(self.dse_lib, temp_dse_lib_f)
                    self.drctv_list["pipeline"].clear()
                    self.drctv_list["bind_storage"].clear()
                    
                    # Early-exit: when all target ii are no-less-than iter-latency
                    if not any([real_ii[_] * ii < real_iter_latency[_] for _ in range(len(each_group))]):
                        # print(real_ii)
                        # print(real_iter_latency)
                        break
                    # exit(0)
                print()        

            self.drctv_list["pipeline"].clear()
            self.drctv_list["bind_storage"].clear()
    
    def _2_preprocess_dataflow_PE_without_array(self, func_name):
        logging.info("Dataflow's PE without array")
        
        post_level_order_node_list = []
        drctv_file_name = "directives_{}.tcl".format(func_name)
        # No directives at first:
        dump_directives_to_tcl(drctv_file_name, self.drctv_list)
        run_hls(
            self.DSE_LIB_SRC,
            func_name,
            self.SOLUTION,
            "" if self.BOARD_PART.upper() == "U250" else "#",
            "" if self.BOARD_PART.upper() == "U280" else "#",
            drctv_file_name,
            self.TARGET_FREQ,
            True,
            "timeout 10m"
        )
        hls_prj = HLSProject(
            func_name,                   # Top function's name
            "./{}".format(func_name),    # HLS Project folder name, same with top function's name
            self.SOLUTION                    # HLS solution name
        )
        hls_prj.processLatencyAndII()
        total_latency = hls_prj.getTotalLatency()
        total_area = hls_prj.getTotalArea()
        self.dse_lib[func_name].append({
            "drctv": copy.deepcopy(self.drctv_list),
            "latency": total_latency,
            "BRAM": total_area["BRAM"],
            "DSP": total_area["DSP"],
            "FF": total_area["FF"],
            "LUT": total_area["LUT"],
            "URAM": total_area["URAM"]
        })
        with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
            json.dump(self.dse_lib, temp_dse_lib_f)
        
        # With directives
        # # 1. Extract first-level post-level-ordered loop branch, and run HLS for single branch.
        for first_level_sub_node in self.func_loop_tree[func_name].children:
            post_level_order_node_list.append(defaultlist())
            post_level_order_first_level = [list(node_groups) for node_groups in LevelOrderGroupIter(first_level_sub_node)]
            post_level_order_first_level.reverse()  # post-level order list of each first-level loop branch
            curr_best_lat = math.inf
            for each_level in post_level_order_first_level:
                real_ii = [1 for _ in range(len(each_level))]
                for j in range(len(each_level)):
                    each_node = each_level[j]
                    target_ii = 1
                    self.drctv_list["pipeline"].append({
                        "II": target_ii,
                        "off": 0,
                        "rewind": 0,
                        "func_name": func_name,
                        "loop_label": "/"+each_node.name.label
                    })
                logging.info(each_level)
                logging.info(self.drctv_list)
                dump_directives_to_tcl(drctv_file_name, self.drctv_list)
                run_hls(
                    self.DSE_LIB_SRC,
                    func_name,
                    self.SOLUTION,
                    "" if self.BOARD_PART.upper() == "U250" else "#",
                    "" if self.BOARD_PART.upper() == "U280" else "#",
                    drctv_file_name,
                    self.TARGET_FREQ,
                    True,
                    "timeout 10m"
                )
                if not isdir('{}/{}/syn/report/'.format(func_name, self.SOLUTION)):
                    self.drctv_list["pipeline"].clear()
                    break
                hls_prj = HLSProject(
                    func_name,                   # Top function's name
                    "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                    self.SOLUTION                    # HLS solution name
                )
                hls_prj.processLatencyAndII()
                hls_ii = hls_prj.getLoopII()
                total_area = hls_prj.getTotalArea()
                total_latency = hls_prj.getTotalLatency()
                hls_iter_lat = hls_prj.getLoopIterLat()
                logging.info("II: {}, Total Area: {}, Iter Latency: {}, Total Lat: {}".format(hls_ii, total_area, hls_iter_lat, total_latency))
                if total_latency < curr_best_lat:
                    curr_best_lat = total_latency
                else:
                    self.drctv_list["pipeline"].clear()
                    break
                # Add current level into post-level order list's current branch's list
                # input("Next?...")
                for j in range(len(real_ii)):
                    real_ii[j] = max(hls_ii[j], real_ii[j])
                    self.drctv_list["pipeline"][j]["II"] = real_ii[j]
                    
                for j in range(len(each_level)):
                    each_node = each_level[j]
                    each_node.name.updateInitII(hls_ii[j])
                    each_node.name.updateIterLat(hls_iter_lat[j])
                post_level_order_node_list[-1].append(each_level)
                self.drctv_list["pipeline"].clear()
        
        # logging.info(post_level_order_node_list)
        # # Print the for-loop tree-view in current function in log info
        # logging.info("\n> Function Name: {} -----------------------------------".format(func_name))
        # self.render_tree(self.func_loop_tree[func_name])
        
        # # 2. Generate all N-combinations (1 <= N <= # of first-level loop branch) loop groups
        self.drctv_list["pipeline"].clear()
        all_comb_among_groups = []
        for _l in range(1, len(post_level_order_node_list) + 1):
            for comb in list(itertools.combinations(post_level_order_node_list, _l)):
                all_comb_among_groups += [self.flatten_list(_) for _ in itertools.product(*comb)]
        
        logging.info("\nAll combinations among for-loop-groups:")
        for each_group in all_comb_among_groups:
            logging.info(each_group)
        logging.info("\n")
        
        # # 3. Run for all N-combinations (1 <= N <= # of first-level loop branch) loop groups
        # #  Generate pipeline directives and Run HLS and save latency-resource (from HLS report)
        # #  by each element of cartesian product
        # #  forming a groups of (>3-D) planes for each element
        # #  e.g. Resource v.s. (ii of group 1)-(ii of group 2)-(...)-(ii of group n)
        for each_group in all_comb_among_groups:
            real_ii = [each_group[_].name.initII for _ in range(len(each_group))]
            print()
            print(each_group)
            print(real_ii)
            real_iter_latency = [each_group[_].name.iterLat for _ in range(len(each_group))]
            for ii in range(1, 5):
                for j in range(len(each_group)):
                    each_node = each_group[j]
                    target_ii = real_ii[j] * ii
                    self.drctv_list["pipeline"].append({
                        "II": max(min(target_ii, real_iter_latency[j] - 1), 1),
                        "off": 0 if ii > 0 else 1,
                        "rewind": 0,
                        "func_name": func_name,
                        "loop_label": "/"+each_node.name.label
                    })
                logging.info(each_level)
                logging.info(self.drctv_list)
                dump_directives_to_tcl(drctv_file_name, self.drctv_list)
                run_hls(
                    self.DSE_LIB_SRC,
                    func_name,
                    self.SOLUTION,
                    "" if self.BOARD_PART.upper() == "U250" else "#",
                    "" if self.BOARD_PART.upper() == "U280" else "#",
                    drctv_file_name,
                    self.TARGET_FREQ,
                    True,
                    "timeout 10m"
                )
                if not isdir('{}/{}/syn/report/'.format(func_name, self.SOLUTION)):
                    self.drctv_list["pipeline"].clear()
                    break
                hls_prj = HLSProject(
                    func_name,                   # Top function's name
                    "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                    self.SOLUTION                    # HLS solution name
                )
                hls_prj.processLatencyAndII()
                # print(hls_prj.getLoopLatency())
                # print(hls_prj.getLoopII())
                # print(hls_prj.getTotalLatency())
                # print(hls_prj.getTotalArea())
                hls_ii = hls_prj.getLoopII()
                total_area = hls_prj.getTotalArea()
                total_latency = hls_prj.getTotalLatency()
                hls_iter_lat = hls_prj.getLoopIterLat()
                logging.info("II: {}, Total Area: {}, Iter Latency: {}, Total Lat: {}".format(hls_ii, total_area, hls_iter_lat, total_latency))
                assert len(hls_ii) == len(real_ii), "hls_ii = {}; real_ii = {}".format(hls_ii, real_ii)
                # Correction of real II achieved
                # # When target ii = 1, find the real ii achieved, and the iteration latency--the upper bound of ii
                if ii == 1:
                    # update real_ii based on hls report
                    for j in range(len(real_ii)):
                        real_ii[j] = max(hls_ii[j], real_ii[j])
                        self.drctv_list["pipeline"][j]["II"] = real_ii[j]
                else:
                    for j in range(len(real_ii)):
                        self.drctv_list["pipeline"][j]["II"] = min(hls_ii[j], real_ii[j] * ii)
                # update loop iteration latency based on hls report
                for j in range(len(real_ii)):
                    real_iter_latency[j] = hls_iter_lat[j]
                self.dse_lib[func_name].append({
                    "drctv": copy.deepcopy(self.drctv_list),
                    "latency": hls_prj.getTotalLatency(),
                    "BRAM": total_area["BRAM"],
                    "DSP": total_area["DSP"],
                    "FF": total_area["FF"],
                    "LUT": total_area["LUT"],
                    "URAM": total_area["URAM"]
                })
                with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
                    json.dump(self.dse_lib, temp_dse_lib_f)
                self.drctv_list["pipeline"].clear()
                
                # Early-exit: when all target ii are no-less-than iter-latency
                if not any([real_ii[_] * ii < real_iter_latency[_] for _ in range(len(each_group))]):
                    # print(real_ii)
                    # print(real_iter_latency)
                    break
                # exit(0)
            print()        

        self.drctv_list["pipeline"].clear()
    
    def _2_preprocess_dataflow_PE(self, func_name, array_name_list):
        if array_name_list:
            self._2_preprocess_dataflow_PE_with_array(func_name, array_name_list)
        else:
            self._2_preprocess_dataflow_PE_without_array(func_name)
        
    def get_BRAM_num(width:int, depth:int):
        if depth <= 0:
            return 0
        width_uint = 1
        depth_uint = 1
        if width <= 1 or depth > 16 * 1024:
            width_uint = 1
            depth_uint = 16 * 1024
        elif width <= 2 or depth > 8 * 1024:
            width_uint = 2
            depth_uint = 8 * 1024
        elif width <= 4 or depth > 4 * 1024:
            width_uint = 4
            depth_uint = 4 * 1024
        elif width <= 9 or depth > 2 * 1024:
            width_uint = 9
            depth_uint = 2 * 1024
        elif width <= 18 or depth > 1 * 1024:
            width_uint = 18
            depth_uint = 1 * 1024
        else:
            width_uint = 36
            depth_uint = 512
        
        width_factor = int(width/width_uint)
        if width % width_uint > 0:
            width_factor += 1
        depth_factor = int(depth / depth_uint)
        if depth % depth_uint > 0:
            depth_factor += 1
        BRAM_num = width_factor * depth_factor
        return BRAM_num
    
    def preprocessing_memtype(self):
        func_name_to_array_name_list = {}
        with open(self.DSE_LIB_SRC, "r") as temp_f:
            lines = temp_f.readlines()
            i = 0
            while i < len(lines):
                # If it's a function:
                if re.match(r'([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i]):
                    func_name = re.search('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)', lines[i]).group(2) # get function name for directive setting
                    i += 1
                    # array_name_list = []
                    func_name_to_array_name_list[func_name] = []
                    # not a loop: (to exclude those temp arrays declared inside loops)
                    # not another function
                    while i < len(lines) and \
                        not (
                            re.match(r'([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]) or \
                            re.match(r'([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i])
                            ):
                        regex_groups = re.search(r'([A-Za-z0-9_]+)[ ]+([A-Za-z0-9_]+)((\[\d+\])+)', lines[i])
                        if not regex_groups:
                            i += 1
                            continue
                        
                        dim0 = int(regex_groups.group(3).lstrip('[').rstrip(']').split('][')[0])    # ! For two dimensional array, if dim0 is 1, it's partitioned completely into registers finally. Hence, skip them.
                        if dim0 == 1:
                            i += 1
                            continue
                        array_name = regex_groups.group(2)
                        func_name_to_array_name_list[func_name].append(array_name)
                        # func_name_to_array_name_list[func_name] = array_name_list
                        print("func: {}, array: {}".format(func_name, array_name))
                        i += 1
                else:
                    i += 1
        print(func_name_to_array_name_list)
        return func_name_to_array_name_list

    def preprocessing(self):
        # self.drctv_list.clear()
        func_name_to_array_name_list = self.preprocessing_memtype()
        with open(self.DSE_LIB_SRC, "r") as temp_f:
            lines = temp_f.readlines()
            i = 0
            loop_count = 0
            while i < len(lines):
                if re.match('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i]):
                    func_name = re.search('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)', lines[i]).group(2) # get function 
                    self.func_loop_tree[func_name] = Node(func_name)
                    i += 1
                    curr_func_is_dataflow = func_name.startswith("nondf")
                    
                    # 1. Build the for-loop tree
                    i, loop_count = self._1_parse_for_loop_tree(i, lines, loop_count, func_name, curr_func_is_dataflow)
                    
                    # Print the for-loop tree-view in current function in log info
                    logging.info("\n> Function Name: {} -----------------------------------".format(func_name))
                    self.render_tree(self.func_loop_tree[func_name])
                    # exit(0)
                    # 2. Preprocessing main procedure
                    # Hint: a tree here has no inter-dependency with other trees, because they are either non-dataflow single kernel, or a isolated PE (sub-function) in a dataflow.
                    if func_name.startswith("nondf"):
                        self._2_preprocess_non_dataflow_func(func_name, func_name_to_array_name_list[func_name])
                        # logging.info("Non-dataflow: {}".format(func_name))
                    else:
                        self._2_preprocess_dataflow_PE(func_name, func_name_to_array_name_list[func_name])
                        # logging.info("Dataflow: {}".format(func_name))
                    
                else:
                    i += 1
                # end_of_while
                
            # end_of_withOpen

    def gen_memory_lib(self):
        self.drctv_list.clear()
        func_or_loop = -1 # -1 as default, 0 for func, 1 for loop
        with open(self.DSE_LIB_SRC, "r") as temp_f:
            lines = temp_f.readlines()
            # for i in range(len(lines)):
            i = 0
            while i < len(lines):
                if re.match(r'([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i]) and not lines[i].startswith("nondf"):
                    func_or_loop = 0
                    func_name = re.search('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)', lines[i]).group(2) # get function name for directive setting
                    
                elif re.match(r'([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]):
                    func_or_loop = 1
                    
                elif func_or_loop == 0 and re.search(r'([A-Za-z0-9_]+)[ ]+([A-Za-z0-9_]+)((\[\d+\])+)', lines[i]):
                    regex_groups = re.search(r'([A-Za-z0-9_]+)[ ]+([A-Za-z0-9_]+)((\[\d+\])+)', lines[i])
                    dim0 = int(regex_groups.group(3).lstrip('[').rstrip(']').split('][')[0])    # ! For two dimensional array, if dim0 is 1, it's partitioned completely into registers finally. Hence, skip them.
                    # print(regex_groups.groups())
                    # print(dim0)
                    if dim0 == 1:
                        i += 1
                        continue
                    array_name = regex_groups.group(2)
                    print({"type":"RAM_2P", "impl":"BRAM", "func_name":func_name, "array_name":array_name})
                    self.drctv_list["bind_storage"].append({"type":"ram_2p", "impl":"uram", "func_name":func_name, "array_name":array_name})
                    dump_directives_to_tcl("directives_uram.tcl", self.drctv_list)
                    run_hls(
                        self.DSE_LIB_SRC,
                        func_name,
                        self.SOLUTION,
                        "" if self.BOARD_PART.upper() == "U250" else "#",
                        "" if self.BOARD_PART.upper() == "U280" else "#",
                        "directives_uram.tcl",
                        self.TARGET_FREQ,
                        True
                    )
                    hls_prj = HLSProject(
                        func_name,                   # Top function's name
                        "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                        self.SOLUTION                    # HLS solution name
                    )
                    total_area = hls_prj.getTotalArea()
                    print(total_area)
                    self.dse_lib_uram[func_name].append({
                        "drctv": copy.deepcopy(self.drctv_list),
                        "URAM": total_area["URAM"]
                    })
                    with open("data_uram.json", "w") as temp_dse_lib_uram_f:
                        json.dump(self.dse_lib_uram, temp_dse_lib_uram_f)
                    self.drctv_list["bind_storage"].clear()                    
                
                i += 1

    # Abandoned
    def gen_main_lib(self):
        self.drctv_list.clear()
        with open(self.DSE_LIB_SRC, "r") as temp_f:
            lines = temp_f.readlines()
            # for i in range(len(lines)):
            i = 0
            loop_count = 0
            while i < len(lines):
                if re.match('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i]):
                    func_name = re.search('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)', lines[i]).group(2) # get function 
                    drctv_file_name = "directives_{}.tcl".format(func_name)
                    self.func_loop_tree[func_name] = Node(func_name)
                    i += 1
                    # 1. Build the for-loop tree
                    while i < len(lines) and not re.match('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i]):
                        if re.match('([ ]*)([a-zA-Z_0-9]+:)?([ ]*)(for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]):
                            regex_groups = re.search('([ ]*)([a-zA-Z_0-9]+:)?([ ]*)(for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]).groups()
                            loop_count += 1

                            # Add loop label
                            loop_label = regex_groups[1]
                            if loop_label is None:
                                loop_label = 'loop_{}'.format(loop_count)
                                lines[i] = loop_label + ": " + lines[i]
                            else:
                                loop_label = loop_label.rstrip(':')
                            
                            # Get loop bound
                            loop_bound = int(regex_groups[5]) if regex_groups[4] == "<" else int(regex_groups[5]) + 1
                            # Get indent length
                            indent = len(regex_groups[2])
                            while len(self.func_loop_stack) and self.func_loop_stack[-1]["len"] >= indent:
                                self.func_loop_stack.pop()
                            new_node = Node(ForNode(loop_label, loop_bound))
                            # print(func_name, loop_label, self.func_loop_stack)
                            if len(self.func_loop_stack) == 0:
                                new_node.parent = self.func_loop_tree[func_name]
                            else:
                                new_node.parent = self.func_loop_stack[-1]["node"]
                            self.func_loop_stack.append({"node": new_node, "len": indent})
                            # input()
                            
                            # save directive list
                            # self.drctv_list[func_name]["unroll"].append({"factor":1, "bound":loop_bound, "func_name":func_name, "loop_label":"/"+loop_label})
                            
                        i += 1
                        # end_of_while
                        
                    self.func_loop_stack.clear()
                    
                    # 2. Print the for-loop tree-view in current function
                    print("\n> Function Name: {} ----------------------------".format(func_name))
                    self.render_tree(self.func_loop_tree[func_name])
                    
                    # 3. Update total loop bound recursively
                    for first_level_sub_node in self.func_loop_tree[func_name].children:
                        self.update_tree_total_bound(first_level_sub_node)
                    # filter to exclude dummy head node
                    # print([node.name for node in PostOrderIter(self.func_loop_tree[func_name], filter_=lambda n:n.depth > 0)])
                    
                    # 4. post-order level-order traversal to build the combinations within each group of for-loops
                    '''Stop Conditions (or)
                        1. When sub-loop total iteration number exceeds 128
                        2. When current node-height is larger than 2
                    '''
                    post_level_order_node_list = []
                    for first_level_sub_node in self.func_loop_tree[func_name].children:
                        post_level_order_node_list.append(defaultlist(list))
                        temp_depth = math.inf
                        temp_index = -1
                        for node in PostOrderIter(first_level_sub_node):
                            if node.name.total_bound > PIPELINE_MAX_LOOP_BOUND or node.height > 2:
                                break
                            if node.depth < temp_depth:
                                temp_index += 1
                                temp_depth = node.depth
                            post_level_order_node_list[-1][temp_index].append(node)
                    all_comb_among_groups = [self.flatten_list(_) for _ in itertools.product(*post_level_order_node_list)]
                    # for element in itertools.product(*post_level_order_node_list):
                    #     print((element))
                    print("\nAll combinations among for-loop-groups:")
                    for each_group in all_comb_among_groups:
                        print(each_group)
                    print()
                    # print(len(all_comb_among_groups[0]))
                    
                    # 5. Generate pipeline directives and Run HLS and save latency-resource (from HLS report)
                    # #  by each element of cartesian product
                    # #  forming a groups of (>3-D) planes for each element
                    # #  e.g. Resource v.s. (ii of group 1)-(ii of group 2)-(...)-(ii of group n)
                    for each_group in all_comb_among_groups:
                        real_ii = [1 for _ in range(len(each_group))]
                        real_iter_latency = [math.inf for _ in range(len(each_group))]
                        for ii in range(1, 5):
                            for j in range(len(each_group)):
                                each_node = each_group[j]
                                target_ii = real_ii[j] * ii
                                self.drctv_list["pipeline"].append({
                                    "II": max(min(target_ii, real_iter_latency[j] - 1), 1),
                                    "off": 0 if ii > 0 else 1,
                                    "rewind": 0,
                                    "func_name": func_name,
                                    "loop_label": "/"+each_node.name.label
                                })
                            dump_directives_to_tcl(drctv_file_name, self.drctv_list)
                            run_hls(
                                self.DSE_LIB_SRC,
                                func_name,
                                self.SOLUTION,
                                "" if self.BOARD_PART.upper() == "U250" else "#",
                                "" if self.BOARD_PART.upper() == "U280" else "#",
                                drctv_file_name,
                                self.TARGET_FREQ,
                                True
                            )
                            hls_prj = HLSProject(
                                func_name,                   # Top function's name
                                "./{}".format(func_name),    # HLS Project folder name, same with top function's name
                                self.SOLUTION                    # HLS solution name
                            )
                            hls_prj.processLatencyAndII()
                            # print(hls_prj.getLoopLatency())
                            # print(hls_prj.getLoopII())
                            # print(hls_prj.getTotalLatency())
                            # print(hls_prj.getTotalArea())
                            hls_ii = hls_prj.getLoopII()
                            total_area = hls_prj.getTotalArea()
                            hls_iter_lat = hls_prj.getLoopIterLat()
                            assert len(hls_ii) == len(real_ii), "hls_ii = {}; real_ii = {}".format(hls_ii, real_ii)
                            # Correction of real II achieved
                            # # When target ii = 1, find the real ii achieved, and the iteration latency--the upper bound of ii
                            if ii == 1:
                                # update real_ii based on hls report
                                for j in range(len(real_ii)):
                                    real_ii[j] = max(hls_ii[j], real_ii[j])
                                    self.drctv_list["pipeline"][j]["II"] = real_ii[j]
                            else:
                                for j in range(len(real_ii)):
                                    self.drctv_list["pipeline"][j]["II"] = min(hls_ii[j], real_ii[j] * ii)
                            # update loop iteration latency based on hls report
                            for j in range(len(real_ii)):
                                real_iter_latency[j] = hls_iter_lat[j]
                            self.dse_lib[func_name].append({
                                "drctv": copy.deepcopy(self.drctv_list),
                                "latency": hls_prj.getTotalLatency(),
                                "BRAM": total_area["BRAM"],
                                "DSP": total_area["DSP"],
                                "FF": total_area["FF"],
                                "LUT": total_area["LUT"],
                                "URAM": total_area["URAM"]
                            })
                            with open(self.DSE_LIB_JSON, "w") as temp_dse_lib_f:
                                json.dump(self.dse_lib, temp_dse_lib_f)
                            self.drctv_list["pipeline"].clear()
                            
                            # Early-exit: when all target ii are no-less-than iter-latency
                            if not any([real_ii[_] * ii < real_iter_latency[_] for _ in range(len(each_group))]):
                                # print(real_ii)
                                # print(real_iter_latency)
                                break
                            # exit(0)
                        print()
                    # exit(0)
                    
                    # # all-combination level by level, and grouped by first-level for-loop (nodes with depth=1)
                    # all_comb_within_groups = defaultlist(list)
                    # temp_index = -1
                    # for each_group in post_level_order_node_list:
                    #     temp_index += 1
                    #     for each_level in each_group:
                    #         all_comb_within_groups[temp_index].append([_ for __ in range(1, len(each_level) + 1) for _ in itertools.combinations(each_level, __)])
                    #         print([(_.name.label, _.name.total_bound) for _ in each_level])
                    # print(all_comb_within_groups)
                    # for _ in all_comb_within_groups:
                    #     print(_)
                    # cartesian product among all loops
                    continue
                else:
                    i += 1
                # end_of_while
                
            # end_of_withOpen