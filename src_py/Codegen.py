from typing import Dict, List
from Floorplan import Floorplanner

from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
from PipeliningFIFO import convert_fifo, add_keep_hierarcy_pragma
from PipeliningControl import (
  pipeline_ap_rst, 
  pipeline_ap_start, 
  pipeline_ap_done,
  collect_all_ap_done_signals,
  make_ap_ready_equal_to_ap_done,
  make_ap_idle_equal_to_ap_done,
  fix_ap_continue_to_ap_done,
)
from InjectPipelineLogic import (
  get_ap_start_pipeline_def,
  get_ap_rst_pipeline_def,
  get_ap_done_pipeline_def,
  remove_orig_ctrl_signal,
)
from FIFOTemplate import fifo_template
from DataflowGraph import Edge


def get_rtl(top_mod_ast) -> List[str]:
  codegen = ASTCodeGenerator()
  result = codegen.visit(top_mod_ast)

  # need the timescale command for simulation
  return ['`timescale 1 ns / 1 ps \n'] + result.split('\n')


def level_traverse(node, func, *arg):
  q = [node]
  while( len(q) ):
    curr = q.pop(0)
    for c in curr.children():
      q.append(c)
    func(curr, *arg)


def inject_rtl(curr_rtl: List[str], new_rtl: List[str]) -> None:
  """ inject the new RTL immediately after IO definition """
  for i in range(1, len(curr_rtl)):
    if not curr_rtl[i].strip():
      if 'reg ' in curr_rtl[i-1] or 'wire ' in curr_rtl[i-1]:
        curr_rtl[i+1:i+1] = new_rtl
        return
  assert False


def generate_new_rtl_top(top_mod_ast, edge_name_to_object: Dict[str, Edge], output_filename: str, floorplan:Floorplanner, ap_rst:bool):
  # print(top_mod_ast) # object
  # print(edge_name_to_object) # list of objects
  # print(floorplan) # object
  v_name_to_s = floorplan.getVertexNameToSlot()
  # print("v_name_to_s: {}".format(v_name_to_s.keys()))
  e_name_to_s = floorplan.getEdgeNameToSlot()
  # print(e_name_to_s)
  # slot_list = list(floorplan.s2v.keys())  # ! DLF: need to exclude those empty slots
  slot_list = list()
  for slot in floorplan.getSlotToVertices().keys():
    if floorplan.getSlotToVertices()[slot]:
      slot_list.append(slot)

  # first edit the signals connected to each module instance
  level_traverse(top_mod_ast, convert_fifo, edge_name_to_object)
  level_traverse(top_mod_ast, add_keep_hierarcy_pragma)
  level_traverse(top_mod_ast, pipeline_ap_rst, v_name_to_s, e_name_to_s)
  level_traverse(top_mod_ast, pipeline_ap_start, v_name_to_s)
  level_traverse(top_mod_ast, pipeline_ap_done)
  level_traverse(top_mod_ast, make_ap_ready_equal_to_ap_done)
  level_traverse(top_mod_ast, make_ap_idle_equal_to_ap_done)
  level_traverse(top_mod_ast, fix_ap_continue_to_ap_done)

  # original top module rtl
  temp_rtl_top = get_rtl(top_mod_ast)

  # remove the previous assignment of ap_done and ap_ready
  remove_orig_ctrl_signal(temp_rtl_top)

  # then inject the pipeline logic
  pipeline_def = []
  pipeline_def += get_ap_start_pipeline_def(slot_list)  # for every slot used
  pipeline_def += get_ap_rst_pipeline_def(slot_list, ap_rst)    # for every slot used

  ap_done_module_list = []
  level_traverse(top_mod_ast, collect_all_ap_done_signals, ap_done_module_list) # almost all 1st-level modules (funcs) have ap_done, and s_axi is excluded.
  pipeline_def += get_ap_done_pipeline_def(v_name_to_s, ap_done_module_list)

  inject_rtl(temp_rtl_top, pipeline_def)

  # the relay station template
  temp_rtl_top.append(fifo_template)

  open(output_filename, 'w').write('\n'.join(temp_rtl_top))
  print("write to {}".format(output_filename))