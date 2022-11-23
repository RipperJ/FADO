set moduleName PE_wrapper_1_4_x0
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
set C_modelName {PE_wrapper_1_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_4_x041 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_5_x042 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_4_x0137 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_4_x0138 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_4_x0205 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_4_x041", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_5_x042", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_4_x0137", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_4_x0138", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_4_x0205", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_PE_1_4_x041_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_4_x041_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_4_x041_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_5_x042_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_5_x042_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_5_x042_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_4_x0137_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_4_x0137_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_4_x0137_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_4_x0138_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_4_x0138_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_4_x0138_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_4_x0205_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_4_x0205_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_4_x0205_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_4_x041_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x041", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_4_x041_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x041", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_4_x041_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x041", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_5_x042_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x042", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_5_x042_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x042", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_5_x042_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x042", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_4_x0137_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0137", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_4_x0137_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0137", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_4_x0137_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0137", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_4_x0138_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0138", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_4_x0138_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0138", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_4_x0138_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0138", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0205_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0205", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0205_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0205", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0205_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0205", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129122849", "EstimateLatencyMax" : "129122849",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U149", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x041 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_5_x042 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_4_x0137 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_4_x0138 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_4_x0205 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_4_x041 { ap_fifo {  { fifo_A_PE_1_4_x041_dout fifo_data 0 512 }  { fifo_A_PE_1_4_x041_empty_n fifo_status 0 1 }  { fifo_A_PE_1_4_x041_read fifo_update 1 1 } } }
	fifo_A_PE_1_5_x042 { ap_fifo {  { fifo_A_PE_1_5_x042_din fifo_data 1 512 }  { fifo_A_PE_1_5_x042_full_n fifo_status 0 1 }  { fifo_A_PE_1_5_x042_write fifo_update 1 1 } } }
	fifo_B_PE_1_4_x0137 { ap_fifo {  { fifo_B_PE_1_4_x0137_dout fifo_data 0 512 }  { fifo_B_PE_1_4_x0137_empty_n fifo_status 0 1 }  { fifo_B_PE_1_4_x0137_read fifo_update 1 1 } } }
	fifo_B_PE_2_4_x0138 { ap_fifo {  { fifo_B_PE_2_4_x0138_din fifo_data 1 512 }  { fifo_B_PE_2_4_x0138_full_n fifo_status 0 1 }  { fifo_B_PE_2_4_x0138_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_4_x0205 { ap_fifo {  { fifo_C_drain_PE_1_4_x0205_din fifo_data 1 16 }  { fifo_C_drain_PE_1_4_x0205_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_4_x0205_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_4_x0
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
set C_modelName {PE_wrapper_1_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_4_x033 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_5_x034 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_4_x0129 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_4_x0130 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_4_x0197 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_4_x033", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_5_x034", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_4_x0129", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_4_x0130", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_4_x0197", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_PE_1_4_x033_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_4_x033_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_4_x033_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_5_x034_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_5_x034_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_5_x034_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_4_x0129_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_4_x0129_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_4_x0129_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_4_x0130_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_4_x0130_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_4_x0130_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_4_x0197_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_4_x0197_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_4_x0197_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_4_x033_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x033", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_4_x033_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x033", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_4_x033_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x033", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_4_x0129_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0129", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_4_x0129_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0129", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_4_x0129_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0129", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_4_x0130_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0130", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_4_x0130_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0130", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_4_x0130_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0130", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0197_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0197", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0197_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0197", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0197_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0197", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129122849", "EstimateLatencyMax" : "129122849",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U149", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x033 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_5_x034 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_4_x0129 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_4_x0130 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_4_x0197 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_4_x033 { ap_fifo {  { fifo_A_PE_1_4_x033_dout fifo_data 0 512 }  { fifo_A_PE_1_4_x033_empty_n fifo_status 0 1 }  { fifo_A_PE_1_4_x033_read fifo_update 1 1 } } }
	fifo_A_PE_1_5_x034 { ap_fifo {  { fifo_A_PE_1_5_x034_din fifo_data 1 512 }  { fifo_A_PE_1_5_x034_full_n fifo_status 0 1 }  { fifo_A_PE_1_5_x034_write fifo_update 1 1 } } }
	fifo_B_PE_1_4_x0129 { ap_fifo {  { fifo_B_PE_1_4_x0129_dout fifo_data 0 512 }  { fifo_B_PE_1_4_x0129_empty_n fifo_status 0 1 }  { fifo_B_PE_1_4_x0129_read fifo_update 1 1 } } }
	fifo_B_PE_2_4_x0130 { ap_fifo {  { fifo_B_PE_2_4_x0130_din fifo_data 1 512 }  { fifo_B_PE_2_4_x0130_full_n fifo_status 0 1 }  { fifo_B_PE_2_4_x0130_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_4_x0197 { ap_fifo {  { fifo_C_drain_PE_1_4_x0197_din fifo_data 1 16 }  { fifo_C_drain_PE_1_4_x0197_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_4_x0197_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_4_x0
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
set C_modelName {PE_wrapper_1_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_4_x033 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_5_x034 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_4_x0129 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_4_x0130 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_4_x0197 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_4_x033", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_5_x034", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_4_x0129", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_4_x0130", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_4_x0197", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_PE_1_4_x033_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_4_x033_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_4_x033_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_5_x034_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_5_x034_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_5_x034_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_4_x0129_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_4_x0129_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_4_x0129_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_4_x0130_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_4_x0130_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_4_x0130_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_4_x0197_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_4_x0197_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_4_x0197_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_4_x033_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x033", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_4_x033_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x033", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_4_x033_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x033", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_4_x0129_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0129", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_4_x0129_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0129", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_4_x0129_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x0129", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_4_x0130_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0130", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_4_x0130_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0130", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_4_x0130_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x0130", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0197_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0197", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0197_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0197", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_4_x0197_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_4_x0197", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048584", "EstimateLatencyMax" : "1048584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U566", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U567", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U568", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U569", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U570", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U571", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U572", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U573", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U574", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U575", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U576", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U577", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U578", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U579", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U580", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U581", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U582", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U583", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U584", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U585", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U586", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U587", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U588", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U589", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U590", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U591", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U592", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U593", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U594", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U595", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U596", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U597", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x033 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_1_5_x034 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_1_4_x0129 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_2_4_x0130 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_1_4_x0197 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048584", "Max" : "1048584"}
	, {"Name" : "Interval", "Min" : "1048584", "Max" : "1048584"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_4_x033 { ap_fifo {  { fifo_A_PE_1_4_x033_dout fifo_data 0 512 }  { fifo_A_PE_1_4_x033_empty_n fifo_status 0 1 }  { fifo_A_PE_1_4_x033_read fifo_update 1 1 } } }
	fifo_A_PE_1_5_x034 { ap_fifo {  { fifo_A_PE_1_5_x034_din fifo_data 1 512 }  { fifo_A_PE_1_5_x034_full_n fifo_status 0 1 }  { fifo_A_PE_1_5_x034_write fifo_update 1 1 } } }
	fifo_B_PE_1_4_x0129 { ap_fifo {  { fifo_B_PE_1_4_x0129_dout fifo_data 0 512 }  { fifo_B_PE_1_4_x0129_empty_n fifo_status 0 1 }  { fifo_B_PE_1_4_x0129_read fifo_update 1 1 } } }
	fifo_B_PE_2_4_x0130 { ap_fifo {  { fifo_B_PE_2_4_x0130_din fifo_data 1 512 }  { fifo_B_PE_2_4_x0130_full_n fifo_status 0 1 }  { fifo_B_PE_2_4_x0130_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_4_x0197 { ap_fifo {  { fifo_C_drain_PE_1_4_x0197_din fifo_data 1 16 }  { fifo_C_drain_PE_1_4_x0197_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_4_x0197_write fifo_update 1 1 } } }
}
