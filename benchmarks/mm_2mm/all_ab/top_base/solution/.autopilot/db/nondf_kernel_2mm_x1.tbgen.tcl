set moduleName nondf_kernel_2mm_x1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nondf_kernel_2mm_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ xout int 512 regular {array 1024 { 1 3 } 1 1 }  }
	{ xin int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xout", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "xin", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xout_address0 sc_out sc_lv 10 signal 0 } 
	{ xout_ce0 sc_out sc_logic 1 signal 0 } 
	{ xout_q0 sc_in sc_lv 512 signal 0 } 
	{ xin_address0 sc_out sc_lv 10 signal 1 } 
	{ xin_ce0 sc_out sc_logic 1 signal 1 } 
	{ xin_we0 sc_out sc_logic 1 signal 1 } 
	{ xin_d0 sc_out sc_lv 32 signal 1 } 
	{ grp_fu_142_p_din0 sc_out sc_lv 512 signal -1 } 
	{ grp_fu_142_p_din1 sc_out sc_lv 512 signal -1 } 
	{ grp_fu_142_p_dout0 sc_in sc_lv 512 signal -1 } 
	{ grp_fu_142_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_146_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_146_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xout_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xout", "role": "address0" }} , 
 	{ "name": "xout_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout", "role": "ce0" }} , 
 	{ "name": "xout_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "xout", "role": "q0" }} , 
 	{ "name": "xin_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xin", "role": "address0" }} , 
 	{ "name": "xin_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "ce0" }} , 
 	{ "name": "xin_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "we0" }} , 
 	{ "name": "xin_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin", "role": "d0" }} , 
 	{ "name": "grp_fu_142_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_142_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_146_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "nondf_kernel_2mm_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "468228", "EstimateLatencyMax" : "468228",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_input_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_output_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_512ns_512ns_512_2_1_U1005", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nondf_kernel_2mm_x1 {
		xout {Type I LastRead 2 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "468228", "Max" : "468228"}
	, {"Name" : "Interval", "Min" : "468228", "Max" : "468228"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xout { ap_memory {  { xout_address0 mem_address 1 10 }  { xout_ce0 mem_ce 1 1 }  { xout_q0 mem_dout 0 512 } } }
	xin { ap_memory {  { xin_address0 mem_address 1 10 }  { xin_ce0 mem_ce 1 1 }  { xin_we0 mem_we 1 1 }  { xin_d0 mem_din 1 32 } } }
}
set moduleName nondf_kernel_2mm_x1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nondf_kernel_2mm_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ xout int 512 regular {array 1024 { 1 3 } 1 1 }  }
	{ xin int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xout", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "xin", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xout_address0 sc_out sc_lv 10 signal 0 } 
	{ xout_ce0 sc_out sc_logic 1 signal 0 } 
	{ xout_q0 sc_in sc_lv 512 signal 0 } 
	{ xin_address0 sc_out sc_lv 10 signal 1 } 
	{ xin_ce0 sc_out sc_logic 1 signal 1 } 
	{ xin_we0 sc_out sc_logic 1 signal 1 } 
	{ xin_d0 sc_out sc_lv 32 signal 1 } 
	{ grp_fu_142_p_din0 sc_out sc_lv 512 signal -1 } 
	{ grp_fu_142_p_din1 sc_out sc_lv 512 signal -1 } 
	{ grp_fu_142_p_dout0 sc_in sc_lv 512 signal -1 } 
	{ grp_fu_142_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_146_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_146_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xout_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xout", "role": "address0" }} , 
 	{ "name": "xout_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout", "role": "ce0" }} , 
 	{ "name": "xout_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "xout", "role": "q0" }} , 
 	{ "name": "xin_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xin", "role": "address0" }} , 
 	{ "name": "xin_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "ce0" }} , 
 	{ "name": "xin_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "we0" }} , 
 	{ "name": "xin_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin", "role": "d0" }} , 
 	{ "name": "grp_fu_142_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_142_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_146_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "nondf_kernel_2mm_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "468228", "EstimateLatencyMax" : "468228",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_input_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_output_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_512ns_512ns_512_2_1_U997", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nondf_kernel_2mm_x1 {
		xout {Type I LastRead 2 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "468228", "Max" : "468228"}
	, {"Name" : "Interval", "Min" : "468228", "Max" : "468228"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xout { ap_memory {  { xout_address0 mem_address 1 10 }  { xout_ce0 mem_ce 1 1 }  { xout_q0 mem_dout 0 512 } } }
	xin { ap_memory {  { xin_address0 mem_address 1 10 }  { xin_ce0 mem_ce 1 1 }  { xin_we0 mem_we 1 1 }  { xin_d0 mem_din 1 32 } } }
}
set moduleName nondf_kernel_2mm_x1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nondf_kernel_2mm_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ xout int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ xin int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xout", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xin", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 269
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xout_address0 sc_out sc_lv 10 signal 0 } 
	{ xout_ce0 sc_out sc_logic 1 signal 0 } 
	{ xout_q0 sc_in sc_lv 32 signal 0 } 
	{ xin_address0 sc_out sc_lv 10 signal 1 } 
	{ xin_ce0 sc_out sc_logic 1 signal 1 } 
	{ xin_we0 sc_out sc_logic 1 signal 1 } 
	{ xin_d0 sc_out sc_lv 32 signal 1 } 
	{ grp_fu_270_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_270_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_270_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_270_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_274_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_274_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_274_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_274_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_278_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_278_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_278_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_278_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_282_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_282_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_282_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_282_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_286_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_286_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_286_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_286_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_290_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_290_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_290_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_290_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_294_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_294_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_294_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_294_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_298_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_298_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_298_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_298_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_302_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_302_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_302_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_302_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_306_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_306_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_306_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_306_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_310_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_310_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_310_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_310_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_314_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_314_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_314_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_314_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_318_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_318_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_318_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_318_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_322_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_322_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_322_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_322_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_326_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_326_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_326_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_326_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_330_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_330_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_330_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_330_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_334_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_334_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_334_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_334_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_338_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_338_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_338_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_338_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_342_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_342_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_342_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_342_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_346_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_346_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_346_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_346_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_350_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_350_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_350_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_350_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_354_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_354_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_354_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_354_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_358_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_358_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_358_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_358_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_362_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_362_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_362_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_362_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_366_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_366_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_366_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_366_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_370_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_370_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_370_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_370_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_374_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_374_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_374_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_374_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_378_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_378_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_378_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_378_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_382_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_382_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_382_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_382_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_386_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_386_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_386_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_386_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_390_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_390_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_390_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_390_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_394_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_394_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_398_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_398_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_398_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_398_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_402_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_402_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_402_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_402_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_406_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_406_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_406_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_406_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_410_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_410_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_410_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_410_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_414_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_414_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_418_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_418_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_418_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_418_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_422_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_422_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_422_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_422_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_426_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_426_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_426_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_426_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_430_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_430_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_430_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_430_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_434_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_434_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_434_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_434_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_438_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_438_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_438_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_438_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_442_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_442_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_442_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_442_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_446_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_446_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_446_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_446_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_450_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_450_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_450_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_450_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_454_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_454_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_454_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_454_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_458_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_458_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_458_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_458_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_462_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_462_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_462_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_462_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_466_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_466_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_466_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_466_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_470_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_470_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_470_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_470_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_474_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_474_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_474_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_474_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_478_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_478_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_478_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_478_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_482_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_482_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_482_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_482_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_486_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_486_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_486_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_486_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_490_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_490_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_490_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_490_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_494_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_494_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_494_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_494_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_498_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_498_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_498_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_498_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_502_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_502_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_502_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_502_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_506_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_506_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_506_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_506_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_510_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_510_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_510_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_510_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_514_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_514_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_514_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_514_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_518_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_518_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_518_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_518_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_522_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_522_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_522_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_522_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xout_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xout", "role": "address0" }} , 
 	{ "name": "xout_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout", "role": "ce0" }} , 
 	{ "name": "xout_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xout", "role": "q0" }} , 
 	{ "name": "xin_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xin", "role": "address0" }} , 
 	{ "name": "xin_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "ce0" }} , 
 	{ "name": "xin_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "we0" }} , 
 	{ "name": "xin_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin", "role": "d0" }} , 
 	{ "name": "grp_fu_270_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_270_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_274_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_278_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_282_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_286_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_290_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_294_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_298_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_302_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_306_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_310_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_314_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_318_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_322_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_326_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_330_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_334_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_334_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_334_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_334_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_334_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_334_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_334_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_334_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_338_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_338_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_338_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_338_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_338_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_338_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_338_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_338_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_342_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_342_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_342_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_342_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_342_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_342_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_342_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_342_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_346_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_346_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_346_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_346_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_346_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_346_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_346_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_346_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_350_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_350_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_350_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_350_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_350_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_350_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_350_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_350_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_354_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_354_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_354_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_354_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_354_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_354_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_354_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_354_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_358_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_362_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_362_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_362_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_362_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_362_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_362_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_362_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_362_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_366_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_366_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_366_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_366_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_366_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_366_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_366_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_366_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_370_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_370_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_370_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_370_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_370_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_370_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_370_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_370_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_374_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_374_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_374_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_374_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_374_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_374_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_374_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_374_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_378_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_382_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_382_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_382_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_382_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_382_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_382_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_382_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_382_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_386_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_390_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_394_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_398_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_402_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_406_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_406_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_406_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_406_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_406_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_406_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_406_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_406_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_410_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_410_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_410_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_410_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_410_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_410_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_410_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_410_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_414_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_418_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_418_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_418_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_418_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_418_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_418_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_418_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_418_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_422_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_422_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_422_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_422_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_426_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_426_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_426_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_426_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_430_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_430_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_430_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_430_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_434_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_434_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_434_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_434_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_438_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_438_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_438_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_438_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_438_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_438_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_438_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_438_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_442_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_442_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_442_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_442_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_442_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_442_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_442_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_442_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_446_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_446_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_446_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_446_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_446_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_446_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_446_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_446_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_450_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_454_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_454_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_454_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_454_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_454_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_454_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_454_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_454_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_458_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_458_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_458_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_458_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_458_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_458_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_458_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_458_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_462_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_462_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_462_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_462_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_462_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_462_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_462_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_462_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_466_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_466_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_466_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_466_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_466_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_466_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_466_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_466_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_470_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_470_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_470_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_470_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_470_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_470_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_470_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_470_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_474_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_478_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_478_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_478_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_478_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_478_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_478_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_478_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_478_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_482_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_482_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_482_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_482_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_482_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_482_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_482_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_482_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_486_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_490_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_494_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_498_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_502_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_506_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_510_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_514_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_518_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_522_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130"],
		"CDFG" : "nondf_kernel_2mm_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21828", "EstimateLatencyMax" : "21828",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_16_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_17_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_18_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_19_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_20_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_21_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_22_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_23_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_24_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_25_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_26_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_27_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_28_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_29_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_30_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_31_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_16_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_17_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_18_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_19_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_20_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_21_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_22_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_23_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_24_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_25_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_26_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_27_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_28_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_29_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_30_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_31_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_0_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_1_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_2_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_3_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_4_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_5_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_6_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_7_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_8_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_9_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_10_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_11_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_12_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_13_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_14_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_15_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_16_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_17_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_18_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_19_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_20_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_21_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_22_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_23_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_24_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_25_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_26_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_27_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_28_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_29_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_30_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_31_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_input_V_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_output_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nondf_kernel_2mm_x1 {
		xout {Type I LastRead 2 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21828", "Max" : "21828"}
	, {"Name" : "Interval", "Min" : "21828", "Max" : "21828"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xout { ap_memory {  { xout_address0 mem_address 1 10 }  { xout_ce0 mem_ce 1 1 }  { xout_q0 mem_dout 0 32 } } }
	xin { ap_memory {  { xin_address0 mem_address 1 10 }  { xin_ce0 mem_ce 1 1 }  { xin_we0 mem_we 1 1 }  { xin_d0 mem_din 1 32 } } }
}
set moduleName nondf_kernel_2mm_x1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nondf_kernel_2mm_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ xout int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ xin int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xout", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xin", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 269
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xout_address0 sc_out sc_lv 10 signal 0 } 
	{ xout_ce0 sc_out sc_logic 1 signal 0 } 
	{ xout_q0 sc_in sc_lv 32 signal 0 } 
	{ xin_address0 sc_out sc_lv 10 signal 1 } 
	{ xin_ce0 sc_out sc_logic 1 signal 1 } 
	{ xin_we0 sc_out sc_logic 1 signal 1 } 
	{ xin_d0 sc_out sc_lv 32 signal 1 } 
	{ grp_fu_270_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_270_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_270_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_270_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_274_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_274_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_274_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_274_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_278_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_278_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_278_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_278_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_282_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_282_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_282_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_282_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_286_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_286_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_286_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_286_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_290_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_290_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_290_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_290_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_294_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_294_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_294_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_294_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_298_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_298_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_298_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_298_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_302_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_302_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_302_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_302_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_306_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_306_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_306_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_306_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_310_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_310_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_310_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_310_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_314_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_314_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_314_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_314_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_318_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_318_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_318_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_318_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_322_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_322_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_322_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_322_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_326_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_326_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_326_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_326_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_330_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_330_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_330_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_330_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_334_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_334_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_334_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_334_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_338_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_338_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_338_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_338_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_342_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_342_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_342_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_342_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_346_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_346_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_346_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_346_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_350_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_350_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_350_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_350_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_354_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_354_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_354_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_354_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_358_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_358_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_358_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_358_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_362_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_362_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_362_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_362_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_366_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_366_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_366_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_366_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_370_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_370_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_370_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_370_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_374_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_374_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_374_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_374_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_378_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_378_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_378_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_378_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_382_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_382_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_382_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_382_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_386_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_386_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_386_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_386_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_390_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_390_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_390_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_390_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_394_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_394_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_398_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_398_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_398_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_398_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_402_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_402_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_402_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_402_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_406_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_406_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_406_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_406_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_410_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_410_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_410_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_410_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_414_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_414_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_418_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_418_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_418_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_418_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_422_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_422_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_422_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_422_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_426_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_426_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_426_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_426_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_430_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_430_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_430_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_430_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_434_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_434_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_434_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_434_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_438_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_438_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_438_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_438_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_442_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_442_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_442_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_442_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_446_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_446_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_446_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_446_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_450_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_450_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_450_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_450_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_454_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_454_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_454_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_454_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_458_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_458_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_458_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_458_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_462_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_462_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_462_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_462_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_466_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_466_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_466_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_466_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_470_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_470_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_470_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_470_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_474_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_474_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_474_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_474_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_478_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_478_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_478_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_478_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_482_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_482_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_482_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_482_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_486_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_486_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_486_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_486_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_490_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_490_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_490_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_490_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_494_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_494_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_494_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_494_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_498_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_498_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_498_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_498_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_502_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_502_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_502_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_502_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_506_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_506_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_506_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_506_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_510_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_510_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_510_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_510_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_514_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_514_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_514_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_514_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_518_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_518_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_518_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_518_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_522_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_522_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_522_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_522_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xout_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xout", "role": "address0" }} , 
 	{ "name": "xout_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout", "role": "ce0" }} , 
 	{ "name": "xout_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xout", "role": "q0" }} , 
 	{ "name": "xin_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xin", "role": "address0" }} , 
 	{ "name": "xin_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "ce0" }} , 
 	{ "name": "xin_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "we0" }} , 
 	{ "name": "xin_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin", "role": "d0" }} , 
 	{ "name": "grp_fu_270_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_270_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_274_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_278_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_282_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_286_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_290_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_294_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_298_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_302_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_306_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_310_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_314_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_318_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_322_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_326_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_330_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_334_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_334_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_334_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_334_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_334_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_334_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_334_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_334_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_338_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_338_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_338_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_338_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_338_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_338_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_338_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_338_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_342_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_342_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_342_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_342_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_342_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_342_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_342_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_342_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_346_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_346_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_346_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_346_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_346_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_346_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_346_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_346_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_350_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_350_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_350_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_350_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_350_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_350_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_350_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_350_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_354_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_354_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_354_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_354_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_354_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_354_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_354_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_354_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_358_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_362_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_362_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_362_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_362_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_362_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_362_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_362_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_362_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_366_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_366_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_366_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_366_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_366_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_366_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_366_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_366_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_370_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_370_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_370_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_370_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_370_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_370_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_370_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_370_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_374_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_374_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_374_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_374_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_374_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_374_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_374_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_374_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_378_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_382_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_382_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_382_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_382_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_382_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_382_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_382_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_382_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_386_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_390_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_394_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_398_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_402_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_406_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_406_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_406_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_406_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_406_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_406_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_406_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_406_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_410_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_410_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_410_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_410_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_410_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_410_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_410_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_410_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_414_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_418_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_418_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_418_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_418_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_418_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_418_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_418_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_418_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_422_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_422_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_422_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_422_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_426_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_426_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_426_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_426_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_430_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_430_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_430_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_430_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_434_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_434_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_434_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_434_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_438_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_438_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_438_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_438_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_438_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_438_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_438_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_438_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_442_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_442_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_442_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_442_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_442_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_442_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_442_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_442_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_446_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_446_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_446_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_446_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_446_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_446_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_446_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_446_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_450_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_454_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_454_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_454_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_454_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_454_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_454_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_454_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_454_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_458_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_458_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_458_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_458_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_458_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_458_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_458_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_458_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_462_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_462_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_462_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_462_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_462_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_462_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_462_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_462_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_466_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_466_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_466_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_466_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_466_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_466_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_466_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_466_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_470_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_470_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_470_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_470_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_470_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_470_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_470_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_470_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_474_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_478_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_478_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_478_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_478_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_478_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_478_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_478_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_478_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_482_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_482_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_482_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_482_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_482_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_482_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_482_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_482_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_486_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_490_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_494_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_498_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_502_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_506_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_510_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_514_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_518_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_522_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130"],
		"CDFG" : "nondf_kernel_2mm_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23876", "EstimateLatencyMax" : "23876",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_16_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_17_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_18_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_19_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_20_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_21_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_22_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_23_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_24_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_25_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_26_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_27_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_28_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_29_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_30_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_31_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_16_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_17_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_18_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_19_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_20_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_21_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_22_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_23_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_24_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_25_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_26_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_27_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_28_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_29_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_30_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_31_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_0_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_1_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_2_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_3_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_4_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_5_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_6_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_7_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_8_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_9_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_10_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_11_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_12_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_13_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_14_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_15_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_16_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_17_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_18_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_19_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_20_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_21_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_22_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_23_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_24_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_25_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_26_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_27_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_28_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_29_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_30_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_31_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_input_V_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_output_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nondf_kernel_2mm_x1 {
		xout {Type I LastRead 2 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23876", "Max" : "23876"}
	, {"Name" : "Interval", "Min" : "23876", "Max" : "23876"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xout { ap_memory {  { xout_address0 mem_address 1 10 }  { xout_ce0 mem_ce 1 1 }  { xout_q0 mem_dout 0 32 } } }
	xin { ap_memory {  { xin_address0 mem_address 1 10 }  { xin_ce0 mem_ce 1 1 }  { xin_we0 mem_we 1 1 }  { xin_d0 mem_din 1 32 } } }
}
