#! /usr/bin/python3.6
from collections import defaultdict
from pyverilog.vparser.parser import parse as rtl_parse
import pyverilog.vparser.ast as ast
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import re
import logging
import math

class TopRTLParser:

  fifo_dout_format = '([^ ]*[^_])_+dout'
  fifo_din_format = '([^ ]*[^_])_+din'

  def __init__(self, top_rtl_path, sub_rtl_paths, sub_inst):
    self.top_rtl_path = top_rtl_path
    self.sub_rtl_paths = sub_rtl_paths
    self.sub_inst = sub_inst
    self.sub_inst_ast = {sub_inst[_]:rtl_parse([sub_rtl_paths[_]]) for _ in range(len(sub_inst))}
    self.top_module_ast, directives = rtl_parse([top_rtl_path] + sub_rtl_paths) 
    self.__checker()

    self.mod_to_fifo_in = defaultdict(list)
    self.mod_to_fifo_out = defaultdict(list)

    self.wire_to_fifo_name = {} # str -> str
    self.fifo_name_to_wires = defaultdict(list) # fifo -> interface wires
    self.fifo_name_to_outbound_wires = defaultdict(list)
    self.fifo_name_to_inbound_wires = defaultdict(list)
    self.non_dataflow_format = "_nondf_"

    # CRITICAL:
    # if two vertices are connected by direct wire
    # one wire will map to 2 vertices
    # ! Only one vertex will be shown in this dict, the other is omitted (over-written)
    self.wire_to_v_name = {} # str -> str
    
    self.v_name_to_wires = defaultdict(list) # vertex -> interface wires
    self.inst_name_to_rtl = {}
    self.reg_wire_name_to_width = {} # from name to full declaration (with width, etc) 
    self.io_name_to_width = {}
    self.io_name_to_dir = {}
    self.all_decl_except_io = []
    self.codegen = ASTCodeGenerator()
    self.ap_done_v_name_to_wire = {} # ap_done module name -> wire name
    self.ap_ready_v_name_to_wire = {}
    self.param_to_value_str = {}
    self.e_name_to_ast_node = {}

    # record which vertices have direct wire connection
    self.grouping_constraints = set()

    self.__initWireToFIFOMapping()      # FIFOs     -- same count with HLS_Report->"Utilization Estimates"->Detail->FIFO
    self.__initWireToVertexMapping()    # Instances -- same count with HLS_Report->"Utilization Estimates"->Detail->Instance
    self.__addWireToVertexMappingMem()
    # logging.debug('\n'.join([str(_) for _ in self.wire_to_v_name.items()]))
    self.__initFIFOListOfModuleInst()   # Instances -- same count with HLS_Report->"Utilization Estimates"->Detail->Instance
    self.__initRTLOfAllInsts()          # Instances as vertices, FIFOs as edges # ! NOT USED
    self.__initParamToValueStr()        # ? 
    self.__initDeclList()               # Get mapping from reg/wire/io name to width/direction # ! NOT USED
    
    self.__initApDoneSources()
    self.__initApReadySources()
    
    # print(self.v_name_to_wires)
    
    # for mod, ap_done in self.ap_done_v_name_to_wire.items():
    #   print(f'{ap_done} -> {mod}')
  def __addWireToVertexMappingMem(self):
    def groupIOPorts(temp_top_module_ast, io_ports, cur_node_name):
      # all_in_instances = self.__DFS(temp_top_module_ast, lambda node : isinstance(node, ast.Instance) and any([portarg.]))
      # print([(_.portname, _.argname.name) for _ in in_ports])
      for io_port in io_ports:
        logging.info("IO port argname: {}".format(io_port.argname.name))
        for node in self.__DFS(temp_top_module_ast, lambda node : isinstance(node, ast.Instance)):
          if node.name.find(self.non_dataflow_format) != -1:
            logging.error("Found non-dataflow: {}".format(node.name))
            break
          _found = 0
          for portarg in node.portlist:
            if node.name != cur_node_name and isinstance(portarg.argname, ast.Identifier) \
              and portarg.argname.name == io_port.argname.name:
              # print(node.name)
              # print(self.sub_inst_ast[node.name])
              # print(type(self.sub_inst_ast[node.name]))
              temp_argname = portarg.portname
              for sub_assign in self.__DFS(self.sub_inst_ast[node.name][0], lambda _ : isinstance(_, ast.Assign)):
                if sub_assign.left.var.name == portarg.portname:
                  temp_argname = sub_assign.right.var.name
              for sub_node in self.__DFS(self.sub_inst_ast[node.name][0], lambda _ : isinstance(_, ast.Instance)):
                for sub_portarg in sub_node.portlist:
                  # if sub_portarg.portname == portarg.portname:
                  if isinstance(sub_portarg.argname, ast.Identifier) and sub_portarg.argname.name == temp_argname:
                    logging.info("Grouping by mem:\n    node: {}; sub node: {};".format(cur_node_name, sub_node.name)) # ! DLF
                    self.grouping_constraints.add( (cur_node_name, sub_node.name) )
                    _found = 1
                    break
                if _found == 1:
                  break
            if _found == 1:
              break
      
    if not self.sub_inst:
      return
    else:
      logging.debug("Additional Connections for Memories!")
      temp_top_module_ast, temp_directives = rtl_parse([self.top_rtl_path])
      all_instances = self.__DFS(temp_top_module_ast, lambda node : isinstance(node, ast.Instance))
      mem_list = filter(lambda node : re.search("temp_[A-Za-z_]+\d+", node.name), all_instances)
      assert mem_list, "Sub-funcs are dataflow, but no mem-connection found. Please name the mems with r'temp_[A-Za-z_]+\d+' format.'"
      for node in mem_list:
        print("Node name:", node.name)
        # for portarg in node.portlist:
        #   # filter out constant ports
        #   if(not isinstance(portarg.argname, ast.Identifier)):
        #     continue
        #   port_name = portarg.portname
        #   wire_name = portarg.argname.name
        in_ports = filter(lambda portarg: re.search("d\d+", portarg.portname), 
                          node.portlist)
        out_ports = filter(lambda portarg: re.search("q\d+", portarg.portname), 
                          node.portlist)
        # print([(_.portname, _.argname.name) for _ in in_ports])
        # print([(_.portname, _.argname.name) for _ in out_ports])
        groupIOPorts(temp_top_module_ast, in_ports, node.name)
        groupIOPorts(temp_top_module_ast, out_ports, node.name)
        
  # 1. no start_for FIFOs
  # 2. each inst has different name
  def __checker(self):
    for sub_module_ast in self.sub_inst_ast.values():
      # print(sub_module_ast) # [0]: ast.Source; [1]: `timescale
      for node in self.__DFS(sub_module_ast[0], lambda node : isinstance(node, ast.Instance)):
        assert 'start_for' not in node.name, f'Found start FIFOs: {self.top_rtl_path} : {node.name}' 

      names = set()
      for node in self.__DFS(sub_module_ast[0], lambda node : isinstance(node, ast.Instance)):
        if node.name not in names:
          names.add(node.name)
        else:
          assert False, f'Found duplicated name for instance {node.name}'

  def __DFS(self, node, filter_func):
    if filter_func(node):
      try:
        logging.debug(f'visit node {node.name}')
      except:
        pass
        # logging.debug(f'node in line {node.lineno} has no name')
      yield node
    for c in node.children():
      yield from self.__DFS(c, filter_func)

  def __initRTLOfAllInsts(self): # ! NOT USED BUT NEED TO CHANGE top_module_ast to sub when with sub-dataflow
    for v_inst_list in self.__DFS(self.top_module_ast, self.__isVertexInstanceList):
      assert len(v_inst_list.instances) == 1, f'unsupported RTL coding style at line {v_inst_list.lineno}'
      v_node = v_inst_list.instances[0]
      # logging.debug("v->: {}".format(v_node.name))
      self.inst_name_to_rtl[v_node.name] = self.codegen.visit(v_inst_list)

    for e_inst_list in self.__DFS(self.top_module_ast, self.__isEdgeInstanceList):
      assert len(e_inst_list.instances) == 1, f'unsupported RTL coding style at line {e_inst_list.lineno}'
      e_node = e_inst_list.instances[0]
      # logging.debug("e->: {}".format(e_node.name))
      self.inst_name_to_rtl[e_node.name] = self.codegen.visit(e_inst_list)
      self.e_name_to_ast_node[e_node.name] = e_inst_list
      
    # logging.debug('\n'.join([str(_) for _ in self.inst_name_to_rtl.items()]))
    # logging.debug('\n'.join([str(_) for _ in self.e_name_to_ast_node.items()]))

  # get mapping from reg/wire/io name to width/direction
  def __initDeclList(self):
    # replace the parameters in 
    def replaceParamByValue(width : str):
      tokens = re.findall(r'[A-Za-z0-9_]+', width)
      # logging.debug(tokens)
      while any(t in self.param_to_value_str for t in tokens):
        # logging.debug("{} {}".format([_ for _ in tokens], any(t in self.param_to_value_str for t in tokens)))
        for t in tokens:
          if t in self.param_to_value_str:
            width = width.replace(t, self.param_to_value_str[t] )
            # logging.debug(f'replace {t} by {self.param_to_value_str[t]}')
        tokens = re.findall(r'[A-Za-z0-9_]+', width)
      return width.replace(' ', '') # must remove the spaces because later steps will partition expressions based on space

    # get a copy of all delcaration
    for decl_node in self.__DFS(self.top_module_ast, lambda node : isinstance(node, ast.Decl)):
      assert len(decl_node.children()) == 1
      content = decl_node.children()[0]
      name = content.name

      if not isinstance(content, ast.Input) and not isinstance(content, ast.Output):
        self.all_decl_except_io.append(self.codegen.visit(decl_node))

    # initialize various mappings
    for decl_node in self.__DFS(self.top_module_ast, lambda node : isinstance(node, ast.Decl)):
      assert len(decl_node.children()) == 1
      content = decl_node.children()[0]
      name = content.name

      # filter out ast.Parameter
      if isinstance(content, ast.Parameter):
        continue
      
      width_node = content.width
      if width_node:
        width = self.codegen.visit(width_node)
        width = replaceParamByValue(width)
      else:
        width = ''

      if isinstance(content, ast.Input):
        self.io_name_to_dir[name] = 'input'
        self.io_name_to_width[name] = width

      elif isinstance(content, ast.Output):
        self.io_name_to_dir[name] = 'output'
        self.io_name_to_width[name] = width

      elif isinstance(content, ast.Wire) or isinstance(content, ast.Reg):
        self.reg_wire_name_to_width[name] = width

      else:
        logging.debug(f'unrecorded Decl statement: {name} @ line {decl_node.lineno}')

  def __initParamToValueStr(self):
    for decl_node in self.__DFS(self.top_module_ast, lambda node : isinstance(node, ast.Decl)):
      assert len(decl_node.children()) == 1
      content = decl_node.children()[0]
      # logging.debug("{} | {}".format(content.name, content.value))
      
      if isinstance(content, ast.Parameter):
        self.param_to_value_str[content.name] = self.codegen.visit(content.value)
    # logging.debug(self.param_to_value_str.items())

  def __initFIFOListOfModuleInst(self):
    for v_node in self.traverseVertexInAST():
      if v_node.name in self.sub_inst or v_node.name.find(self.non_dataflow_format) != -1 or v_node.name.find("data_split") != -1:
        logging.debug("Excluding module {} - name {}".format(v_node.module, v_node.name))
        continue
      for portarg in v_node.portlist:
        # filter out constant ports
        if(not isinstance(portarg.argname, ast.Identifier)):
          continue
        port_name = portarg.portname
        wire_name = portarg.argname.name
        
        # each fifo xxx -> xxx_din & xxx_dout, each maps to a vertex
        # note that 'dout' is the output side of FIFO, thus the input side for the vertex
        if '_dout' in port_name: # FIXME: should change to <str>.endswith(_dout)?
          assert '_dout' in wire_name
          fifo_name = self.wire_to_fifo_name[wire_name]
          self.mod_to_fifo_in[v_node.name].append(fifo_name) 
          
        # elif port_name.endswith('_read') and '_dout' in wire_name:
        elif re.search(r'_read\d?', port_name) and '_dout' in wire_name:
          fifo_name = self.wire_to_fifo_name[wire_name]
          self.mod_to_fifo_in[v_node.name].append(fifo_name) 

        elif '_din' in port_name:
          # assert '_din' in wire_name
          if "_din" in wire_name or "_ap_return" in wire_name:
            fifo_name = self.wire_to_fifo_name[wire_name]
            self.mod_to_fifo_out[v_node.name].append(fifo_name)
          else:
            continue
          
        elif 'ap_return' in port_name:
        # elif re.search(r'ap_return_\d?', port_name) in port_name:
          assert '_ap_return' in wire_name
          # assert re.search(r'ap_return_\d?', wire_name)
          fifo_name = self.wire_to_fifo_name[wire_name]
          self.mod_to_fifo_out[v_node.name].append(fifo_name) 
          
        else:
          continue
    # logging.debug(self.mod_to_fifo_in)
    # logging.debug(self.mod_to_fifo_out)

  def __initWireToFIFOMapping(self):
    outbound_tags = ['_read', '_dout', '_empty_n']
    inbound_tags = ['_write', '_din', '_full_n']
    ctrl_tags = ['clk', 'rst', 'reset']
    
    for e_node in self.traverseEdgeInAST(): # FIFOs -- same count with HLS_Report->"Utilization Estimates"->Detail->FIFO
      # logging.debug("---{}\n{}".format(e_node.name, e_node.portlist))
      for portarg in e_node.portlist:
        # filter constant ports
        if(not isinstance(portarg.argname, ast.Identifier)):
          # logging.debug("X -> Type = {} {}".format(portarg.argname, type(portarg.argname)))
          continue
        # else:
        #   logging.debug("OK-> Type = {}, {}".format(portarg.argname, portarg.portname))

        port_name = portarg.portname      # the "A" of ".A(a)"
        wire_name = portarg.argname.name  # the "a" of ".A(a)"
        self.wire_to_fifo_name[wire_name] = e_node.name
        self.fifo_name_to_wires[e_node.name].append((port_name, wire_name))

        if any(o_tag in port_name for o_tag in outbound_tags):
          self.fifo_name_to_outbound_wires[e_node.name].append(wire_name)
        elif any(i_tag in port_name for i_tag in inbound_tags):
          self.fifo_name_to_inbound_wires[e_node.name].append(wire_name)
        else:
          assert any(c_tag in port_name for c_tag in ctrl_tags)

  def __initWireToVertexMapping(self):
    for v_node in self.traverseVertexInAST(): # Instances -- same count with HLS_Report->"Utilization Estimates"->Detail->Instance
      if v_node.name in self.sub_inst or v_node.name.find("data_split") != -1: # or v_node.name.find(self.non_dataflow_format) != -1 
        logging.debug("Excluding module {} - name {}".format(v_node.module, v_node.name))
        continue
      for portarg in v_node.portlist:
        # filter constant ports
        if(not isinstance(portarg.argname, ast.Identifier)):
          continue
        # else:
        #   logging.debug("OK-> Type = {}, {}".format(portarg.argname, portarg.portname))

        wire_name = portarg.argname.name  # the "a" of ".A(a)"
        if 'ap_clk' in wire_name or 'ap_rst' in wire_name:
          continue
        
        # if two vertices are connected by direct wire, they must be bundled together
        if wire_name in self.wire_to_v_name:
          if not re.search(r'_x(\d+)_U(\d+)', self.wire_to_v_name[wire_name]) or v_node.name.find("data_split") == -1: # ! avoid grouping like "wire_name: B_q0; wire_to_v[wire]: A_IO_L3_in_x5_U0; v.name: A_IO_L3_in_x1_U0"
            logging.info("Grouping:\nwire_name: {}; wire_to_v[wire]: {}; v.name: {}".format(wire_name, self.wire_to_v_name[wire_name], v_node.name)) # ! DLF
            self.grouping_constraints.add( (self.wire_to_v_name[wire_name], v_node.name) )
          # logging.info(f'grouping {self.wire_to_v_name[wire_name]} | {v_node.name}, based on wire {wire_name}')

        
        self.wire_to_v_name[wire_name] = v_node.name
        self.v_name_to_wires[v_node.name].append(wire_name)

  # only some modules will be used to check if the whole design has finished
  # we only collect the ap_done names of those modules
  def __initApDoneSources(self):
    if not self.sub_rtl_paths:
      f = open(self.top_rtl_path, 'r')
      for line in f:
        if re.search(r'assign[ ]*ap_sync_done', line):
          line = re.sub(r'assign[ ]*ap_sync_done[ ]*=[ ]*', '', line)
          line = re.sub(r'[() ;\n]', '', line)
          ap_dones = line.split('&'); assert len(ap_dones)
          self.ap_done_v_name_to_wire = {self.wire_to_v_name[ap_done] : ap_done for ap_done in ap_dones}
          return
      assert False, 'ap_done signal in unexpected format'
    else:
      for sub_rtl_path in self.sub_rtl_paths:
        f = open(sub_rtl_path, 'r')
        for line in f:
          if re.search(r'assign[ ]*ap_sync_done', line):
            line = re.sub(r'assign[ ]*ap_sync_done[ ]*=[ ]*', '', line)
            line = re.sub(r'[() ;\n]', '', line)
            ap_dones = line.split('&'); assert len(ap_dones)
            self.ap_done_v_name_to_wire = {self.wire_to_v_name[ap_done] : ap_done for ap_done in ap_dones}
            return
        assert False, 'ap_done signal in unexpected format'
        

  # extract which ap_ready signals will be used for the final ap_ready signal
  # [FIXME] some situations cannot be handled yet (multiple levels of intermediate wires)
  def __initApReadySources(self):
    if not self.sub_rtl_paths:
      f = open(self.top_rtl_path, 'r')
      # print(self.top_rtl_path)
      
      # case 1: assign ap_ready = xxx & xxx ...
      for line in f:
        if re.search(r'assign[ ]*ap_ready', line):
          line = re.sub(r'assign[ ]*ap_ready[ ]*=[ ]*', '', line)
          line = re.sub(r'[() ;\n]', '', line)
          ap_readies = line.split('&'); assert len(ap_readies)
          
          if len(ap_readies) == 1 and ap_readies[0] == 'ap_sync_ready':
            break

          self.ap_ready_v_name_to_wire = {self.wire_to_v_name[ap_ready] : ap_ready for ap_ready in ap_readies}
          return
      
      # case 2: assign ap_ready = ap_sync_ready;
      f.seek(0)
      for line in f:
        if re.search(r'assign[ ]*ap_sync_ready', line):
          line = re.sub(r'assign[ ]*ap_sync_ready[ ]*=[ ]*', '', line)
          line = re.sub(r'[() ;\n]', '', line)
          line = re.sub(r'ap_sync_', '', line) # modified by DLF
          ap_readies = line.split('&'); assert len(ap_readies)
          
          try:
            self.ap_ready_v_name_to_wire = {self.wire_to_v_name[ap_ready] : ap_ready for ap_ready in ap_readies}
          except:
            logging.critical('failed in parsing ap_ready signals')
          return
      
      assert False, 'ap_ready signal in unexpected format'
    else:
      for sub_rtl_path in self.sub_rtl_paths:
        f = open(sub_rtl_path, 'r')
        # case 1: assign ap_ready = xxx & xxx ...
        for line in f:
          if re.search(r'assign[ ]*ap_ready', line):
            line = re.sub(r'assign[ ]*ap_ready[ ]*=[ ]*', '', line)
            line = re.sub(r'[() ;\n]', '', line)
            ap_readies = line.split('&'); assert len(ap_readies)
            
            if len(ap_readies) == 1 and ap_readies[0] == 'ap_sync_ready':
              break

            self.ap_ready_v_name_to_wire = {self.wire_to_v_name[ap_ready] : ap_ready for ap_ready in ap_readies}
            return
        
        # case 2: assign ap_ready = ap_sync_ready;
        f.seek(0)
        for line in f:
          if re.search(r'assign[ ]*ap_sync_ready', line):
            line = re.sub(r'assign[ ]*ap_sync_ready[ ]*=[ ]*', '', line)
            line = re.sub(r'[() ;\n]', '', line)
            line = re.sub(r'ap_sync_', '', line) # modified by DLF
            ap_readies = line.split('&'); assert len(ap_readies)
            
            try:
              self.ap_ready_v_name_to_wire = {self.wire_to_v_name[ap_ready] : ap_ready for ap_ready in ap_readies}
            except:
              logging.critical('failed in parsing ap_ready signals')
            return
        
        assert False, 'ap_ready signal in unexpected format'

  def __isVertexNode(self, node):
    return isinstance(node, ast.Instance) and 'fifo' not in node.module

  def __isEdgeNode(self, node):
    return isinstance(node, ast.Instance) and 'fifo' in node.module

  def __isVertexInstanceList(self, node):
    return isinstance(node, ast.InstanceList) and 'fifo' not in node.module
  
  def __isEdgeInstanceList(self, node):
    return isinstance(node, ast.InstanceList) and 'fifo' in node.module


  #                                                 #
  # ---------------- Public Methods --------------- #
  #                                                 #

  def traverseVertexInAST(self):
    yield from self.__DFS(self.top_module_ast, self.__isVertexNode)
  
  def traverseEdgeInAST(self):
    yield from self.__DFS(self.top_module_ast, self.__isEdgeNode)
    
  def traverseVertexInTopAST(self):
    temp_ast = self.rtl_parse_path(self.top_rtl_path)
    yield from self.__DFS(temp_ast, self.__isVertexNode)
  
  # get the interface wires of vertex or edges
  def getWiresOfFIFOName(self, inst_name) -> list:
    return self.fifo_name_to_wires[inst_name]

  def getOutboundSideWiresOfFIFOName(self, fifo_name):
    return self.fifo_name_to_outbound_wires[fifo_name]

  def getInboundSideWiresOfFIFOName(self, fifo_name):
    return self.fifo_name_to_inbound_wires[fifo_name]

  def getWiresOfVertexName(self, v_name) -> list:
    return self.v_name_to_wires[v_name]

  def getWidthOfRegOrWire(self, name):
    width = self.reg_wire_name_to_width[name]
    assert ' ' not in width, 'Spaces in width express will result in error in getSlotNameToIOList()'
    return width

  def getIntegerWidthOfRegOrWire(self, name):
    width = self.reg_wire_name_to_width[name]
    if not width:
      return 1
    else:
      match = re.search(r'\[(\d+):',width).group(1)
      assert match
      return int(match)+1

  def getRTLOfInst(self, inst_name : str):
    return self.inst_name_to_rtl[inst_name]

  # transform the default FIFO used by HLS to our unified template
  def getFIFOInstOfNewTemplate(self, e_name:str, e_width : int, e_depth : int, pipeline_level : int, fifo_type: str = ""):
    e_inst_list = self.e_name_to_ast_node[e_name]

    # use our FIFO template
    e_inst_list.module = 'fifo_almost_full'

    param_width = ast.ParamArg('DATA_WIDTH', ast.Rvalue(ast.IntConst(str(e_width))) )
    param_depth = ast.ParamArg('DEPTH', ast.Rvalue(ast.IntConst(str(e_depth))) )

    addr_bitwidth = int(math.log2(e_width)+1)
    param_addr_width = ast.ParamArg( 'ADDR_WIDTH', ast.Rvalue(ast.IntConst(str(addr_bitwidth))) )

    # pipeline_level equals the required grace period
    param_grace_period = ast.ParamArg( 'GRACE_PERIOD', ast.Rvalue(ast.IntConst(str( pipeline_level ))) )
    
    if fifo_type == 'BRAM':
      param_grace_period = ast.ParamArg( 'USE_BRAM', ast.Rvalue(ast.IntConst(str( 1 ))) )
    elif fifo_type == 'SRL':
      param_grace_period = ast.ParamArg( 'USE_SRL', ast.Rvalue(ast.IntConst(str( 1 ))) )

    params = [param_width, param_depth, param_addr_width, param_grace_period]
    e_inst_list.parameterlist = params

    for c in e_inst_list.instances: # should only has 1 instance
      c.module = e_inst_list.module
      c.parameterlist = params

    return self.codegen.visit(e_inst_list)

  def getWidthOfIO(self, io_name):
    return self.io_name_to_width[io_name]

  def getAllDeclExceptIO(self):
    return self.all_decl_except_io

  def isIO(self, io_name):
    return io_name in self.io_name_to_width

  def getDirOfIO(self, io_name):
    return self.io_name_to_dir[io_name]

  def getDirWidthNameOfAllIO(self):
    top_io = []
    for name, width in self.io_name_to_width.items():
      if width:
        top_io.append((self.io_name_to_dir[name], width, name))
      else:
        top_io.append((self.io_name_to_dir[name], name))
    return top_io
    
  def getInFIFOsOfModuleInst(self, inst_name):
    return self.mod_to_fifo_in[inst_name]

  def getOutFIFOsOfModuleInst(self, inst_name):
    return self.mod_to_fifo_out[inst_name]

  # fifo_w32_d2_A xxx -> 32
  def getFIFOWidthFromFIFOType(self, fifo_type):
    match = re.search(r'_w(\d+)_d(\d+)_', fifo_type)
    assert match, f'wrong FIFO instance name: {fifo_type}'
    return int(match.group(1)) # group 111111

  # fifo_w32_d2_A xxx -> 2
  def getFIFODepthFromFIFOType(self, fifo_type):
    match = re.search(r'_w(\d+)_d(\d+)_', fifo_type)
    assert match, f'wrong FIFO instance name: {fifo_type}'
    return int(match.group(2)) # group 222222

  def getFIFONameFromInstanceList(self, node):
    assert(len(node.instances) == 1)
    return node.instances[0].name

  # only contains the ap_done signals that are part of the final ap_done
  def getApDoneVNameToWire(self):
    return self.ap_done_v_name_to_wire

  # only contains the ap_ready signals that are part of the final ap_ready
  def getApReadyVNameToWire(self):
    return self.ap_ready_v_name_to_wire

  def getParamValueStr(self, param_name):
    return self.param_to_value_str[param_name]

  def getParamToValueStr(self):
    return self.param_to_value_str

  def getFIFONameFromWire(self, wire):
    return self.wire_to_fifo_name[wire]

  # if two vertices are connected by direct wires
  # they must always remain in the same slot
  def getStrictGroupingConstraints(self):
    return list(self.grouping_constraints)

  def getTopModuleName(self):
    return self.top_rtl_path.split('/')[-1]
  
  def getModuleName(self, path):
    return path.split('/')[-1]
  
  def rtl_parse_path(self, path):
    return rtl_parse([path])[0] # [0]:ast