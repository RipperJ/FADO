import os
import sys
# --- import mfpd source ---
sys.path.append("../../../src_py")
sys.setrecursionlimit(100000)       # increase the number to avoid call stack overflow
import re
import json
import math
import numpy as np
import copy
import heapq
import regex
import random
import _thread
import logging
import itertools
from collections import defaultdict
from defaultlist import defaultlist

from graphviz import Digraph
from sklearn.linear_model import LinearRegression
from anytree import Node, RenderTree, PreOrderIter, PostOrderIter, LevelOrderIter, LevelOrderGroupIter

from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
from pyverilog.dataflow.dataflow_analyzer import VerilogDataflowAnalyzer
from pyverilog.vparser.parser import parse
import pyverilog.vparser.ast as ast

# --- Includes ---
from Common import RESOURCE_TYPES
from Device import Device, DeviceBase
from HLSProject import HLSProject
from TopRTLParser import TopRTLParser
from DataflowGraph import DataflowGraph
from SlotManager import SlotManager
from Floorplan import Floorplanner
from GlobalRouting import GlobalRouting
from LatencyBalancing import LatencyBalancing
from Codegen import generate_new_rtl_top
from FloorplanTclGeneration import generate_floorplan_constraints
from DSE_mm2mm import DSE_mm2mm
from DSELib import DSELib
from HLSUtils import HLS_TCL_TEXT, run_hls, dump_directives_to_tcl
from Common import RESOURCE_TYPES
# from FloorplanTclGeneration import generate_topofloorplan_constraints

import matplotlib.pyplot as plt
import oapackage


# 1. SRC --clang_format--> TOP --labeled_deletePragma--> [DUT + DRCTV]
SRC_FILE = "kernel.cpp"    # original source
TOP_FILE = "top.cpp"    # post clang-format
DUT_FILE = "dut.cpp"    # (1) set loop_label
                        # (2) clear pragma (only those considered in DSE are removed in DUT_FILE)
TOP_FUNC = "top"
SOLUTION = "solution"
BOARD_PART = "U250"     # U250 or U280
DIRECTIVE_FILE = "directives.tcl"
TARGET_FREQ = "300"
DSE_LIB_JSON = "data.json"
DSE_LIB_SRC = "dse_lib.cpp"
DSE_STRATEGY = "incrfp" # incrfp, nofp, globalfp, all

# FUNC_LIBNAME_TO_PREFIX_REGEXS = {
#     "A_IO_L3_in": r"A_IO_L3_in_x",
#     "A_IO_L2_in": r"A_IO_L2_in_\d+_x",
#     "A_IO_L2_in_boundary": r"A_IO_L2_in_boundary_x",
#     "B_IO_L3_in": r"B_IO_L3_in_x",
#     "B_IO_L2_in": r"B_IO_L2_in_x",
#     "B_IO_L2_in_boundary": r"B_IO_L2_in_boundary_x",
#     "PE_wrapper": r"PE_wrapper_\d+_\d+",
#     "A_PE_dummy": r"A_PE_dummy_\d+_x",
#     "B_PE_dummy": r"B_PE_dummy_\d+_x",
#     "C_drain_IO_L1_out_boundary": r"C_drain_IO_L1_out_boundary_\d+_x",
#     "C_drain_IO_L1_out": r"C_drain_IO_L1_out_\d+_x",
#     "C_drain_IO_L2_out_boundary": r"C_drain_IO_L2_out_boundary_x",
#     "C_drain_IO_L2_out": r"C_drain_IO_L2_out_x",
#     "C_drain_IO_L3_out": r"C_drain_IO_L3_out_x"
# }
PREFIX_REGEXS_TO_FUNC_LIBNAME = {
    r"A_IO_L3_in_x": "A_IO_L3_in",
    r"A_IO_L2_in_\d+_x": "A_IO_L2_in",
    r"A_IO_L2_in_boundary_x": "A_IO_L2_in_boundary",
    r"A_IO_L3_in_serialize_x": "A_IO_L3_in_serialize",
    r"B_IO_L3_in_x": "B_IO_L3_in",
    r"B_IO_L2_in_\d+_x": "B_IO_L2_in",
    r"B_IO_L2_in_boundary_x": "B_IO_L2_in_boundary",
    r"B_IO_L3_in_serialize_x": "B_IO_L3_in_serialize",
    r"PE_wrapper_\d+_\d+": "PE_wrapper",
    r"A_PE_dummy_in_\d+_x": "A_PE_dummy_in",
    r"B_PE_dummy_in_\d+_x": "B_PE_dummy_in",
    r"C_drain_IO_L1_out_wrapper_\d+_\d+_x": "C_drain_IO_L1_out_wrapper",
    r"C_drain_IO_L1_out_boundary_wrapper_\d+_x": "C_drain_IO_L1_out_boundary_wrapper",
    r"C_drain_IO_L2_out_\d+_x": "C_drain_IO_L2_out",
    r"C_drain_IO_L2_out_boundary_x": "C_drain_IO_L2_out_boundary",
    r"C_drain_IO_L3_out_x": "C_drain_IO_L3_out",
    r"C_drain_IO_L3_out_serialize_x": "C_drain_IO_L3_out_serialize",
    r"nondf_kernel_2mm_x": "nondf_kernel_2mm"
}

ABCONFIG = '''
{
    "FloorplanMethod": "IterativeDivisionToHalfSLR",
    "AreaUtilizationRatio" : 0.65,
  
    "BundleToDDRMapping" : {
        "gmem_A": 0,
        "gmem_B": 1,
        "gmem_C": 2
    },
    "LoggingLevel" : "DEBUG",
    "Floorplan" : "CLOCKREGION_X0Y0:CLOCKREGION_X7Y7"
}
'''

PACK_XO_TCL_TEXT = '''
open_project {}
open_solution {}
export_design -rtl verilog -format xo -output XO.xo

close_project
puts "Pack XO successfully"
exit
'''.format(TOP_FUNC, SOLUTION)

VITIS_TCL_TEXT = '''
#!/bin/bash
src_dir=$(pwd)
TOP=%s
PLATFORM=xilinx_u250_xdma_201830_2
XO="${src_dir}/XO.xo"
STRATEGY="Default"
output_dir="$(pwd)/vitis_run"

CONSTRAINT="${src_dir}/constraint.tcl"
echo $CONSTRAINT
if [ ! -f "$CONSTRAINT" ]; then
    echo "no constraint file found"
    exit
fi

env LC_ALL=C v++ \\
  --link \\
  --output "${output_dir}/${TOP}_${PLATFORM}.xclbin" \\
  --kernel ${TOP} \\
  --platform ${PLATFORM} \\
  --target hw \\
  --report_level 2 \\
  --temp_dir "${output_dir}/${TOP}_${PLATFORM}.temp" \\
  --optimize 3 \\
  --connectivity.nk ${TOP}:1:${TOP}_1 \\
  --max_memory_ports ${TOP} \\
  --save-temps \\
  ${XO} \\
  --connectivity.sp ${TOP}_1.A:DDR[0] \\
  --connectivity.sp ${TOP}_1.B:DDR[1] \\
  --connectivity.sp ${TOP}_1.C:DDR[2] \\
  --kernel_frequency %s \\
  --vivado.prop run.impl_1.STEPS.OPT_DESIGN.TCL.PRE=$CONSTRAINT
''' % (TOP_FUNC, TARGET_FREQ)

PE_TEMPLATE = \
'''
void %s (int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out){
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
    #pragma HLS RESOURCE variable=local_C core=RAM_2P_BRAM
    /* Variable Declaration */

    {
      // array
      // pe
      // latency
      for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
        for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
        #pragma HLS PIPELINE II=1
          // simd
          // hls_unroll
          local_C[c7][c6] = 0;
        }
      }
      // array
      // pe
      for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
          #pragma HLS PIPELINE II=1
        // latency
        for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
          // latency
          for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            {
              {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                for (ap_uint<4> n = 0; n < 8; n++) {
                #pragma HLS UNROLL
                    union {unsigned int ui; float ut;} u;
                    u.ui = (unsigned int)fifo_data(31, 0);
                    local_A[0][n] = u.ut;
                    fifo_data = fifo_data >> 32;
                }
              }
              {
                B_t8 fifo_data;
                fifo_data = fifo_B_in.read();
                for (ap_uint<4> n = 0; n < 8; n++) {
                #pragma HLS UNROLL
                    union {unsigned int ui; float ut;} u;
                    u.ui = (unsigned int)fifo_data(31, 0);
                    local_B[0][n] = u.ut;
                    fifo_data = fifo_data >> 32;
                }
              }
              // simd
              for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
              #pragma HLS UNROLL
                local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
              }
              if (c5 == 31)
                fifo_C_drain_out.write(local_C[c7][c6]);
              {
                B_t8 fifo_data;
                union {unsigned int ui; float ut;} u7, u6, u5, u4, u3, u2, u1, u0;
                u7.ut = local_B[0][7];
                u6.ut = local_B[0][6];
                u5.ut = local_B[0][5];
                u4.ut = local_B[0][4];
                u3.ut = local_B[0][3];
                u2.ut = local_B[0][2];
                u1.ut = local_B[0][1];
                u0.ut = local_B[0][0];
                fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                fifo_B_out.write(fifo_data);
              }
              {
                A_t8 fifo_data;
                union {unsigned int ui; float ut;} u7, u6, u5, u4, u3, u2, u1, u0;
                u7.ut = local_A[0][7];
                u6.ut = local_A[0][6];
                u5.ut = local_A[0][5];
                u4.ut = local_A[0][4];
                u3.ut = local_A[0][3];
                u2.ut = local_A[0][2];
                u1.ut = local_A[0][1];
                u0.ut = local_A[0][0];
                fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                fifo_A_out.write(fifo_data);
              }
            }
          }
        }
      }
    }
}
'''

class BASH:
    CLANG_FORMAT = 'clang-format %s -style="{ BreakBeforeBraces: Attach, BinPackParameters: false, IndentWidth: 4, TabWidth: 4, ColumnLimit: 10000, AllowShortBlocksOnASingleLine:  false, AllowShortFunctionsOnASingleLine: false, AllowShortIfStatementsOnASingleLine: false, AllowShortLoopsOnASingleLine: false, AlwaysBreakTemplateDeclarations: true }" > %s' 
    GET_PRAGMA = 'grep "#pragma HLS" {} -i | cut -d " " -f 3 | sort | uniq -i'.format(TOP_FILE)

class PRAGMA_PARA:
    UR = ["factor = "] # UNROLL
    AP = ["variable = ", "cyclic", "block", "complete", "factor = ", "dim = "] # ARRAY_PARTITION
    PL = ["ii = ", "off", "rewind"] # PIPELINE

def init_directives_then_dump_src_and_tcl():
    func_name = ""
    loop_label = ""
    func_count = 0
    loop_count = 0
    loop_bound = 0
    func_or_loop = -1 # -1 as default, 0 for func, 1 for loop
                      # it represents the last closest line is a func or a loop
    with open(TOP_FILE, "r") as src_file, open(DUT_FILE, "w") as dst_file:
        lines = src_file.readlines()
        for i in range(len(lines)):
            # print(lines[i])
            if re.match('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i]):
                func_name = re.search('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)', lines[i]).group(2) # get function name for directive setting
                # print(func_name)
                func_count += 1
                func_or_loop = 0
                dst_file.write(lines[i])
            # elif re.match('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]):
            #     regex_groups = re.search('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]).groups()
            elif re.match('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*.*)', lines[i]):
                regex_groups = re.search('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*.*)', lines[i]).groups()
                
                loop_count += 1
                func_or_loop = 1

                # Add loop label
                loop_label = regex_groups[1]
                # loop_label = re.search('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*([0-9]+).*\{)', lines[i]).group(2)
                if loop_label is None:
                    loop_label = 'loop_{}'.format(loop_count)
                    lines[i] = loop_label + ": " + lines[i]
                else:
                    loop_label = loop_label.rstrip(':')
                
                # Get loop bound
                # loop_bound = int(regex_groups[4]) if regex_groups[3] == "<" else int(regex_groups[4]) + 1
                # print(loop_count)
                # print(regex_groups)
                # print(loop_label, lines[i])
                # print(loop_bound)
                # print()
                dst_file.write(lines[i])
            elif lines[i].startswith("#pragma"):
                # Any pragma will be attached to some function or loop, so assert `name not empty`
                pragma_name = lines[i].lower().split()[2]
                # process_pragma_to_directives(directives, pragma_name, func_name, loop_label, func_or_loop)

                if pragma_name == "unroll":
                    assert func_or_loop == 1 # 'unroll' should be in a loop, or the parser is malfunctioning
                    directives["unroll"].append({"factor":1, "func_name":func_name, "loop_label":"/"+loop_label})
                elif pragma_name == "pipeline":
                    assert func_or_loop == 0 or func_or_loop == 1
                    if func_or_loop == 0:
                        directives["pipeline"].append({"II":1, "off":0, "rewind":0, "func_name":func_name, "loop_label":""})
                    elif func_or_loop == 1:
                        directives["pipeline"].append({"II":1, "off":0, "rewind":0, "func_name":func_name, "loop_label":"/"+loop_label})
                # elif pragma_name == "array_partition":  # assume that all AP pragma is written below the array definition
                #     array_name = re.split('[ ]|\[', lines[i-1].strip())[1]
                #     # print(array_name, lines[i-1])
                #     directives["array_partition"].append({"type":0, "dim":0, "factor":1, "func_name":func_name, "array_name":array_name})
                else:
                    dst_file.write(lines[i])
                    
                # dst_file.write(lines[i])
            elif re.fullmatch('[a-zA-Z_0-9]+[ ]*:', lines[i].strip()):
                # print(lines[i])
                pass    # pass all the existing loop labels and use my own customized labels
            else:
                # print(lines[i])
                dst_file.write(lines[i])
            
    print("Function Count:", func_count)
    print("Loop Count:", loop_count)

    # dump_directives_to_tcl()

def parseFunctionsAndLoops(src_file_name, dst_file_name, directives):
    func_name = ""
    loop_label = ""
    func_count = 0
    total_loop_count = 0
    loop_count = 0
    loop_bound = 0
    func_or_loop = -1 # -1 as default, 0 for func, 1 for loop
                      # it represents the last closest line is a func or a loop
    with open(src_file_name, "r") as src_file, open(dst_file_name, "w") as dst_file:
        lines = src_file.readlines()
        for i in range(len(lines)):
            # print(lines[i])
            if re.match('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)\(.*(,[ ]*\n|\{)', lines[i]):
                func_name = re.search('([a-zA-Z_0-9]+[ ]+)([a-zA-Z_0-9]+)', lines[i]).group(2) # get function name for directive setting
                # print(func_name)
                func_count += 1
                loop_count = 0
                func_or_loop = 0
                # directives["pipeline"].append({"II":1, "off":1, "rewind":0, "func_name":func_name, "loop_label":""})
                dst_file.write(lines[i])
            elif re.match('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]):
                regex_groups = re.search('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*([0-9]+).*)', lines[i]).groups()
            # elif re.match('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*.*)', lines[i]):
            #     regex_groups = re.search('([ ]*)([a-zA-Z_0-9]+:)?([ ]*for[ ]*\(.*(<|<=)[ ]*.*)', lines[i]).groups()
                # print(i + 1, lines[i])  # line num, and line content
                loop_count += 1
                total_loop_count += 1
                func_or_loop = 1

                # Add loop label
                loop_label = regex_groups[1]
                if loop_label is None:
                    loop_label = '{}_loop_{}'.format(func_name, loop_count)
                    lines[i] = loop_label + ": " + lines[i]
                else:
                    loop_label = loop_label.rstrip(':')
                
                # Get loop bound
                loop_bound = int(regex_groups[4]) if regex_groups[3] == "<" else int(regex_groups[4]) + 1
                directives["unroll"].append({"factor":1, "bound":loop_bound, "func_name":func_name, "loop_label":"/"+loop_label})
                directives["pipeline"].append({"II":1, "off":1, "rewind":0, "func_name":func_name, "loop_label":"/"+loop_label})
                dst_file.write(lines[i])
            elif lines[i].startswith("#pragma"):
                # Any pragma will be attached to some function or loop, so assert `name not empty`
                pragma_name = lines[i].lower().split()[2]
                # ! Those passed won't be written into DUT file.
                if pragma_name == "unroll":
                    assert func_or_loop == 1 # 'unroll' should be in a loop, or the parser is malfunctioning
                    # directives["unroll"].append({"factor":1, "func_name":func_name, "loop_label":"/"+loop_label})
                    pass
                elif pragma_name == "pipeline":
                    assert func_or_loop == 0 or func_or_loop == 1
                    # if func_or_loop == 0:
                    #     directives["pipeline"].append({"II":1, "off":0, "rewind":0, "func_name":func_name, "loop_label":""})
                    # elif func_or_loop == 1:
                    #     directives["pipeline"].append({"II":1, "off":0, "rewind":0, "func_name":func_name, "loop_label":"/"+loop_label})
                    pass
                elif pragma_name == "array_partition":  # assume that all AP pragma is written below the array definition
                    # array_name = re.split('[ ]|\[', lines[i-1].strip())[1]
                    # # print(array_name, lines[i-1])
                    # directives["array_partition"].append({"type":0, "dim":0, "factor":1, "func_name":func_name, "array_name":array_name})
                    pass
                else:
                    dst_file.write(lines[i])
                    
            elif re.fullmatch('[a-zA-Z_0-9]+[ ]*:', lines[i].strip()):
                pass    # pass all the existing loop labels and use my own customized labels
            else:
                # print(lines[i])
                dst_file.write(lines[i])
            
    print("Function Count:", func_count)
    print("Total For Loop Count:", total_loop_count)

          
def parseUserConstraints(abconfig, board:DeviceBase, graph:DataflowGraph, slot_manager:SlotManager):
    user_constraint_s2v = defaultdict(list)
    
    # FIXME: originally constrain the s_axi_control to SLR 0, should it be flexible?
    CONTROL_S_AXI_LOCATION = 1 # DLF

    if "BundleToDDRMapping" in abconfig:
        # 1. properly constrain the interface modules
        for bundle, ddr in abconfig["BundleToDDRMapping"].items():
            ddr_pblock = board.getDDRPblock(ddr)
            slot = slot_manager.createSlot(ddr_pblock)
            v_name = f'{bundle}_m_axi_U' # {TOP_FUNC}_...
            try:
                v = graph.getVertex(v_name)
            except:
                logging.error(f'Naming convention of interface modules has changed!')
                logging.error(v_name)
                logging.error(graph.vertices)
                exit(1)

            user_constraint_s2v[slot].append(v)
            logging.info(f'Constrain interface module {v_name} to {ddr_pblock}')

        # 2. constrain the s_axi_control
        s_axi_slot = slot_manager.createSlot(board.getDDRPblock(CONTROL_S_AXI_LOCATION))
        try:
            s_axi_vertex = graph.getVertex(f'control_s_axi_U') # {TOP_FUNC}_...
        except:
            logging.error(f'Naming convention of s_axi_control has changed!')
            logging.error(graph.vertices)
            exit(1)
        user_constraint_s2v[s_axi_slot].append(s_axi_vertex)
        logging.info(f'Constrain s_axi_control {v_name} to {board.getDDRPblock(CONTROL_S_AXI_LOCATION)}')

    # "Floorplan" : "CLOCKREGION_X0Y0:CLOCKREGION_X7Y7" restricts all vertices into the lower half of the board
    # only gmem_C_m_axi_U and the grouped function is mapped into the upper half in current implementation
    if "Floorplan" in abconfig:
        print("User 'Floorplan'!!!")
        region = abconfig["Floorplan"]
        slot = slot_manager.createSlot(region)
        for v in graph.getAllVertices():
            if "axi_U" not in v.name and v.name != "C_drain_IO_L3_out_serialize_x1_U0":   # ! gmem_C_m_axi_U on the other die, so the grouped signal is excluded
                user_constraint_s2v[slot].append(graph.getVertex(v.name))
            else:
                logging.info("v.name: {} not constrained in X0Y0-X7Y7".format(v.name))
        # for region, v_name_group in user_fp_json.items():
        #     slot = slot_manager.createSlot(region)
        #     for v_name in v_name_group:
        #         user_constraint_s2v[slot].append(graph.getVertex(v_name))

    return user_constraint_s2v

def loggingSetup():
    root = logging.getLogger()
    root.setLevel(logging.DEBUG)
    formatter = logging.Formatter("[%(levelname)s: %(funcName)25s() ] %(message)s")
    
    debug_file_handler = logging.FileHandler(filename='fado-debug.log', mode='w')
    debug_file_handler.setLevel(logging.DEBUG)
    info_file_handler = logging.FileHandler(filename='fado-info.log', mode='w')
    info_file_handler.setLevel(logging.INFO)
    stdout_handler = logging.StreamHandler(sys.stdout)
    stdout_handler.setLevel(logging.INFO)

    handlers = [debug_file_handler, info_file_handler, stdout_handler]
    for handler in handlers:
        handler.setFormatter(formatter)
        root.addHandler(handler) 


def runFloorplanning(
    abconfig,
    board, 
    graph, 
    user_constraint_s2v, 
    slot_manager, 
    hls_prj_manager:HLSProject,
    top_rtl_parser:TopRTLParser,
    grouping_constraints=[]):

    grouping_constraints += top_rtl_parser.getStrictGroupingConstraints()
    
    floorplan = Floorplanner(
        graph, 
        user_constraint_s2v, 
        slot_manager=slot_manager, 
        total_usage=hls_prj_manager.getTotalArea(), 
        board=board,
        user_max_usage_ratio=abconfig['AreaUtilizationRatio'],
        grouping_constraints=grouping_constraints)
    
    if 'FloorplanMethod' in abconfig:
        choice = abconfig['FloorplanMethod']
        if choice == 'IterativeDivisionToFourCRs':
            floorplan.naiveFineGrainedFloorplan()
        elif choice == 'IterativeDivisionToHalfSLR':
            floorplan.coarseGrainedFloorplan()
            # floorplan.topologicalSort()   # topological sort, haven't decided yet
        elif choice == 'IterativeDivisionToTwoCRs':
            floorplan.naiveTwoCRGranularityFloorplan()
        elif choice == 'EightWayDivisionToHalfSLR':
            floorplan.eightWayPartition()
        else:
            assert False, f'unsupported floorplan method: {choice}'
    else:
        # floorplan.coarseGrainedFloorplan() # by default
        # floorplan.topologicalSort()   # topological sort, haven't decided yet
        # floorplan.adjacentFloorplan()
        pass

    # floorplan.printFloorplan()
    return floorplan

def draw_dataflow_graph(graph:DataflowGraph):
    dg = Digraph("cnn")
    dg.graph_attr["dpi"] = '200'
    
    # 1. Draw modules (PEs and IOs)
    for v_node in graph.top_rtl_parser.traverseVertexInAST():
        if v_node.name in graph.hls_prj_manager.getSubInst(): # exclude those sub-functions' name
            logging.debug("Excluding module {} - name {}".format(v_node.module, v_node.name))
            continue
        if len(graph.vertices[v_node.name].in_edge_names) + len(graph.vertices[v_node.name].out_edge_names) == 0:
            dg.node("{}".format(v_node.name), shape="ellipse", color="red", style="filled")
        else:
            dg.node("{}".format(v_node.name), shape="ellipse", color="cyan2", style="filled")
    # 2. Draw FIFOs
    for e_node in graph.top_rtl_parser.traverseEdgeInAST():
        dg.node("{}".format(e_node.name), shape="box", color="green2", style="filled")
    # 3. Connect modules and FIFOs
    for v_node in graph.top_rtl_parser.traverseVertexInAST():
        if v_node.name in graph.hls_prj_manager.getSubInst():
            logging.debug("Excluding module {} - name {}".format(v_node.module, v_node.name))
            continue
        # print("Vertex {}\nIn: {}\nOut: {}".format(v_node.name, graph.vertices[v_node.name].in_edge_names, graph.vertices[v_node.name].out_edge_names))
        for in_edge_name in graph.vertices[v_node.name].in_edge_names:
            dg.edge(in_edge_name, v_node.name)
            
        for out_edge_name in graph.vertices[v_node.name].out_edge_names:
            dg.edge(v_node.name, out_edge_name)
    # 4. Draw grouping
    with dg.subgraph(name="grouping") as dg_group:
        print(dg_group.edge_attr.update({"dir":"none", "penwidth":"5"}))
        for each_pair in graph.top_rtl_parser.getStrictGroupingConstraints():
            dg_group.edge(each_pair[0], each_pair[1])

    dg.save()
    print("Drawing dataflow graph...")
    dg.render('cnn', view=False, format='png') # , engine="fdp"



    

if __name__ == "__main__":
    # clang-format unify source code format ---
    # # --- parse all pragma we have ---
    # src_file = os.popen(BASH.GET_PRAGMA)
    # pragmas = [_.lower() for _ in src_file.read().splitlines()]
    # print(pragmas)
    #
    # global directives
    directives = {"unroll": [], "pipeline": [], "array_partition": [], "allocation": [], "bind_storage": []}
    
    
    print("========= -1. Generating PE Indices =========")
    if "-1" in sys.argv:    
        pre_pe_name = ""
        with open(SRC_FILE, "r") as src_f, open("pe_def.cpp", 'w') as pe_def_f:
            src_text = src_f.read()
            pe_names = [_[1].replace("_wrapper", "") for _ in re.findall(r"(void[ ]+)(PE_wrapper_\d+_\d+)", src_text)]
            print(pe_names)
            print(len(pe_names))
            for pe_name in pe_names:
                temp_def = PE_TEMPLATE % (pe_name)
                pe_def_f.write(temp_def)
    else:
        print("Skipped...")
    
    print("========= 0. Dump SRC and PRAGMA =========")
    if "0" in sys.argv:
        print(BASH.CLANG_FORMAT % (SRC_FILE, TOP_FILE))
        os.system(BASH.CLANG_FORMAT % (SRC_FILE, TOP_FILE))
        # init_directives_then_dump_src_and_tcl()
        parseFunctionsAndLoops(TOP_FILE, DUT_FILE, directives)
        # dump_directives_to_tcl(DIRECTIVE_FILE, directives)
    else:
        print("Skipped...")
        
    print("========= 1. Invoke Vitis HLS Flow =========")
    if "1" in sys.argv:
        run_hls(
            DUT_FILE,
            TOP_FUNC,
            SOLUTION,
            "" if BOARD_PART.upper() == "U250" else "#",
            "" if BOARD_PART.upper() == "U280" else "#",
            "directives.tcl",
            TARGET_FREQ,
            False
        )
    else:
        print("Skipped...")

    print("========= 2. AutoBridge Flow =========")
    if "2" in sys.argv:
        # # Read HLS project and do ILP
        print("> 1. Handling HLS Project")
        abconfig = json.loads(ABCONFIG)
        if "BundleToDDRMapping" in abconfig:
            # reserve area for ddrs
            ddr_list = list(set(abconfig["BundleToDDRMapping"].values()))
            assert len(ddr_list) == len(abconfig["BundleToDDRMapping"].values())
            device = Device(BOARD_PART, ddr_list)
        else:
            device = Device(BOARD_PART, [])
        board = device.getBoard()
        loggingSetup()
            
        hls_prj = HLSProject(
            TOP_FUNC,                   # Top function's name
            "./{}".format(TOP_FUNC),    # HLS Project folder name, same with top function's name
            SOLUTION                    # HLS solution name
        )
        print("> 2. Parsing TOP RTL(.v)")
        top_rtl_path = hls_prj.getTopRTLPath()
        print("Top RTL: {}".format(top_rtl_path))
        sub_rtl_paths = hls_prj.getSubRTLPath()
        print("Sub RTLs: {}".format(sub_rtl_paths))
        sub_inst = hls_prj.getSubInst()
        print("Sub Instances: {}".format(sub_inst))
        # exit(0)
        top_rtl_parser = TopRTLParser(top_rtl_path, sub_rtl_paths, sub_inst)
        # codegen = ASTCodeGenerator()
        # result = codegen.visit(top_rtl_parser.top_module_ast)
        # temp = result.split("\n")
        # # print(temp[0], temp[1], temp[-2], temp[-1])
        # print(temp[-100:-1])
        print("> 3. Create Dataflow Graph")
        graph = DataflowGraph(hls_prj, top_rtl_parser)
        # draw_dataflow_graph(graph)
        # logging.info([_.name for _ in graph.getAllVertices()])
        # exit(0)
        # Test regex for all functions
        '''
        with open("To_build_DSE_lib.txt", 'w') as temp_f:
            for v_node in graph.top_rtl_parser.traverseVertexInAST():
                temp_f.write("{}\n".format(v_node.name))
        '''
        print("> 4. Create Board Slot (SLR) Manager")
        slot_manager = SlotManager(board)
        print("> 5. Create User Constraints")
        user_constraint_s2v = parseUserConstraints(abconfig, board, graph, slot_manager)
        print("> 6. Global ILP Floorplanning")
        floorplan = runFloorplanning(abconfig, board, graph, user_constraint_s2v, slot_manager, hls_prj, top_rtl_parser)
        print("> 7. Global Routing")
        global_router = GlobalRouting(floorplan, top_rtl_parser, slot_manager)
        print("> 8. Latency Balancing")
        rebalance = LatencyBalancing(graph, floorplan, global_router)
        '''
        # print("> 9. Incremental Floorplan, Routing and FIFO Injection")
        # if floorplan.getVertexNameToSlot()["PE_wrapper_11_6_U0"].getName() == "CLOCKREGION_X4Y8:CLOCKREGION_X7Y11":
        #     print("Ouch!")
        #     exit(1)
        # else:
        #     print(floorplan.getVertexNameToSlot()["PE_wrapper_11_6_U0"].getName())
        # temp_vname_to_dst_slot = {"PE_wrapper_11_6_U0": "CLOCKREGION_X4Y8:CLOCKREGION_X7Y11"}
        # floorplan.preprocessEmptySlots()
        # floorplan.incrementalFloorplan(temp_vname_to_dst_slot)
        # global_router = GlobalRouting(floorplan, top_rtl_parser, slot_manager)
        # rebalance = LatencyBalancing(graph, floorplan, global_router)
        print("> 10. Generate New RTL")
        if not sub_rtl_paths:
            print("New RTL in ./{}".format(top_rtl_parser.getTopModuleName()))
            generate_new_rtl_top(top_rtl_parser.top_module_ast, graph.getNameToEdgeMap(), top_rtl_parser.getTopModuleName(), floorplan, False)
            # cmd_str = "rm {}/{}/syn/verilog/{}; cp {} {}/{}/syn/verilog/{}".format(TOP_FUNC, SOLUTION, top_rtl_parser.getTopModuleName(), 
            #                                     top_rtl_parser.getTopModuleName(), TOP_FUNC, SOLUTION, top_rtl_parser.getTopModuleName())
            # print(cmd_str)
            # os.system(cmd_str)
        else:
            print(sub_rtl_paths)
            for sub_rtl_path in sub_rtl_paths:
                print("New RTL in ./{}".format(top_rtl_parser.getModuleName(sub_rtl_path)))
                generate_new_rtl_top(top_rtl_parser.rtl_parse_path(sub_rtl_path), graph.getNameToEdgeMap(), top_rtl_parser.getModuleName(sub_rtl_path), floorplan, True)
                
        print("> 11. Generate Floorplanning TCL Constraints")
        top_nodes = [_.name for _ in top_rtl_parser.traverseVertexInTopAST()]
        # print(top_nodes)
        generate_floorplan_constraints(floorplan, global_router, top_nodes, len(sub_rtl_paths))
        # generate_topofloorplan_constraints(floorplan)
        '''
    else:
        print("Skipped...")
    
    with open("pack_xo.tcl", "w") as xo_f:
        xo_f.write(PACK_XO_TCL_TEXT+"\n")
    print("========= 3. Packing XO =========")
    if "3" in sys.argv:
        os.system('faketime "2020-03-01" vitis_hls -f pack_xo.tcl')
    else:
        print("Skipped...")
        
    with open("run_vitis.sh", "w") as vitis_f:
        vitis_f.write(VITIS_TCL_TEXT)
    print("========= 4. Vitis Flow =========")
    if "4" in sys.argv:
        os.system('chmod 777 run_vitis.sh')
        os.system('./run_vitis.sh')
    else:
        print("Skipped...")
    
    print("========= 5. clang-format dut without pragma =========")
    if "5" in sys.argv:
        os.system(BASH.CLANG_FORMAT % (DUT_FILE, TOP_FILE))
    else:
        print("Skipped...")
        
    print("========= 6. Func Def&Call Replication =========")
    if "6" in sys.argv:
        REPLICATION_TIMES = 10  # replicate 10 kernels 
        DEFINITION_FILE = "mm_def.cpp"
        print("Writting to '{}': {}x template(s).".format(DEFINITION_FILE, REPLICATION_TIMES))
        codes_ = [""] * REPLICATION_TIMES
        regex_func_def = re.compile("^(void[ ]+)([A-Za-z0-9_]+[ ]*)(\(.*)")
        regex_func_call = re.compile("^([ ]*)([A-Za-z0-9_]+[ ]*)(\([^)]*)$")
        regex_fifo_def = re.compile("^([ ]+/\*[ ]+[A-Za-z0-9_]+[ ]+fifo[ ]+\*/[ ]*)(hls::stream<.*>[ ]+)([A-Za-z0-9_]+)(;.*)")
        regex_fifo_pragma = re.compile("^[ ]*(#pragma[ ]+HLS[ ]+STREAM[ ]+variable[ ]*=[ ]*)([A-Za-z0-9_]+)(.*)")
        regex_fifo_resource_pragma = re.compile("^[ ]*(#pragma[ ]+HLS[ ]+RESOURCE[ ]+variable[ ]*=[ ]*)([A-Za-z0-9_]+)(.*)")
        regex_fifo_call = re.compile("^([ ]+/\*[ ]+fifo[ ]+\*/[ ]*)(fifo_[A-Za-z0-9_]+)(.*)")
        with open("mm_template.cpp", "r") as src_template:
            lines = src_template.readlines()
            # func_defs = [_ for _ in lines if regex_func_def.match(_)]
            # print(len(func_defs))
            in_kernel = 0
            for i in range(len(lines)):
                if regex_func_def.match(lines[i]):
                    # to search for fifos in "kernel"
                    if lines[i].find("kernel") != -1:
                        in_kernel = 1
                    else:
                        in_kernel = 0
                    re_search_result = re.search(regex_func_def, lines[i])
                    for j in range(REPLICATION_TIMES):
                        codes_[j] += re_search_result.group(1) + re_search_result.group(2).strip() + "_x{}".format(j) + re_search_result.group(3) + "\n"
                elif regex_func_call.match(lines[i]):
                    re_search_result = re.search(regex_func_call, lines[i])
                    for j in range(REPLICATION_TIMES):
                        codes_[j] += re_search_result.group(1) + re_search_result.group(2).strip() + "_x{}".format(j) + re_search_result.group(3) + "\n"
                elif regex_fifo_def.match(lines[i]):
                    re_search_result = re.search(regex_fifo_def, lines[i])
                    for j in range(REPLICATION_TIMES):
                        codes_[j] += re_search_result.group(1) + re_search_result.group(2) + re_search_result.group(3) + "_x{}".format(j) + re_search_result.group(4) + "\n"
                elif regex_fifo_pragma.match(lines[i]):
                    re_search_result = re.search(regex_fifo_pragma, lines[i])
                    for j in range(REPLICATION_TIMES):
                        codes_[j] += re_search_result.group(1) + re_search_result.group(2) + "_x{}".format(j) + re_search_result.group(3) + "\n"
                elif regex_fifo_resource_pragma.match(lines[i]):
                    re_search_result = re.search(regex_fifo_resource_pragma, lines[i])
                    for j in range(REPLICATION_TIMES):
                        codes_[j] += re_search_result.group(1) + re_search_result.group(2) + "_x{}".format(j) + re_search_result.group(3) + "\n"
                elif regex_fifo_call.match(lines[i]):
                    re_search_result = re.search(regex_fifo_call, lines[i])
                    if in_kernel == 1:
                        for j in range(REPLICATION_TIMES):
                            codes_[j] += re_search_result.group(1) + re_search_result.group(2) + "_x{}".format(j) + re_search_result.group(3) + "\n"
                    else:
                        for j in range(REPLICATION_TIMES):
                            codes_[j] += lines[i]
                else:
                    for j in range(REPLICATION_TIMES):
                        codes_[j] += lines[i]
        with open(DEFINITION_FILE, "w") as cnn_def:
            cnn_def.write("\n".join(codes_))
    else:
        print("Skipped...")
        

    print("========= 7. Preprocessing -- Build DSE latency-resource lib =========")
    if "7" in sys.argv:
        loggingSetup()
        # put the unit functions in dse_lib_raw.cpp, and run this part.
        os.system(BASH.CLANG_FORMAT % ("dse_lib_raw.cpp", "dse_lib_raw_format.cpp"))
        # ignore directives, this is just to clean the source file.
        parseFunctionsAndLoops("dse_lib_raw_format.cpp", DSE_LIB_SRC, directives)
        # exit(0)
        dse_lib = DSELib(SOLUTION, BOARD_PART, TARGET_FREQ, DSE_LIB_SRC, DSE_LIB_JSON)
        # dse_lib.gen_memory_lib()
        # dse_lib.gen_main_lib()
        dse_lib.preprocessing()
                 
    else:
        print("Skipped...")

    print("========= 8. Drawing Design Space =========")
    if "8" in sys.argv:
        loggingSetup()
        # All functions from [_.name for _ in graph.getAllVertices()]
        funcs = ['control_s_axi_U', 'gmem_A_m_axi_U', 'gmem_B_m_axi_U', 'gmem_C_m_axi_U', 'temp_xout0_V_U', 'temp_xin1_V_U', 'grp_nondf_kernel_2mm_fu_114', 'kernel3_x0_entry38_U0', 'A_IO_L3_in_x0_U0', 'A_IO_L2_in_0_x0_U0', 'A_IO_L2_in_1_x0_U0', 'A_IO_L2_in_2_x0_U0', 'A_IO_L2_in_3_x0_U0', 'A_IO_L2_in_4_x0_U0', 'A_IO_L2_in_5_x0_U0', 'A_IO_L2_in_6_x0_U0', 'A_IO_L2_in_7_x0_U0', 'A_IO_L2_in_8_x0_U0', 'A_IO_L2_in_9_x0_U0', 'A_IO_L2_in_10_x0_U0', 'A_IO_L2_in_11_x0_U0', 'A_IO_L2_in_boundary_x0_U0', 'B_IO_L3_in_x0_U0', 'B_IO_L2_in_x0_U0', 'B_IO_L2_in_boundary_x0_U0', 'PE_wrapper_0_0_x0_U0', 'PE_wrapper_0_1_x0_U0', 'PE_wrapper_1_0_x0_U0', 'PE_wrapper_1_1_x0_U0', 'PE_wrapper_2_0_x0_U0', 'PE_wrapper_2_1_x0_U0', 'PE_wrapper_3_0_x0_U0', 'PE_wrapper_3_1_x0_U0', 'PE_wrapper_4_0_x0_U0', 'PE_wrapper_4_1_x0_U0', 'PE_wrapper_5_0_x0_U0', 'PE_wrapper_5_1_x0_U0', 'PE_wrapper_6_0_x0_U0', 'PE_wrapper_6_1_x0_U0', 'PE_wrapper_7_0_x0_U0', 'PE_wrapper_7_1_x0_U0', 'PE_wrapper_8_0_x0_U0', 'PE_wrapper_8_1_x0_U0', 'PE_wrapper_9_0_x0_U0', 'PE_wrapper_9_1_x0_U0', 'PE_wrapper_10_0_x0_U0', 'PE_wrapper_10_1_x0_U0', 'PE_wrapper_11_0_x0_U0', 'PE_wrapper_11_1_x0_U0', 'PE_wrapper_12_0_x0_U0', 'PE_wrapper_12_1_x0_U0', 'A_PE_dummy_0_x0_U0', 'A_PE_dummy_1_x0_U0', 'A_PE_dummy_2_x0_U0', 'A_PE_dummy_3_x0_U0', 'A_PE_dummy_4_x0_U0', 'A_PE_dummy_5_x0_U0', 'A_PE_dummy_6_x0_U0', 'A_PE_dummy_7_x0_U0', 'A_PE_dummy_8_x0_U0', 'A_PE_dummy_9_x0_U0', 'A_PE_dummy_10_x0_U0', 'A_PE_dummy_11_x0_U0', 'A_PE_dummy_12_x0_U0', 'B_PE_dummy_0_x0_U0', 'B_PE_dummy_1_x0_U0', 'C_drain_IO_L1_out_boundary_0_x0_U0', 'C_drain_IO_L1_out_0_x0_U0', 'C_drain_IO_L1_out_1_x0_U0', 'C_drain_IO_L1_out_2_x0_U0', 'C_drain_IO_L1_out_3_x0_U0', 'C_drain_IO_L1_out_4_x0_U0', 'C_drain_IO_L1_out_5_x0_U0', 'C_drain_IO_L1_out_6_x0_U0', 'C_drain_IO_L1_out_7_x0_U0', 'C_drain_IO_L1_out_8_x0_U0', 'C_drain_IO_L1_out_9_x0_U0', 'C_drain_IO_L1_out_10_x0_U0', 'C_drain_IO_L1_out_11_x0_U0', 'C_drain_IO_L1_out_boundary_1_x0_U0', 'C_drain_IO_L1_out_12_x0_U0', 'C_drain_IO_L1_out_13_x0_U0', 'C_drain_IO_L1_out_14_x0_U0', 'C_drain_IO_L1_out_15_x0_U0', 'C_drain_IO_L1_out_16_x0_U0', 'C_drain_IO_L1_out_17_x0_U0', 'C_drain_IO_L1_out_18_x0_U0', 'C_drain_IO_L1_out_19_x0_U0', 'C_drain_IO_L1_out_20_x0_U0', 'C_drain_IO_L1_out_21_x0_U0', 'C_drain_IO_L1_out_22_x0_U0', 'C_drain_IO_L1_out_23_x0_U0', 'C_drain_IO_L2_out_boundary_x0_U0', 'C_drain_IO_L2_out_x0_U0', 'C_drain_IO_L3_out_x0_U0', 'kernel3_x1_entry31_U0', 'kernel3_x1_entry42_U0', 'A_IO_L3_in_x1_U0', 'A_IO_L2_in_0_x1_U0', 'A_IO_L2_in_1_x1_U0', 'A_IO_L2_in_2_x1_U0', 'A_IO_L2_in_3_x1_U0', 'A_IO_L2_in_4_x1_U0', 'A_IO_L2_in_5_x1_U0', 'A_IO_L2_in_6_x1_U0', 'A_IO_L2_in_7_x1_U0', 'A_IO_L2_in_8_x1_U0', 'A_IO_L2_in_9_x1_U0', 'A_IO_L2_in_10_x1_U0', 'A_IO_L2_in_11_x1_U0', 'A_IO_L2_in_boundary_x1_U0', 'B_IO_L3_in_x1_U0', 'B_IO_L2_in_x1_U0', 'B_IO_L2_in_boundary_x1_U0', 'PE_wrapper_0_0_x1_U0', 'PE_wrapper_0_1_x1_U0', 'PE_wrapper_1_0_x1_U0', 'PE_wrapper_1_1_x1_U0', 'PE_wrapper_2_0_x1_U0', 'PE_wrapper_2_1_x1_U0', 'PE_wrapper_3_0_x1_U0', 'PE_wrapper_3_1_x1_U0', 'PE_wrapper_4_0_x1_U0', 'PE_wrapper_4_1_x1_U0', 'PE_wrapper_5_0_x1_U0', 'PE_wrapper_5_1_x1_U0', 'PE_wrapper_6_0_x1_U0', 'PE_wrapper_6_1_x1_U0', 'PE_wrapper_7_0_x1_U0', 'PE_wrapper_7_1_x1_U0', 'PE_wrapper_8_0_x1_U0', 'PE_wrapper_8_1_x1_U0', 'PE_wrapper_9_0_x1_U0', 'PE_wrapper_9_1_x1_U0', 'PE_wrapper_10_0_x1_U0', 'PE_wrapper_10_1_x1_U0', 'PE_wrapper_11_0_x1_U0', 'PE_wrapper_11_1_x1_U0', 'PE_wrapper_12_0_x1_U0', 'PE_wrapper_12_1_x1_U0', 'A_PE_dummy_0_x1_U0', 'A_PE_dummy_1_x1_U0', 'A_PE_dummy_2_x1_U0', 'A_PE_dummy_3_x1_U0', 'A_PE_dummy_4_x1_U0', 'A_PE_dummy_5_x1_U0', 'A_PE_dummy_6_x1_U0', 'A_PE_dummy_7_x1_U0', 'A_PE_dummy_8_x1_U0', 'A_PE_dummy_9_x1_U0', 'A_PE_dummy_10_x1_U0', 'A_PE_dummy_11_x1_U0', 'A_PE_dummy_12_x1_U0', 'B_PE_dummy_0_x1_U0', 'B_PE_dummy_1_x1_U0', 'C_drain_IO_L1_out_boundary_0_x1_U0', 'C_drain_IO_L1_out_0_x1_U0', 'C_drain_IO_L1_out_1_x1_U0', 'C_drain_IO_L1_out_2_x1_U0', 'C_drain_IO_L1_out_3_x1_U0', 'C_drain_IO_L1_out_4_x1_U0', 'C_drain_IO_L1_out_5_x1_U0', 'C_drain_IO_L1_out_6_x1_U0', 'C_drain_IO_L1_out_7_x1_U0', 'C_drain_IO_L1_out_8_x1_U0', 'C_drain_IO_L1_out_9_x1_U0', 'C_drain_IO_L1_out_10_x1_U0', 'C_drain_IO_L1_out_11_x1_U0', 'C_drain_IO_L1_out_boundary_1_x1_U0', 'C_drain_IO_L1_out_12_x1_U0', 'C_drain_IO_L1_out_13_x1_U0', 'C_drain_IO_L1_out_14_x1_U0', 'C_drain_IO_L1_out_15_x1_U0', 'C_drain_IO_L1_out_16_x1_U0', 'C_drain_IO_L1_out_17_x1_U0', 'C_drain_IO_L1_out_18_x1_U0', 'C_drain_IO_L1_out_19_x1_U0', 'C_drain_IO_L1_out_20_x1_U0', 'C_drain_IO_L1_out_21_x1_U0', 'C_drain_IO_L1_out_22_x1_U0', 'C_drain_IO_L1_out_23_x1_U0', 'C_drain_IO_L2_out_boundary_x1_U0', 'C_drain_IO_L2_out_x1_U0', 'C_drain_IO_L3_out_x1_U0']
        # Loading DSE lib "data.json"   # DSE_LIB_JSON
        with open(DSE_LIB_JSON, "r") as ds_f:
            data = json.load(ds_f)
            
        # Total area
        TOTAL_AREA = defaultdict()
        TOTAL_AREA['BRAM'] = 5376
        TOTAL_AREA['DSP'] = 12288
        TOTAL_AREA['FF'] = 3456000
        TOTAL_AREA['LUT'] = 1728000
        TOTAL_AREA['URAM'] = 1280
        
        # print(data.keys())
        # 1. Design Space extraction for A single dataflow kernel
        # df_funcs = [_ for _ in funcs if _.find("_x0") != -1]
        logging.info("1. Extracting dataflow kernel's functions...")
        df_funcs = []
        funcs_count = {_:0 for _ in PREFIX_REGEXS_TO_FUNC_LIBNAME.values()}
        for each_func in funcs:
            if each_func.find("_x0") == -1:
                continue
            _found = False
            for each_prefix in PREFIX_REGEXS_TO_FUNC_LIBNAME.keys():
                if re.search(each_prefix, each_func):
                    _found = True
                    funcs_count[PREFIX_REGEXS_TO_FUNC_LIBNAME[each_prefix]] += 1
            if _found:
                df_funcs.append(each_func)
        logging.info(df_funcs)
        logging.info(len(df_funcs))
        
        # Remove redundancy for each function (PE) ---------------------
        logging.info("2. Removing non-pareto-front points of each function")
        data_clean = defaultdict()
        for key in data.keys():
            if key.find("nondf_") != -1:
                continue
            data_clean[key] = []
            data[key] = sorted(data[key],
                key=lambda x: (
                    -x["latency"],
                    max([x[_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
                )
            )   # major: latency large -> small; minor: resource small -> large
            last_latency = math.inf
            last_max_resource = 0
            for each_point in data[key]:
                if each_point["latency"] < last_latency:
                    data_clean[key].append(each_point)
                    last_latency = each_point["latency"]
                    last_max_resource = max([each_point[_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
            data_clean[key].reverse()   # major: latency small -> large; minor: resource large -> small
            # logging.info(data_clean[key])
            # for each_p in data_clean[key]:
            #     logging.info(each_p["latency"])
            #     for each_resource in RESOURCE_TYPES:
            #         logging.info(each_p[each_resource])
            # input()
        
        # Finding the design point for whole dataflow kernel ---------------------
        design_space_df = list()
        data_copy = copy.deepcopy(data_clean)
        last_latency = math.inf
        while True:
            design_space_df.append({})
            data_list = sorted(list(data_clean.items()),
                key=lambda x:(
                    x[1][-1]["latency"],
                    -max([x[1][-1][_]/TOTAL_AREA[_] for _ in RESOURCE_TYPES])
                )                
            )
            # print("Max Latency: {}".format(data_list[-1][1][-1]["latency"]))
            if last_latency > data_list[-1][1][-1]["latency"]:
                last_latency = data_list[-1][1][-1]["latency"]
            else:
                break
            design_space_df[-1]["latency"] = data_list[-1][1][-1]["latency"]
            design_space_df[-1]["area"] = {_:0 for _ in RESOURCE_TYPES}    # init
            # print(funcs_count[data_list[-1][0]])
            # logging.info(data_list[-1][0])
            # logging.info(funcs_count[data_list[-1][0]])
            # logging.info(data_list[-1][1][-1])
            # print(data_list[-1][1][-1])
            for each_resource in RESOURCE_TYPES:
                design_space_df[-1]["area"][each_resource] += funcs_count[data_list[-1][0]] * data_list[-1][1][-1][each_resource]
            for each_template in list(data_copy.keys()):
                if each_template.find("nondf") != -1 or each_template == data_list[-1][0]:
                    continue
                else:
                    # if design_space_df[-1]["latency"] == 39430:
                    #     logging.info("\neach_template: {}".format(each_template))
                    #     logging.info("  drctv: {}".format(data_copy[each_template][-1]["drctv"]))
                    for each_resource in RESOURCE_TYPES:
                        # if design_space_df[-1]["latency"] == 39430:
                        #     logging.info("  {}: {}".format(each_resource, data_copy[each_template][-1][each_resource]))
                        design_space_df[-1]["area"][each_resource] += funcs_count[each_template] * data_copy[each_template][-1][each_resource]
            
            if len(data_clean[data_list[-1][0]]) > 1:
                del data_clean[data_list[-1][0]][-1]
            else:
                break
        logging.info(len(design_space_df))
        logging.info(design_space_df[0])
        logging.info(design_space_df[-1])
        
        # 2. Design Space extraction for non-dataflow kernel
        design_space_nondf = list()
        key = "nondf_kernel_2mm"
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
                last_latency = each_point["latency"]
        design_space_nondf.reverse()   # major: latency small -> large; minor: resource large -> small
        
        logging.info(len(design_space_nondf))
        logging.info(design_space_nondf[0])
        logging.info(design_space_nondf[-1])
        
        # 3. The whole mixed-df-nondf design space
        all_design_points_product = [_ for _ in itertools.product(*[design_space_df, design_space_nondf, design_space_df])]
        # print(len(all_design_points_product))
        # print(all_design_points_product[0])
        all_design_points = []
        for design_point_product in all_design_points_product:
            # all_design_points.append({"latency": sum([])})
            latency_list = [_["latency"] for _ in design_point_product]
            area_list = [_["area"] for _ in design_point_product]
            area_list = {__:sum([_[__] for _ in area_list]) for __ in RESOURCE_TYPES}
            max_area_ratio = max([area_list[_]/TOTAL_AREA[_]*2 for _ in RESOURCE_TYPES])
            if max_area_ratio > 0.7:
                continue
            # print(area_list)
            # print([[_[__] for _ in area_list] for __ in RESOURCE_TYPES])
            # print({__:sum([_[__] for _ in area_list]) for __ in RESOURCE_TYPES})
            all_design_points.append(
                # {
                #     "latency": sum(latency_list),
                #     "area": max_area_ratio
                # }
                (
                    max_area_ratio,
                    sum(latency_list)
                )
            )
        pareto = oapackage.ParetoDoubleLong()
        for i in range(len(all_design_points)):
            w = oapackage.doubleVector((-all_design_points[i][0], -all_design_points[i][1]))
            pareto.addvalue(w, i)
        # pareto.show(verbose=1)
        lst = pareto.allindices()
        pareto_front = np.array(all_design_points)[lst,:]
        pareto_front = np.array(sorted(pareto_front, key = lambda x : x[1]))    # sorted by resource, for drawing the pareto front
        # print(pareto_front.shape)
        # print(pareto_front[:,0])
        
        x = np.array([_[0] for _ in all_design_points])
        y = np.array([_[1] for _ in all_design_points])
        fig = plt.figure(dpi=500)
        ax = fig.add_subplot(111)
        ax.scatter(x, y, s=0.1, marker=",", color="blue", label="Non Pareto-Front Design Points")
        ax.plot(pareto_front[:,0], pareto_front[:,1], markersize=2, marker="o", color="red", linewidth=0.3, label="Pareto-Front Design Points")
        ax.set_xlabel("Max Resource Util")
        ax.set_ylabel("Latency")
        ax.set_title("Design Space of \"CNN*2+2mm*1\" Benchmark")
        ax.legend()
        plt.savefig("ds.png")
    else:
        print("Skipped...")
    
    print("========= 9. DSE =========")
    if "9" in sys.argv:
        if "2" not in sys.argv:
            print("Skipped...\n**Hint**: Please run HLS flow before running DSE. e.g. `python parse.py 2 9`")
            exit(1)
        '''
        drctv_file.write("set_directive_pipeline -II {} {} {} {}{}\n".format(
            d_pipeline["II"],
            "-rewind" if d_pipeline["rewind"] == 1 else "",
            "-off" if d_pipeline["off"] == 1 else "",
            d_pipeline["func_name"],
            d_pipeline["loop_label"]
        ))
        '''
        '''
        indices = range(len(directives["pipeline"]))
        def is_PE(index):
            return True if directives["pipeline"][index]["func_name"].startswith("PE_") else False
        # print(len([_directives["pipeline"]]))
        directives_pipeline_pe_index = list(filter(is_PE, indices))   # all the indices of PIPELINE pragmas in PE
        # for drctv_idx in directives_pipeline_pe_index:
        #     print(directives["pipeline"][drctv_idx])
        r_idx = random.choice(directives_pipeline_pe_index)
        print(directives["pipeline"][r_idx])
        directives["pipeline"][r_idx]["II"] = 2
        for idx in directives_pipeline_pe_index:
            print(directives["pipeline"][idx])
        # exit(0)
        # print(len(directives_pipeline_pe))
        '''
        # dump_directives_to_tcl()
        # run_hls()
        # 1. Topological sort all functions (if sub-sub-func is in dataflow graph, then sub-sub-sub-func are not in dataflow graph), so set them to max-pragma at the beginning. 
        # 2. Pre-run HLS for each function, build a DSE-lib in step 7, which is saved as a json file.
        #       [more latency less resource] -> [less latency more resource]
        # 3. Do DSE with regard to latency in non-decreasing order.
        # 4. How to estimate the timing on single die or multi-die.
        # ! NO NEED TO ESTIMATE NOW.
        # 5. DDR controller using the same die?
        # ! NOT RELEVANT
        
        # template_to_funcs = {_:[] for _ in FUNC_LIBNAME_TO_PREFIX_REGEXS.values()}
        # for v_node in graph.top_rtl_parser.traverseVertexInAST():
        #     for template in template_to_funcs.keys():
        #         if re.search(template, v_node.name):
        #             template_to_funcs[template].append(v_node.name)
        # # print(sum([len(_) for _ in template_to_funcs.values()]))
        # print(template_to_funcs.items())
        
        dse_engine = DSE_mm2mm(board, top_rtl_parser, slot_manager, floorplan, graph, DSE_LIB_JSON, PREFIX_REGEXS_TO_FUNC_LIBNAME, abconfig["AreaUtilizationRatio"], sub_rtl_paths)
        logging.info("DSE strategy: {}".format(DSE_STRATEGY))
        dse_engine.dse(DSE_STRATEGY)
        exit()
        # run_hls(
        #     DUT_FILE,
        #     TOP_FUNC,
        #     SOLUTION,
        #     "" if BOARD_PART.upper() == "U250" else "#",
        #     "" if BOARD_PART.upper() == "U280" else "#",
        #     "directives.tcl",
        #     TARGET_FREQ,
        #     False
        # )
        # TODO: Need to run a full global floorplanning flow here and change to the newly-automatically generated names like "kernel.*entry.*"
        print("> 10. Generate New RTL")
        if not sub_rtl_paths:
            print("New RTL in ./{}".format(top_rtl_parser.getTopModuleName()))
            generate_new_rtl_top(top_rtl_parser.top_module_ast, graph.getNameToEdgeMap(), top_rtl_parser.getTopModuleName(), floorplan, False)
        else:
            print(sub_rtl_paths)
            for sub_rtl_path in sub_rtl_paths:
                print("New RTL in ./{}".format(top_rtl_parser.getModuleName(sub_rtl_path)))
                generate_new_rtl_top(top_rtl_parser.rtl_parse_path(sub_rtl_path), graph.getNameToEdgeMap(), top_rtl_parser.getModuleName(sub_rtl_path), floorplan, True)
                
        print("> 11. Generate Floorplanning TCL Constraints")
        top_nodes = [_.name for _ in top_rtl_parser.traverseVertexInTopAST()]
        # print(top_nodes)
        generate_floorplan_constraints(floorplan, global_router, top_nodes, len(sub_rtl_paths))
        # generate_topofloorplan_constraints(floorplan)
    else:
        print("Skipped...")
    