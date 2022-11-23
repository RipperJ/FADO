set moduleName PE_wrapper_4_4_x0
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
set C_modelName {PE_wrapper_4_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_4_x060 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_5_x061 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_4_x0132 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_4_x0133 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_4_x0200 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_4_x060", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_5_x061", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x0132", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_4_x0133", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_4_x0200", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_4_x060_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_4_x060_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_4_x060_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_5_x061_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_5_x061_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_5_x061_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_4_x0132_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_4_x0132_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x0132_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_4_x0133_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_4_x0133_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_4_x0133_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_4_x0200_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_4_x0200_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_4_x0200_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_4_x0",
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
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U294", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_4_x0 {
		fifo_A_PE_4_4_x060 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_5_x061 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_4_x0132 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_4_x0133 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_4_x0200 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_4_x060 { ap_fifo {  { fifo_A_PE_4_4_x060_dout fifo_data 0 512 }  { fifo_A_PE_4_4_x060_empty_n fifo_status 0 1 }  { fifo_A_PE_4_4_x060_read fifo_update 1 1 } } }
	fifo_A_PE_4_5_x061 { ap_fifo {  { fifo_A_PE_4_5_x061_din fifo_data 1 512 }  { fifo_A_PE_4_5_x061_full_n fifo_status 0 1 }  { fifo_A_PE_4_5_x061_write fifo_update 1 1 } } }
	fifo_B_PE_4_4_x0132 { ap_fifo {  { fifo_B_PE_4_4_x0132_dout fifo_data 0 512 }  { fifo_B_PE_4_4_x0132_empty_n fifo_status 0 1 }  { fifo_B_PE_4_4_x0132_read fifo_update 1 1 } } }
	fifo_B_PE_5_4_x0133 { ap_fifo {  { fifo_B_PE_5_4_x0133_din fifo_data 1 512 }  { fifo_B_PE_5_4_x0133_full_n fifo_status 0 1 }  { fifo_B_PE_5_4_x0133_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_4_x0200 { ap_fifo {  { fifo_C_drain_PE_4_4_x0200_din fifo_data 1 16 }  { fifo_C_drain_PE_4_4_x0200_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_4_x0200_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_4_x0
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
set C_modelName {PE_wrapper_4_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_4_x060 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_5_x061 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_4_x0132 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_4_x0133 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_4_x0200 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_4_x060", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_5_x061", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x0132", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_4_x0133", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_4_x0200", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_4_x060_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_4_x060_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_4_x060_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_5_x061_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_5_x061_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_5_x061_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_4_x0132_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_4_x0132_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x0132_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_4_x0133_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_4_x0133_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_4_x0133_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_4_x0200_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_4_x0200_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_4_x0200_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_4_4_x0",
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
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1414", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1415", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1416", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1417", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1418", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1419", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1420", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1421", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1422", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1423", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1424", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1425", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1426", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1427", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1428", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1429", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1430", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1431", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1432", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1433", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1434", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1435", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1436", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1437", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1438", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1439", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1440", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1441", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1442", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1443", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1444", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1445", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_4_x0 {
		fifo_A_PE_4_4_x060 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_4_5_x061 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_4_4_x0132 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_5_4_x0133 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_4_4_x0200 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048584", "Max" : "1048584"}
	, {"Name" : "Interval", "Min" : "1048584", "Max" : "1048584"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_4_x060 { ap_fifo {  { fifo_A_PE_4_4_x060_dout fifo_data 0 512 }  { fifo_A_PE_4_4_x060_empty_n fifo_status 0 1 }  { fifo_A_PE_4_4_x060_read fifo_update 1 1 } } }
	fifo_A_PE_4_5_x061 { ap_fifo {  { fifo_A_PE_4_5_x061_din fifo_data 1 512 }  { fifo_A_PE_4_5_x061_full_n fifo_status 0 1 }  { fifo_A_PE_4_5_x061_write fifo_update 1 1 } } }
	fifo_B_PE_4_4_x0132 { ap_fifo {  { fifo_B_PE_4_4_x0132_dout fifo_data 0 512 }  { fifo_B_PE_4_4_x0132_empty_n fifo_status 0 1 }  { fifo_B_PE_4_4_x0132_read fifo_update 1 1 } } }
	fifo_B_PE_5_4_x0133 { ap_fifo {  { fifo_B_PE_5_4_x0133_din fifo_data 1 512 }  { fifo_B_PE_5_4_x0133_full_n fifo_status 0 1 }  { fifo_B_PE_5_4_x0133_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_4_x0200 { ap_fifo {  { fifo_C_drain_PE_4_4_x0200_din fifo_data 1 16 }  { fifo_C_drain_PE_4_4_x0200_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_4_x0200_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_4_x0
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
set C_modelName {PE_wrapper_4_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_4_x060 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_5_x061 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_4_x0132 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_4_x0133 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_4_x0200 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_4_x060", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_5_x061", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x0132", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_4_x0133", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_4_x0200", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_4_x060_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_4_x060_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_4_x060_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_5_x061_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_5_x061_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_5_x061_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_4_x0132_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_4_x0132_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x0132_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_4_x0133_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_4_x0133_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_4_x0133_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_4_x0200_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_4_x0200_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_4_x0200_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_4_x060_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_4_x060", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_5_x061_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_5_x061", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_4_x0133_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x0133", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_4_x0200_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_4_x0200", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_4_4_x0",
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
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1414", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1415", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1416", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1417", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1418", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1419", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1420", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1421", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1422", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1423", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1424", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1425", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1426", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1427", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1428", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1429", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1430", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1431", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1432", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1433", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1434", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1435", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1436", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1437", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1438", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1439", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1440", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1441", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1442", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1443", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1444", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1445", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_4_x0 {
		fifo_A_PE_4_4_x060 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_4_5_x061 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_4_4_x0132 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_5_4_x0133 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_4_4_x0200 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048584", "Max" : "1048584"}
	, {"Name" : "Interval", "Min" : "1048584", "Max" : "1048584"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_4_x060 { ap_fifo {  { fifo_A_PE_4_4_x060_dout fifo_data 0 512 }  { fifo_A_PE_4_4_x060_empty_n fifo_status 0 1 }  { fifo_A_PE_4_4_x060_read fifo_update 1 1 } } }
	fifo_A_PE_4_5_x061 { ap_fifo {  { fifo_A_PE_4_5_x061_din fifo_data 1 512 }  { fifo_A_PE_4_5_x061_full_n fifo_status 0 1 }  { fifo_A_PE_4_5_x061_write fifo_update 1 1 } } }
	fifo_B_PE_4_4_x0132 { ap_fifo {  { fifo_B_PE_4_4_x0132_dout fifo_data 0 512 }  { fifo_B_PE_4_4_x0132_empty_n fifo_status 0 1 }  { fifo_B_PE_4_4_x0132_read fifo_update 1 1 } } }
	fifo_B_PE_5_4_x0133 { ap_fifo {  { fifo_B_PE_5_4_x0133_din fifo_data 1 512 }  { fifo_B_PE_5_4_x0133_full_n fifo_status 0 1 }  { fifo_B_PE_5_4_x0133_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_4_x0200 { ap_fifo {  { fifo_C_drain_PE_4_4_x0200_din fifo_data 1 16 }  { fifo_C_drain_PE_4_4_x0200_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_4_x0200_write fifo_update 1 1 } } }
}
