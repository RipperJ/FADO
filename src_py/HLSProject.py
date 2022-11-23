import logging
import re
import math
from os.path import isfile, isdir

class HLSProject:
  def __init__(
      self, 
      top_func_name,
      hls_prj_path, 
      hls_solution_name='solution'):
    self.top_func_name = top_func_name
    self.hls_prj_path = hls_prj_path
    self.hls_solution_name = hls_solution_name
    self.area_map = {}      # module name -> area, but not instance!
    self.top_sub_inst = []
    self.top_sub_mod = [] # sub functions with dataflow when top is not dataflow
    
    self.total_latency = 0
    self.loop_latency = []
    self.loop_ii = []
    self.loop_iter_lat = []
    
    self.__checker()
    
    # 1. Analyze whether the top function is dataflow,
    #    or the sub-functions are dataflows
    print("-- Start analyzing dataflow sub functions.")
    self.analyzeDataflowSubFuncs()
    print("-- End analyzing dataflow sub functions.")
    # 2. Get the area of all sub-functions
    #    and flatten all sub-sub-functions for those dataflow-type sub-functions
    #    1-level recursive
    print("-- Start getting area of all inst.")
    self.getAreaOfAllInst(self.top_func_name)
    print("-- End getting area of all inst.")
    # 3. Get the total area -- the total area is correct after this step, no need to change.
    self.total_area = self.getTotalArea() # A dict for total area
    
    # 4. Test Outputs
    # print(len(self.area_map))
    # print(self.area_map)
    # print(self.top_sub_mod)
    # print(self.getTotalArea())
    # print(self.getTotalAreafromAreaMap())

  def getSubInst(self):
    return self.top_sub_inst

  def analyzeDataflowSubFuncs(self):
    top_rpt_addr = self.getHLSReportFromModuleType(self.top_func_name)
    rpt = open(top_rpt_addr, 'r')
    line = ''
    # + Latency ...
    #   # Detail ...
    while r'+ Detail:' not in line:
      line = rpt.readline()
    
    line = rpt.readline()   # * Instance: 
    assert r'* Instance:' in line, line
    line = rpt.readline()   # +------------- or N/A
    if "N/A" in line:
      return
    assert r'+-------' in line, line
    line = rpt.readline()   # |               <empty>
    line = rpt.readline()   # |               Instance  
    assert re.search(r'[| ]*Instance[ ]*[| ]*Module[ ]*[| ]*min[ |]+max[ |]+', line), line
    line = rpt.readline()   # +----------
    assert r'+-------' in line, line

    line = rpt.readline()   # <instance name 1...>
    while r'+-------' not in line:
      #                   |   (inst )     |    (mod )     |    (min)   |     (max)    |           (min)           |       (max)              |   (min)     |   (max)     |  dataflow or none type pipeline |
      match = re.search(r'[| ]*([^ ]+)[ ]*[| ]*([^ ]+)[ ]*[| ]*(\d+|\?)[ ]*[| ]*(\d+|\?)[ ]*[| ]*(\d+(\.\d+)?[ ]*[munsec]+[ ]*|\?)[| ]*(\d+(\.\d+)?[ ]*[munsec]+[ ]*|\?)[| ]*(\d+|\?)[ ]*[| ]*(\d+|\?)[ ]*[| ]*(dataflow|none)', line)
      assert match, line
      
      if match.group(11) == "dataflow":
        self.top_sub_inst.append(match.group(1))
        self.top_sub_mod.append(match.group(2))

      line = rpt.readline() 
    rpt.close()

  def __checker(self):
    # rtl name should contain not the file extension
    assert self.top_func_name[-2:] != '.v'

  def getCsynthReportDir(self):
    ans = f'{self.hls_prj_path}/{self.hls_solution_name}/syn/report/'
    assert isdir(ans), ans
    return ans

  def getScheReportDir(self):
    ans =  f'{self.hls_prj_path}/{self.hls_solution_name}/.autopilot/db/'
    assert isdir(ans), ans
    return ans

  def getRTLDir(self):
    ans = f'{self.hls_prj_path}/{self.hls_solution_name}/syn/verilog/'
    assert isdir(ans), ans
    return ans

  def getTopRTLPath(self):
    opt1 = f'{self.hls_prj_path}/{self.hls_solution_name}/syn/verilog/{self.top_func_name}.v'
    opt2 = f'{self.hls_prj_path}/{self.hls_solution_name}/syn/verilog/{self.top_func_name}_{self.top_func_name}.v'
    opt3 = f'{self.hls_prj_path}/{self.hls_solution_name}/syn/verilog/{self.hls_prj_path}_{self.top_func_name}.v'
    if isfile(opt1):
      return opt1
    elif isfile(opt2):
      return opt2
    elif isfile(opt3):
      return opt3
    else:
      assert False, f'cannot find the RTL file for {self.top_func_name}'  
  
  def getSubRTLPath(self):
    filelist = []
    for sub_func in self.top_sub_mod:
      opt1 = f'{self.hls_prj_path}/{self.hls_solution_name}/syn/verilog/{sub_func}.v'
      opt2 = f'{self.hls_prj_path}/{self.hls_solution_name}/syn/verilog/{sub_func}_{sub_func}.v'
      opt3 = f'{self.hls_prj_path}/{self.hls_solution_name}/syn/verilog/{self.hls_prj_path}_{sub_func}.v'
      if isfile(opt1):
        filelist.append(opt1)
      elif isfile(opt2):
        filelist.append(opt2)
      elif isfile(opt3):
        filelist.append(opt3)
      else:
        assert False, f'cannot find the RTL file for {sub_func}'  
    return filelist

  # kernel0 or kernel0_kernel0
  def getTopModuleName(self):
    opt1 = rf'{self.top_func_name}'
    opt2 = rf'{self.top_func_name}_{self.top_func_name}'
    path = self.getTopRTLPath()
    if re.search(opt2, path):
      return opt2
    elif re.search(opt1, path):
      return opt1
    else:
      assert False, f'cannot find the top RTL module name'   

  def getScheReportFromModuleType(self, mod_type):
    opt1 = self.getScheReportDir() + f'/{mod_type}' + '.verbose.sched.rpt'
    opt2 = self.getScheReportDir() + f'/{mod_type[len(self.top_func_name)+1:]}' + '.verbose.sched.rpt'
    
    if isfile(opt1):
      return opt1
    elif isfile(opt2):
      return opt2
    else:
      assert False, f'cannot find the schedule report for {mod_type}'

  def getHLSReportFromModuleType(self, mod_type):
    opt1 = self.getCsynthReportDir() + f'/{mod_type}' + '_csynth.rpt'
    opt2 = self.getCsynthReportDir() + f'/{mod_type[len(self.top_func_name)+1:]}' + '_csynth.rpt'
    opt_memcore_ram = self.getCsynthReportDir() + f'/{mod_type}' + '_memcore_csynth.rpt'
    
    if isfile(opt1): # v2020.2 here
      return opt1
    elif isfile(opt2):
      return opt2
    elif isfile(opt_memcore_ram):
      return opt_memcore_ram
    else:
      assert False, f'cannot find the HLS report for {mod_type} {opt_memcore_ram}'    

  def getAreaOfAllInst(self, mod):
    # top_rpt_addr = self.getHLSReportFromModuleType(self.top_func_name)
    top_rpt_addr = self.getHLSReportFromModuleType(mod)
    rpt = open(top_rpt_addr, 'r')
    line = ''
    # print("Report file: {}".format(top_rpt_addr))
    while r'Utilization Estimates' not in line:
      line = rpt.readline()

    # ......
    # + Detail: 
    # * Instance: 
    # +-------------------------------------+------------------------------------+---------+-------+------+------+-----+
    # |               Instance              |               Module               | BRAM_18K| DSP48E|  FF  |  LUT | URAM|
    # +-------------------------------------+------------------------------------+---------+-------+------+------+-----+
    # |A_IO_L1_in_0_0_U0                    |A_IO_L1_in_0_0_s                    |        0|      0|   429|   334|    0|
    # |A_IO_L1_in_0_10_U0                   |A_IO_L1_in_0_10_s                   |        0|      0|   425|   334|    0|
    # ......

    while r'+ Detail:' not in line:
      line = rpt.readline()

    line = rpt.readline()   # * Instance: 
    assert r'* Instance:' in line, line
    line = rpt.readline()   # +-------------
    if r'+-------' not in line: # ! For processing dse lib.
      rpt.close()
      return
    assert r'+-------' in line, line
    line = rpt.readline()   # |               Instance  
    assert re.search(r'[| ]*Instance[ ]*[| ]*Module[ ]*[| ]*BRAM_18K[ |]+DSP[48E |]+FF[ |]+LUT[ |]+URAM', line), line
    line = rpt.readline()   # +----------
    assert r'+-------' in line, line
    
    line = rpt.readline()   # +----------
    while r'+-------' not in line:
      #                   |   (inst )     |    (mod )     |    (bram)   |    (dsp)    |    (ff )    |   (lut)     |    (uram)
      match = re.search(r'[| ]*([^ ]+)[ ]*[| ]*([^ ]+)[ ]*[| ]*(\d+)[ ]*[| ]*(\d+)[ ]*[| ]*(\d+)[ ]*[| ]*(\d+)[ ]*[| ]*(\d+)', line)
      assert match, line

      inst_name = match.group(1)
      mod_type = match.group(2)
      bram = int(match.group(3))
      dsp  = int(match.group(4))
      ff   = int(match.group(5))
      lut  = int(match.group(6))
      uram = int(match.group(7))
      if mod_type not in self.top_sub_mod:
        self.area_map[mod_type] = {'BRAM':bram, 'DSP':dsp, 'FF':ff, 'LUT':lut, 'URAM':uram} 
      else:
        print("Getting area of {}".format(mod_type))
        self.getAreaOfAllInst(mod_type)

      line = rpt.readline() 
      
    # while r'* Memory:' not in line:
    #   line = rpt.readline()
    # line = rpt.readline()   # +-------------
    # assert r'+-------' in line, line
    # line = rpt.readline()   # |               Memory  
    # assert re.search(r'[| ]*Memory[ ]*[| ]*Module[ ]*[| ]*BRAM_18K[ |]+FF[ |]+LUT[ |]+URAM', line), line
    # line = rpt.readline()   # +----------
    # assert r'+-------' in line, line

    # line = rpt.readline()   # +----------
    # while r'+-------' not in line:
    #   #                   |   (inst )     |    (mod )     |    (bram)   |    (dsp)    |    (ff )    |   (lut)     |    (uram)
    #   match = re.search(r'[| ]*([^ ]+)[ ]*[| ]*([^ ]+)[ ]*[| ]*(\d+)[ ]*[| ]*(\d+)[ ]*[| ]*(\d+)[ ]*[| ]*(\d+)', line)
    #   assert match, line

    #   inst_name = match.group(1)
    #   mod_type = match.group(2)
    #   bram = int(match.group(3))
    #   dsp  = 0
    #   ff   = int(match.group(4))
    #   lut  = int(match.group(5))
    #   uram = int(match.group(6))
    #   self.area_map[mod_type] = {'BRAM':bram, 'DSP':dsp, 'FF':ff, 'LUT':lut, 'URAM':uram} # DLF: why key is module but not instance here?

    #   line = rpt.readline() 
    rpt.close()
    
  def getAreaFromModuleType(self, mod_type):
    # if '_axi' in mod_type:
    #   if mod_type not in self.area_map:
    #     assert re.search(f'{self.top_func_name}_{self.top_func_name}', mod_type), mod_type
    #     mod_type = mod_type[len(self.top_func_name)+1:]
    
    opt1 = mod_type
    opt3 = mod_type[len(self.hls_prj_path)-1:]
    opt2 = mod_type[len(self.top_func_name)+1:]
    # logging.debug(self.top_func_name)
    # logging.debug(opt1)
    # logging.debug(opt2)
    # logging.debug(self.area_map)
    if opt1 in self.area_map: 
      return self.area_map[opt1]
    elif opt3 in self.area_map:
      return self.area_map[opt3]
    elif opt2 in self.area_map:
      return self.area_map[opt2]
    else:
      return self.getAreaBasedOnIndividualReport(mod_type)

  def getAreaBasedOnIndividualReport(self, mod_type):
    # logging.debug(f'Area information of instance {mod_type} not found in report for the top func, but has its own report.')
    rpt_addr = self.getHLSReportFromModuleType(mod_type)
    rpt = open(rpt_addr, 'r')

    for line in rpt:
      if ('Utilization Estimates' in line):
        for line in rpt:
          if ('Name' in line):
            assert re.search(r'BRAM[_]18K[ |]*DSP[48E |]*FF[ |]*LUT[ |]*URAM', line), f'HLS has changed the item order in reports! {rpt_addr} : {line}'

          if ('Total' in line):
            x = re.findall(r'\d+', line)
            return {'BRAM':int(x[0]), 'DSP':int(x[1]), 'FF':int(x[2]), 'LUT':int(x[3]), 'URAM':int(x[4])}

    assert False, 'Error in parsing the HLS report'

  def getTotalArea(self):
    return self.getAreaBasedOnIndividualReport(self.top_func_name)
  
  def getTotalAreafromAreaMap(self):
    temp_area = {'BRAM': 0, 'DSP':0, 'FF': 0, 'LUT': 0, 'URAM':0}
    for each_area in self.area_map.values():
      for rsc_type in temp_area.keys():
        temp_area[rsc_type] += each_area[rsc_type]
    return temp_area
  
  def processLatencyAndII(self):
    rpt_addr = self.getHLSReportFromModuleType(self.top_func_name)
    rpt = open(rpt_addr, 'r')
    line = ''

    while r'Performance Estimates' not in line:
      line = rpt.readline()

    while r'+ Latency:' not in line:
      line = rpt.readline()

    line = rpt.readline()   # * Summary: 
    assert r'* Summary:' in line, line
    line = rpt.readline()   # +-------------
    assert r'+-------' in line, line
    line = rpt.readline()   # |  Latency (cycles) 
    line = rpt.readline()   # |   min   |   max  
    line = rpt.readline()   # +-------------
    assert r'+-------' in line, line
    line = rpt.readline()   # total latency
    total_latency = re.search(r'[| ]*(\d+)[| ]*(\d+)', line)
    assert total_latency, line
    self.total_latency = int(total_latency.group(2))
      
    while r'+ Detail:' not in line:
      line = rpt.readline()
    while r'* Loop:' not in line:
      line = rpt.readline()
    line = rpt.readline()   # +-------------
    assert r'+-------' in line, line
    line = rpt.readline()   # |  
    line = rpt.readline()   # |   Loop Name 
    line = rpt.readline()   # +-------------
    assert r'+-------' in line, line

    line = rpt.readline()   # loops
    while r'+-------' not in line:
      match = re.search(r'[|\-+ ]*([A-Za-z_0-9]+)[| ]+(\d+)[| ]+(\d+)[| ]+(\d+)[| ]+(\d+)[| ]+(\d+)[| ]+([0-9~ ]+)[| ]+(yes|no)', line)
      line = rpt.readline() 
      if not match or match.group(7) == "no":
        continue
      # print(match.group(1), match.group(2), match.group(5), match.group(6))
      self.loop_latency.append(int(match.group(3)))
      self.loop_iter_lat.append(int(match.group(4)))
      self.loop_ii.append(int(match.group(5)))
      
  def getLoopLatency(self): 
    return self.loop_latency
  
  def getLoopII(self):
    return self.loop_ii
  
  def getLoopIterLat(self):
    return self.loop_iter_lat
  
  def getTotalLatency(self):
    return self.total_latency
  
  def getLatencyFromModuleType(self, mod_type):
    # logging.debug(f'Area information of instance {mod_type} not found in report for the top func, but has its own report.')
    rpt_addr = self.getHLSReportFromModuleType(mod_type)
    rpt = open(rpt_addr, 'r')          
    
    line = ''

    while r'Performance Estimates' not in line:
      line = rpt.readline()

    while r'+ Latency:' not in line:
      line = rpt.readline()

    line = rpt.readline()   # * Summary: 
    assert r'* Summary:' in line, line
    line = rpt.readline()   # +-------------
    assert r'+-------' in line, line
    line = rpt.readline()   # |  Latency (cycles) 
    line = rpt.readline()   # |   min   |   max  
    line = rpt.readline()   # +-------------
    assert r'+-------' in line, line
    line = rpt.readline()   # total latency
    total_latency = re.search(r'[| ]*(\d+)[| ]*(\d+)', line)
    # assert total_latency, line
    if not total_latency:
      return math.inf
    else:
      return int(total_latency.group(2))
  