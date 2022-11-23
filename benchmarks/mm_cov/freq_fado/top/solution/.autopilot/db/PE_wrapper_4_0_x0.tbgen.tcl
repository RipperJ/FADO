set moduleName PE_wrapper_4_0_x0
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
set C_modelName {PE_wrapper_4_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_0_x056 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_1_x057 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_0_x096 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_0_x097 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_0_x0168 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_0_x056", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_1_x057", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_0_x096", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_0_x097", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_0_x0168", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_0_x056_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_0_x056_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_0_x056_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x057_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_1_x057_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_1_x057_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_0_x096_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_0_x096_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_0_x096_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_0_x097_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_0_x097_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_0_x097_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_0_x0168_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0168_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0168_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U270", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x056 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_1_x057 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_0_x096 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_0_x097 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_0_x0168 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_0_x056 { ap_fifo {  { fifo_A_PE_4_0_x056_dout fifo_data 0 512 }  { fifo_A_PE_4_0_x056_empty_n fifo_status 0 1 }  { fifo_A_PE_4_0_x056_read fifo_update 1 1 } } }
	fifo_A_PE_4_1_x057 { ap_fifo {  { fifo_A_PE_4_1_x057_din fifo_data 1 512 }  { fifo_A_PE_4_1_x057_full_n fifo_status 0 1 }  { fifo_A_PE_4_1_x057_write fifo_update 1 1 } } }
	fifo_B_PE_4_0_x096 { ap_fifo {  { fifo_B_PE_4_0_x096_dout fifo_data 0 512 }  { fifo_B_PE_4_0_x096_empty_n fifo_status 0 1 }  { fifo_B_PE_4_0_x096_read fifo_update 1 1 } } }
	fifo_B_PE_5_0_x097 { ap_fifo {  { fifo_B_PE_5_0_x097_din fifo_data 1 512 }  { fifo_B_PE_5_0_x097_full_n fifo_status 0 1 }  { fifo_B_PE_5_0_x097_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_0_x0168 { ap_fifo {  { fifo_C_drain_PE_4_0_x0168_din fifo_data 1 16 }  { fifo_C_drain_PE_4_0_x0168_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_0_x0168_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_0_x0
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
set C_modelName {PE_wrapper_4_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_0_x056 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_1_x057 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_0_x096 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_0_x097 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_0_x0168 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_0_x056", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_1_x057", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_0_x096", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_0_x097", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_0_x0168", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_0_x056_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_0_x056_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_0_x056_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x057_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_1_x057_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_1_x057_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_0_x096_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_0_x096_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_0_x096_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_0_x097_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_0_x097_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_0_x097_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_0_x0168_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0168_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0168_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1266", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1267", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1268", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1269", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1270", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1271", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1272", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1273", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1274", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1275", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1276", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1277", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1278", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1279", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1280", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1281", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1282", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1283", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1284", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1285", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1286", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1287", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1288", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1289", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1290", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1291", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1292", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1293", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1294", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1295", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1296", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1297", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x056 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_4_1_x057 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_4_0_x096 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_5_0_x097 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_4_0_x0168 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048584", "Max" : "1048584"}
	, {"Name" : "Interval", "Min" : "1048584", "Max" : "1048584"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_0_x056 { ap_fifo {  { fifo_A_PE_4_0_x056_dout fifo_data 0 512 }  { fifo_A_PE_4_0_x056_empty_n fifo_status 0 1 }  { fifo_A_PE_4_0_x056_read fifo_update 1 1 } } }
	fifo_A_PE_4_1_x057 { ap_fifo {  { fifo_A_PE_4_1_x057_din fifo_data 1 512 }  { fifo_A_PE_4_1_x057_full_n fifo_status 0 1 }  { fifo_A_PE_4_1_x057_write fifo_update 1 1 } } }
	fifo_B_PE_4_0_x096 { ap_fifo {  { fifo_B_PE_4_0_x096_dout fifo_data 0 512 }  { fifo_B_PE_4_0_x096_empty_n fifo_status 0 1 }  { fifo_B_PE_4_0_x096_read fifo_update 1 1 } } }
	fifo_B_PE_5_0_x097 { ap_fifo {  { fifo_B_PE_5_0_x097_din fifo_data 1 512 }  { fifo_B_PE_5_0_x097_full_n fifo_status 0 1 }  { fifo_B_PE_5_0_x097_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_0_x0168 { ap_fifo {  { fifo_C_drain_PE_4_0_x0168_din fifo_data 1 16 }  { fifo_C_drain_PE_4_0_x0168_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_0_x0168_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_0_x0
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
set C_modelName {PE_wrapper_4_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_0_x056 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_1_x057 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_0_x096 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_0_x097 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_0_x0168 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_0_x056", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_1_x057", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_0_x096", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_0_x097", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_0_x0168", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_0_x056_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_0_x056_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_0_x056_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x057_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_1_x057_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_1_x057_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_0_x096_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_0_x096_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_0_x096_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_0_x097_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_0_x097_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_0_x097_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_0_x0168_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0168_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0168_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1266", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1267", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1268", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1269", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1270", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1271", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1272", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1273", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1274", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1275", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1276", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1277", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1278", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1279", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1280", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1281", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1282", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1283", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1284", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1285", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1286", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1287", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1288", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1289", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1290", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1291", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1292", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1293", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1294", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1295", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1296", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1297", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x056 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_4_1_x057 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_4_0_x096 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_5_0_x097 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_4_0_x0168 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048584", "Max" : "1048584"}
	, {"Name" : "Interval", "Min" : "1048584", "Max" : "1048584"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_0_x056 { ap_fifo {  { fifo_A_PE_4_0_x056_dout fifo_data 0 512 }  { fifo_A_PE_4_0_x056_empty_n fifo_status 0 1 }  { fifo_A_PE_4_0_x056_read fifo_update 1 1 } } }
	fifo_A_PE_4_1_x057 { ap_fifo {  { fifo_A_PE_4_1_x057_din fifo_data 1 512 }  { fifo_A_PE_4_1_x057_full_n fifo_status 0 1 }  { fifo_A_PE_4_1_x057_write fifo_update 1 1 } } }
	fifo_B_PE_4_0_x096 { ap_fifo {  { fifo_B_PE_4_0_x096_dout fifo_data 0 512 }  { fifo_B_PE_4_0_x096_empty_n fifo_status 0 1 }  { fifo_B_PE_4_0_x096_read fifo_update 1 1 } } }
	fifo_B_PE_5_0_x097 { ap_fifo {  { fifo_B_PE_5_0_x097_din fifo_data 1 512 }  { fifo_B_PE_5_0_x097_full_n fifo_status 0 1 }  { fifo_B_PE_5_0_x097_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_0_x0168 { ap_fifo {  { fifo_C_drain_PE_4_0_x0168_din fifo_data 1 16 }  { fifo_C_drain_PE_4_0_x0168_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_0_x0168_write fifo_update 1 1 } } }
}
