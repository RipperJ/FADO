set moduleName PE_wrapper_5_1_x1
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
set C_modelName {PE_wrapper_5_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_1_x174 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_2_x175 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_1_x1114 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_1_x1115 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_1_x1185 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_1_x174", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_2_x175", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_1_x1114", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x1115", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_1_x1185", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_1_x174_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_1_x174_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_1_x174_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_2_x175_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_2_x175_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_2_x175_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_1_x1114_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_1_x1114_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_1_x1114_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x1115_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_1_x1115_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_1_x1115_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_1_x1185_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_1_x1185_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_1_x1185_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_1_x174_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x174", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_1_x174_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x174", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_1_x174_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x174", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_2_x175_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x175", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_2_x175_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x175", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_2_x175_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x175", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_1_x1114_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1114", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_1_x1114_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1114", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_1_x1114_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1114", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_1_x1115_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1115", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_1_x1115_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1115", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x1115_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1115", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1185_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1185", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1185_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1185", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1185_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1185", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_1_x1",
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
			{"Name" : "fifo_A_PE_5_1_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1314", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_1_x1 {
		fifo_A_PE_5_1_x174 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_2_x175 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_1_x1114 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_1_x1115 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_1_x1185 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_1_x174 { ap_fifo {  { fifo_A_PE_5_1_x174_dout fifo_data 0 512 }  { fifo_A_PE_5_1_x174_empty_n fifo_status 0 1 }  { fifo_A_PE_5_1_x174_read fifo_update 1 1 } } }
	fifo_A_PE_5_2_x175 { ap_fifo {  { fifo_A_PE_5_2_x175_din fifo_data 1 512 }  { fifo_A_PE_5_2_x175_full_n fifo_status 0 1 }  { fifo_A_PE_5_2_x175_write fifo_update 1 1 } } }
	fifo_B_PE_5_1_x1114 { ap_fifo {  { fifo_B_PE_5_1_x1114_dout fifo_data 0 512 }  { fifo_B_PE_5_1_x1114_empty_n fifo_status 0 1 }  { fifo_B_PE_5_1_x1114_read fifo_update 1 1 } } }
	fifo_B_PE_6_1_x1115 { ap_fifo {  { fifo_B_PE_6_1_x1115_din fifo_data 1 512 }  { fifo_B_PE_6_1_x1115_full_n fifo_status 0 1 }  { fifo_B_PE_6_1_x1115_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_1_x1185 { ap_fifo {  { fifo_C_drain_PE_5_1_x1185_din fifo_data 1 16 }  { fifo_C_drain_PE_5_1_x1185_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_1_x1185_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_5_1_x1
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
set C_modelName {PE_wrapper_5_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_1_x166 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_2_x167 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_1_x1106 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_1_x1107 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_1_x1177 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_1_x166", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_2_x167", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_1_x1106", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x1107", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_1_x1177", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_1_x166_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_1_x166_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_1_x166_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_2_x167_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_2_x167_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_2_x167_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_1_x1106_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_1_x1106_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_1_x1106_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x1107_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_1_x1107_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_1_x1107_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_1_x1177_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_1_x1177_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_1_x1177_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_1_x166_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x166", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_1_x166_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x166", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_1_x166_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x166", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_2_x167_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x167", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_2_x167_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x167", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_2_x167_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x167", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1177", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1177", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1177", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_1_x1",
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
			{"Name" : "fifo_A_PE_5_1_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x1106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1306", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_1_x1 {
		fifo_A_PE_5_1_x166 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_2_x167 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_1_x1106 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_1_x1107 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_1_x1177 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_1_x166 { ap_fifo {  { fifo_A_PE_5_1_x166_dout fifo_data 0 512 }  { fifo_A_PE_5_1_x166_empty_n fifo_status 0 1 }  { fifo_A_PE_5_1_x166_read fifo_update 1 1 } } }
	fifo_A_PE_5_2_x167 { ap_fifo {  { fifo_A_PE_5_2_x167_din fifo_data 1 512 }  { fifo_A_PE_5_2_x167_full_n fifo_status 0 1 }  { fifo_A_PE_5_2_x167_write fifo_update 1 1 } } }
	fifo_B_PE_5_1_x1106 { ap_fifo {  { fifo_B_PE_5_1_x1106_dout fifo_data 0 512 }  { fifo_B_PE_5_1_x1106_empty_n fifo_status 0 1 }  { fifo_B_PE_5_1_x1106_read fifo_update 1 1 } } }
	fifo_B_PE_6_1_x1107 { ap_fifo {  { fifo_B_PE_6_1_x1107_din fifo_data 1 512 }  { fifo_B_PE_6_1_x1107_full_n fifo_status 0 1 }  { fifo_B_PE_6_1_x1107_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_1_x1177 { ap_fifo {  { fifo_C_drain_PE_5_1_x1177_din fifo_data 1 16 }  { fifo_C_drain_PE_5_1_x1177_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_1_x1177_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_5_1_x1
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
set C_modelName {PE_wrapper_5_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_1_x166 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_2_x167 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_1_x1106 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_1_x1107 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_1_x1177 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_1_x166", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_2_x167", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_1_x1106", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x1107", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_1_x1177", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_1_x166_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_1_x166_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_1_x166_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_2_x167_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_2_x167_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_2_x167_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_1_x1106_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_1_x1106_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_1_x1106_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x1107_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_1_x1107_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_1_x1107_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_1_x1177_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_1_x1177_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_1_x1177_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_1_x166_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x166", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_1_x166_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x166", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_1_x166_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x166", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_2_x167_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x167", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_2_x167_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x167", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_2_x167_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_2_x167", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_1_x1106_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_1_x1106", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1177", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1177", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_1_x1177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_1_x1177", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_1_x1",
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
			{"Name" : "fifo_A_PE_5_1_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x1106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1317", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_1_x1 {
		fifo_A_PE_5_1_x166 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_2_x167 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_1_x1106 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_1_x1107 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_1_x1177 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_1_x166 { ap_fifo {  { fifo_A_PE_5_1_x166_dout fifo_data 0 512 }  { fifo_A_PE_5_1_x166_empty_n fifo_status 0 1 }  { fifo_A_PE_5_1_x166_read fifo_update 1 1 } } }
	fifo_A_PE_5_2_x167 { ap_fifo {  { fifo_A_PE_5_2_x167_din fifo_data 1 512 }  { fifo_A_PE_5_2_x167_full_n fifo_status 0 1 }  { fifo_A_PE_5_2_x167_write fifo_update 1 1 } } }
	fifo_B_PE_5_1_x1106 { ap_fifo {  { fifo_B_PE_5_1_x1106_dout fifo_data 0 512 }  { fifo_B_PE_5_1_x1106_empty_n fifo_status 0 1 }  { fifo_B_PE_5_1_x1106_read fifo_update 1 1 } } }
	fifo_B_PE_6_1_x1107 { ap_fifo {  { fifo_B_PE_6_1_x1107_din fifo_data 1 512 }  { fifo_B_PE_6_1_x1107_full_n fifo_status 0 1 }  { fifo_B_PE_6_1_x1107_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_1_x1177 { ap_fifo {  { fifo_C_drain_PE_5_1_x1177_din fifo_data 1 16 }  { fifo_C_drain_PE_5_1_x1177_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_1_x1177_write fifo_update 1 1 } } }
}
