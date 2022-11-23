set moduleName PE_wrapper_7_2_x1
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
set C_modelName {PE_wrapper_7_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_2_x193 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_3_x194 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_2_x1125 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_2_x1126 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_2_x1195 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_2_x193", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_3_x194", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_2_x1125", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_2_x1126", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_2_x1195", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_2_x193_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_2_x193_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_2_x193_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_3_x194_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_3_x194_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_3_x194_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_2_x1125_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_2_x1125_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_2_x1125_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_2_x1126_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_2_x1126_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_2_x1126_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_2_x1195_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_2_x1195_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_2_x1195_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_2_x193_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x193", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_2_x193_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x193", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_2_x193_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x193", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_3_x194_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x194", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_3_x194_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x194", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_3_x194_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x194", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_2_x1125_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1125", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_2_x1125_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1125", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_2_x1125_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1125", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_2_x1126_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1126", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_2_x1126_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1126", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_2_x1126_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1126", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1195_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1195", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1195_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1195", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1195_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1195", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_2_x1",
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
			{"Name" : "fifo_A_PE_7_2_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_3_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_2_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x1195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x1195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1416", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_2_x1 {
		fifo_A_PE_7_2_x193 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_3_x194 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_2_x1125 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_2_x1126 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_2_x1195 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_2_x193 { ap_fifo {  { fifo_A_PE_7_2_x193_dout fifo_data 0 512 }  { fifo_A_PE_7_2_x193_empty_n fifo_status 0 1 }  { fifo_A_PE_7_2_x193_read fifo_update 1 1 } } }
	fifo_A_PE_7_3_x194 { ap_fifo {  { fifo_A_PE_7_3_x194_din fifo_data 1 512 }  { fifo_A_PE_7_3_x194_full_n fifo_status 0 1 }  { fifo_A_PE_7_3_x194_write fifo_update 1 1 } } }
	fifo_B_PE_7_2_x1125 { ap_fifo {  { fifo_B_PE_7_2_x1125_dout fifo_data 0 512 }  { fifo_B_PE_7_2_x1125_empty_n fifo_status 0 1 }  { fifo_B_PE_7_2_x1125_read fifo_update 1 1 } } }
	fifo_B_PE_8_2_x1126 { ap_fifo {  { fifo_B_PE_8_2_x1126_din fifo_data 1 512 }  { fifo_B_PE_8_2_x1126_full_n fifo_status 0 1 }  { fifo_B_PE_8_2_x1126_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_2_x1195 { ap_fifo {  { fifo_C_drain_PE_7_2_x1195_din fifo_data 1 16 }  { fifo_C_drain_PE_7_2_x1195_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_2_x1195_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_7_2_x1
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
set C_modelName {PE_wrapper_7_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_2_x185 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_3_x186 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_2_x1117 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_2_x1118 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_2_x1187 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_2_x185", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_3_x186", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_2_x1117", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_2_x1118", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_2_x1187", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_2_x185_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_2_x185_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_2_x185_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_3_x186_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_3_x186_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_3_x186_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_2_x1117_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_2_x1117_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_2_x1117_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_2_x1118_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_2_x1118_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_2_x1118_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_2_x1187_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_2_x1187_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_2_x1187_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_2_x185_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x185", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_2_x185_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x185", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_2_x185_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x185", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_3_x186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x186", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_3_x186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x186", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_3_x186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x186", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_2_x1118_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1118", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_2_x1118_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1118", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_2_x1118_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1118", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1187_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1187", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1187_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1187", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1187_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1187", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_2_x1",
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
			{"Name" : "fifo_A_PE_7_2_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_3_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_2_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x1187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x1187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1408", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_2_x1 {
		fifo_A_PE_7_2_x185 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_3_x186 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_2_x1117 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_2_x1118 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_2_x1187 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_2_x185 { ap_fifo {  { fifo_A_PE_7_2_x185_dout fifo_data 0 512 }  { fifo_A_PE_7_2_x185_empty_n fifo_status 0 1 }  { fifo_A_PE_7_2_x185_read fifo_update 1 1 } } }
	fifo_A_PE_7_3_x186 { ap_fifo {  { fifo_A_PE_7_3_x186_din fifo_data 1 512 }  { fifo_A_PE_7_3_x186_full_n fifo_status 0 1 }  { fifo_A_PE_7_3_x186_write fifo_update 1 1 } } }
	fifo_B_PE_7_2_x1117 { ap_fifo {  { fifo_B_PE_7_2_x1117_dout fifo_data 0 512 }  { fifo_B_PE_7_2_x1117_empty_n fifo_status 0 1 }  { fifo_B_PE_7_2_x1117_read fifo_update 1 1 } } }
	fifo_B_PE_8_2_x1118 { ap_fifo {  { fifo_B_PE_8_2_x1118_din fifo_data 1 512 }  { fifo_B_PE_8_2_x1118_full_n fifo_status 0 1 }  { fifo_B_PE_8_2_x1118_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_2_x1187 { ap_fifo {  { fifo_C_drain_PE_7_2_x1187_din fifo_data 1 16 }  { fifo_C_drain_PE_7_2_x1187_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_2_x1187_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_7_2_x1
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
set C_modelName {PE_wrapper_7_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_2_x185 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_3_x186 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_2_x1117 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_2_x1118 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_2_x1187 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_2_x185", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_3_x186", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_2_x1117", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_2_x1118", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_2_x1187", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_2_x185_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_2_x185_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_2_x185_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_3_x186_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_3_x186_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_3_x186_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_2_x1117_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_2_x1117_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_2_x1117_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_2_x1118_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_2_x1118_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_2_x1118_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_2_x1187_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_2_x1187_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_2_x1187_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_2_x185_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x185", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_2_x185_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x185", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_2_x185_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_2_x185", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_3_x186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x186", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_3_x186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x186", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_3_x186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_3_x186", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_2_x1118_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1118", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_2_x1118_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1118", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_2_x1118_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_2_x1118", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1187_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1187", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1187_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1187", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_2_x1187_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_2_x1187", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_2_x1",
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
			{"Name" : "fifo_A_PE_7_2_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_3_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_2_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x1187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x1187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3598", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_2_x1 {
		fifo_A_PE_7_2_x185 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_7_3_x186 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_7_2_x1117 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_8_2_x1118 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_7_2_x1187 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_2_x185 { ap_fifo {  { fifo_A_PE_7_2_x185_dout fifo_data 0 512 }  { fifo_A_PE_7_2_x185_empty_n fifo_status 0 1 }  { fifo_A_PE_7_2_x185_read fifo_update 1 1 } } }
	fifo_A_PE_7_3_x186 { ap_fifo {  { fifo_A_PE_7_3_x186_din fifo_data 1 512 }  { fifo_A_PE_7_3_x186_full_n fifo_status 0 1 }  { fifo_A_PE_7_3_x186_write fifo_update 1 1 } } }
	fifo_B_PE_7_2_x1117 { ap_fifo {  { fifo_B_PE_7_2_x1117_dout fifo_data 0 512 }  { fifo_B_PE_7_2_x1117_empty_n fifo_status 0 1 }  { fifo_B_PE_7_2_x1117_read fifo_update 1 1 } } }
	fifo_B_PE_8_2_x1118 { ap_fifo {  { fifo_B_PE_8_2_x1118_din fifo_data 1 512 }  { fifo_B_PE_8_2_x1118_full_n fifo_status 0 1 }  { fifo_B_PE_8_2_x1118_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_2_x1187 { ap_fifo {  { fifo_C_drain_PE_7_2_x1187_din fifo_data 1 16 }  { fifo_C_drain_PE_7_2_x1187_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_2_x1187_write fifo_update 1 1 } } }
}
