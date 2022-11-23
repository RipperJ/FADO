set moduleName PE_wrapper_4_1_x1
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
set C_modelName {PE_wrapper_4_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_1_x165 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_2_x166 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_1_x1113 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_1_x1114 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_1_x1184 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_1_x165", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_2_x166", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_1_x1113", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_1_x1114", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_1_x1184", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_1_x165_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_1_x165_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x165_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_2_x166_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_2_x166_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_2_x166_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_1_x1113_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_1_x1113_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_1_x1113_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_1_x1114_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_1_x1114_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_1_x1114_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_1_x1184_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_1_x1184_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_1_x1184_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_1_x165_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x165", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_1_x165_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x165", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x165_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x165", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_2_x166_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x166", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_2_x166_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x166", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_2_x166_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x166", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_1_x1113_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1113", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_1_x1113_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1113", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_1_x1113_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1113", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_1_x1114_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1114", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_1_x1114_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1114", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_1_x1114_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1114", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1184_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1184", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1184_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1184", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1184_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1184", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_1_x1",
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
			{"Name" : "fifo_A_PE_4_1_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1266", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_1_x1 {
		fifo_A_PE_4_1_x165 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_2_x166 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_1_x1113 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_1_x1114 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_1_x1184 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_1_x165 { ap_fifo {  { fifo_A_PE_4_1_x165_dout fifo_data 0 512 }  { fifo_A_PE_4_1_x165_empty_n fifo_status 0 1 }  { fifo_A_PE_4_1_x165_read fifo_update 1 1 } } }
	fifo_A_PE_4_2_x166 { ap_fifo {  { fifo_A_PE_4_2_x166_din fifo_data 1 512 }  { fifo_A_PE_4_2_x166_full_n fifo_status 0 1 }  { fifo_A_PE_4_2_x166_write fifo_update 1 1 } } }
	fifo_B_PE_4_1_x1113 { ap_fifo {  { fifo_B_PE_4_1_x1113_dout fifo_data 0 512 }  { fifo_B_PE_4_1_x1113_empty_n fifo_status 0 1 }  { fifo_B_PE_4_1_x1113_read fifo_update 1 1 } } }
	fifo_B_PE_5_1_x1114 { ap_fifo {  { fifo_B_PE_5_1_x1114_din fifo_data 1 512 }  { fifo_B_PE_5_1_x1114_full_n fifo_status 0 1 }  { fifo_B_PE_5_1_x1114_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_1_x1184 { ap_fifo {  { fifo_C_drain_PE_4_1_x1184_din fifo_data 1 16 }  { fifo_C_drain_PE_4_1_x1184_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_1_x1184_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_1_x1
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
set C_modelName {PE_wrapper_4_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_1_x157 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_2_x158 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_1_x1105 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_1_x1106 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_1_x1176 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_1_x157", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_2_x158", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_1_x1105", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_1_x1106", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_1_x1176", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_1_x157_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_1_x157_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x157_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_2_x158_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_2_x158_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_2_x158_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_1_x1105_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_1_x1105_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_1_x1105_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_1_x1106_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_1_x1106_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_1_x1106_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_1_x1176_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_1_x1176_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_1_x1176_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_1_x1",
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
			{"Name" : "fifo_A_PE_4_1_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x1105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x1106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1258", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_1_x1 {
		fifo_A_PE_4_1_x157 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_2_x158 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_1_x1105 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_1_x1106 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_1_x1176 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_1_x157 { ap_fifo {  { fifo_A_PE_4_1_x157_dout fifo_data 0 512 }  { fifo_A_PE_4_1_x157_empty_n fifo_status 0 1 }  { fifo_A_PE_4_1_x157_read fifo_update 1 1 } } }
	fifo_A_PE_4_2_x158 { ap_fifo {  { fifo_A_PE_4_2_x158_din fifo_data 1 512 }  { fifo_A_PE_4_2_x158_full_n fifo_status 0 1 }  { fifo_A_PE_4_2_x158_write fifo_update 1 1 } } }
	fifo_B_PE_4_1_x1105 { ap_fifo {  { fifo_B_PE_4_1_x1105_dout fifo_data 0 512 }  { fifo_B_PE_4_1_x1105_empty_n fifo_status 0 1 }  { fifo_B_PE_4_1_x1105_read fifo_update 1 1 } } }
	fifo_B_PE_5_1_x1106 { ap_fifo {  { fifo_B_PE_5_1_x1106_din fifo_data 1 512 }  { fifo_B_PE_5_1_x1106_full_n fifo_status 0 1 }  { fifo_B_PE_5_1_x1106_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_1_x1176 { ap_fifo {  { fifo_C_drain_PE_4_1_x1176_din fifo_data 1 16 }  { fifo_C_drain_PE_4_1_x1176_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_1_x1176_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_1_x1
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
set C_modelName {PE_wrapper_4_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_1_x157 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_2_x158 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_1_x1105 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_1_x1106 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_1_x1176 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_1_x157", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_2_x158", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_1_x1105", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_1_x1106", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_1_x1176", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_1_x157_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_1_x157_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x157_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_2_x158_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_2_x158_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_2_x158_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_1_x1105_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_1_x1105_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_1_x1105_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_1_x1106_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_1_x1106_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_1_x1106_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_1_x1176_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_1_x1176_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_1_x1176_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65011713", "EstimateLatencyMax" : "65011713",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_1_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x1105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x1106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3371", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_1_x1 {
		fifo_A_PE_4_1_x157 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_4_2_x158 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_4_1_x1105 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_5_1_x1106 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_4_1_x1176 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_1_x157 { ap_fifo {  { fifo_A_PE_4_1_x157_dout fifo_data 0 512 }  { fifo_A_PE_4_1_x157_empty_n fifo_status 0 1 }  { fifo_A_PE_4_1_x157_read fifo_update 1 1 } } }
	fifo_A_PE_4_2_x158 { ap_fifo {  { fifo_A_PE_4_2_x158_din fifo_data 1 512 }  { fifo_A_PE_4_2_x158_full_n fifo_status 0 1 }  { fifo_A_PE_4_2_x158_write fifo_update 1 1 } } }
	fifo_B_PE_4_1_x1105 { ap_fifo {  { fifo_B_PE_4_1_x1105_dout fifo_data 0 512 }  { fifo_B_PE_4_1_x1105_empty_n fifo_status 0 1 }  { fifo_B_PE_4_1_x1105_read fifo_update 1 1 } } }
	fifo_B_PE_5_1_x1106 { ap_fifo {  { fifo_B_PE_5_1_x1106_din fifo_data 1 512 }  { fifo_B_PE_5_1_x1106_full_n fifo_status 0 1 }  { fifo_B_PE_5_1_x1106_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_1_x1176 { ap_fifo {  { fifo_C_drain_PE_4_1_x1176_din fifo_data 1 16 }  { fifo_C_drain_PE_4_1_x1176_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_1_x1176_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_1_x1
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
set C_modelName {PE_wrapper_4_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_1_x157 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_2_x158 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_1_x1105 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_1_x1106 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_1_x1176 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_1_x157", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_2_x158", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_1_x1105", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_1_x1106", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_1_x1176", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_1_x157_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_1_x157_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x157_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_2_x158_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_2_x158_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_2_x158_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_1_x1105_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_1_x1105_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_1_x1105_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_1_x1106_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_1_x1106_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_1_x1106_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_1_x1176_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_1_x1176_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_1_x1176_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x157_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x157", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_2_x158_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_2_x158", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_1_x1176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_1_x1176", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65011713", "EstimateLatencyMax" : "65011713",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_1_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x1105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x1106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3371", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_1_x1 {
		fifo_A_PE_4_1_x157 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_4_2_x158 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_4_1_x1105 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_5_1_x1106 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_4_1_x1176 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_1_x157 { ap_fifo {  { fifo_A_PE_4_1_x157_dout fifo_data 0 512 }  { fifo_A_PE_4_1_x157_empty_n fifo_status 0 1 }  { fifo_A_PE_4_1_x157_read fifo_update 1 1 } } }
	fifo_A_PE_4_2_x158 { ap_fifo {  { fifo_A_PE_4_2_x158_din fifo_data 1 512 }  { fifo_A_PE_4_2_x158_full_n fifo_status 0 1 }  { fifo_A_PE_4_2_x158_write fifo_update 1 1 } } }
	fifo_B_PE_4_1_x1105 { ap_fifo {  { fifo_B_PE_4_1_x1105_dout fifo_data 0 512 }  { fifo_B_PE_4_1_x1105_empty_n fifo_status 0 1 }  { fifo_B_PE_4_1_x1105_read fifo_update 1 1 } } }
	fifo_B_PE_5_1_x1106 { ap_fifo {  { fifo_B_PE_5_1_x1106_din fifo_data 1 512 }  { fifo_B_PE_5_1_x1106_full_n fifo_status 0 1 }  { fifo_B_PE_5_1_x1106_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_1_x1176 { ap_fifo {  { fifo_C_drain_PE_4_1_x1176_din fifo_data 1 16 }  { fifo_C_drain_PE_4_1_x1176_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_1_x1176_write fifo_update 1 1 } } }
}
