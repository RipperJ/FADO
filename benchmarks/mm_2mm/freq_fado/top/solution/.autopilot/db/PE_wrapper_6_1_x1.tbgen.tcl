set moduleName PE_wrapper_6_1_x1
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
set C_modelName {PE_wrapper_6_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_1_x183 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_2_x184 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_1_x1115 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_1_x1116 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_1_x1186 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_1_x183", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_2_x184", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x1115", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_1_x1116", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_1_x1186", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_1_x183_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_1_x183_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_1_x183_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x184_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_2_x184_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_2_x184_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_1_x1115_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_1_x1115_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x1115_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_1_x1116_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_1_x1116_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_1_x1116_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_1_x1186_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_1_x1186_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_1_x1186_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_1_x183_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x183", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_1_x183_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x183", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_1_x183_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x183", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_2_x184_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x184", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_2_x184_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x184", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x184_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x184", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_1_x1115_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1115", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_1_x1115_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1115", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x1115_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1115", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_1_x1116_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1116", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_1_x1116_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1116", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_1_x1116_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1116", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1186", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1186", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1186", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_1_x1",
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
			{"Name" : "fifo_A_PE_6_1_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1362", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_1_x1 {
		fifo_A_PE_6_1_x183 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_2_x184 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_1_x1115 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_1_x1116 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_1_x1186 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_1_x183 { ap_fifo {  { fifo_A_PE_6_1_x183_dout fifo_data 0 512 }  { fifo_A_PE_6_1_x183_empty_n fifo_status 0 1 }  { fifo_A_PE_6_1_x183_read fifo_update 1 1 } } }
	fifo_A_PE_6_2_x184 { ap_fifo {  { fifo_A_PE_6_2_x184_din fifo_data 1 512 }  { fifo_A_PE_6_2_x184_full_n fifo_status 0 1 }  { fifo_A_PE_6_2_x184_write fifo_update 1 1 } } }
	fifo_B_PE_6_1_x1115 { ap_fifo {  { fifo_B_PE_6_1_x1115_dout fifo_data 0 512 }  { fifo_B_PE_6_1_x1115_empty_n fifo_status 0 1 }  { fifo_B_PE_6_1_x1115_read fifo_update 1 1 } } }
	fifo_B_PE_7_1_x1116 { ap_fifo {  { fifo_B_PE_7_1_x1116_din fifo_data 1 512 }  { fifo_B_PE_7_1_x1116_full_n fifo_status 0 1 }  { fifo_B_PE_7_1_x1116_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_1_x1186 { ap_fifo {  { fifo_C_drain_PE_6_1_x1186_din fifo_data 1 16 }  { fifo_C_drain_PE_6_1_x1186_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_1_x1186_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_1_x1
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
set C_modelName {PE_wrapper_6_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_1_x175 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_2_x176 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_1_x1107 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_1_x1108 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_1_x1178 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_1_x175", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_2_x176", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x1107", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_1_x1108", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_1_x1178", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_1_x175_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_1_x175_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_1_x175_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x176_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_2_x176_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_2_x176_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_1_x1107_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_1_x1107_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x1107_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_1_x1108_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_1_x1108_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_1_x1108_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_1_x1178_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_1_x1178_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_1_x1178_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_1_x175_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x175", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_1_x175_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x175", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_1_x175_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x175", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_1_x1108_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1108", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_1_x1108_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1108", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_1_x1108_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1108", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1178_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1178", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1178_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1178", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1178_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1178", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_1_x1",
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
			{"Name" : "fifo_A_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x1108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1354", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_1_x1 {
		fifo_A_PE_6_1_x175 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_2_x176 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_1_x1107 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_1_x1108 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_1_x1178 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_1_x175 { ap_fifo {  { fifo_A_PE_6_1_x175_dout fifo_data 0 512 }  { fifo_A_PE_6_1_x175_empty_n fifo_status 0 1 }  { fifo_A_PE_6_1_x175_read fifo_update 1 1 } } }
	fifo_A_PE_6_2_x176 { ap_fifo {  { fifo_A_PE_6_2_x176_din fifo_data 1 512 }  { fifo_A_PE_6_2_x176_full_n fifo_status 0 1 }  { fifo_A_PE_6_2_x176_write fifo_update 1 1 } } }
	fifo_B_PE_6_1_x1107 { ap_fifo {  { fifo_B_PE_6_1_x1107_dout fifo_data 0 512 }  { fifo_B_PE_6_1_x1107_empty_n fifo_status 0 1 }  { fifo_B_PE_6_1_x1107_read fifo_update 1 1 } } }
	fifo_B_PE_7_1_x1108 { ap_fifo {  { fifo_B_PE_7_1_x1108_din fifo_data 1 512 }  { fifo_B_PE_7_1_x1108_full_n fifo_status 0 1 }  { fifo_B_PE_7_1_x1108_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_1_x1178 { ap_fifo {  { fifo_C_drain_PE_6_1_x1178_din fifo_data 1 16 }  { fifo_C_drain_PE_6_1_x1178_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_1_x1178_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_1_x1
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
set C_modelName {PE_wrapper_6_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_1_x175 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_2_x176 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_1_x1107 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_1_x1108 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_1_x1178 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_1_x175", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_2_x176", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x1107", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_1_x1108", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_1_x1178", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_1_x175_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_1_x175_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_1_x175_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x176_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_2_x176_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_2_x176_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_1_x1107_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_1_x1107_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x1107_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_1_x1108_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_1_x1108_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_1_x1108_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_1_x1178_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_1_x1178_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_1_x1178_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_1_x175_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x175", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_1_x175_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x175", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_1_x175_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x175", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x1107_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x1107", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_1_x1108_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1108", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_1_x1108_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1108", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_1_x1108_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x1108", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1178_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1178", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1178_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1178", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1178_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1178", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_1_x1",
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
			{"Name" : "fifo_A_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x1108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3544", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_1_x1 {
		fifo_A_PE_6_1_x175 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_6_2_x176 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_6_1_x1107 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_7_1_x1108 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_6_1_x1178 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_1_x175 { ap_fifo {  { fifo_A_PE_6_1_x175_dout fifo_data 0 512 }  { fifo_A_PE_6_1_x175_empty_n fifo_status 0 1 }  { fifo_A_PE_6_1_x175_read fifo_update 1 1 } } }
	fifo_A_PE_6_2_x176 { ap_fifo {  { fifo_A_PE_6_2_x176_din fifo_data 1 512 }  { fifo_A_PE_6_2_x176_full_n fifo_status 0 1 }  { fifo_A_PE_6_2_x176_write fifo_update 1 1 } } }
	fifo_B_PE_6_1_x1107 { ap_fifo {  { fifo_B_PE_6_1_x1107_dout fifo_data 0 512 }  { fifo_B_PE_6_1_x1107_empty_n fifo_status 0 1 }  { fifo_B_PE_6_1_x1107_read fifo_update 1 1 } } }
	fifo_B_PE_7_1_x1108 { ap_fifo {  { fifo_B_PE_7_1_x1108_din fifo_data 1 512 }  { fifo_B_PE_7_1_x1108_full_n fifo_status 0 1 }  { fifo_B_PE_7_1_x1108_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_1_x1178 { ap_fifo {  { fifo_C_drain_PE_6_1_x1178_din fifo_data 1 16 }  { fifo_C_drain_PE_6_1_x1178_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_1_x1178_write fifo_update 1 1 } } }
}
