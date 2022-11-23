set moduleName PE_wrapper_3_5_x1
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
set C_modelName {PE_wrapper_3_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_5_x160 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_6_x161 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_5_x1148 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_5_x1149 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_5_x1215 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_5_x160", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_6_x161", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_5_x1148", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_5_x1149", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_5_x1215", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_5_x160_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_5_x160_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x160_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_6_x161_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_6_x161_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_6_x161_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_5_x1148_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_5_x1148_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_5_x1148_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_5_x1149_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_5_x1149_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_5_x1149_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_5_x1215_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_5_x1215_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_5_x1215_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_5_x160_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x160", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_5_x160_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x160", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x160_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x160", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_6_x161_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x161", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_6_x161_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x161", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_6_x161_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x161", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_5_x1148_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1148", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_5_x1148_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1148", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_5_x1148_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1148", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_5_x1149_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1149", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_5_x1149_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1149", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_5_x1149_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1149", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1215_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1215", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1215_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1215", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1215_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1215", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_3_5_x1",
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
			{"Name" : "fifo_A_PE_3_5_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x1148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x1148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x1149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x1149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x1215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x1215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1242", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_5_x1 {
		fifo_A_PE_3_5_x160 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_6_x161 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_5_x1148 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_5_x1149 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_5_x1215 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_5_x160 { ap_fifo {  { fifo_A_PE_3_5_x160_dout fifo_data 0 512 }  { fifo_A_PE_3_5_x160_empty_n fifo_status 0 1 }  { fifo_A_PE_3_5_x160_read fifo_update 1 1 } } }
	fifo_A_PE_3_6_x161 { ap_fifo {  { fifo_A_PE_3_6_x161_din fifo_data 1 512 }  { fifo_A_PE_3_6_x161_full_n fifo_status 0 1 }  { fifo_A_PE_3_6_x161_write fifo_update 1 1 } } }
	fifo_B_PE_3_5_x1148 { ap_fifo {  { fifo_B_PE_3_5_x1148_dout fifo_data 0 512 }  { fifo_B_PE_3_5_x1148_empty_n fifo_status 0 1 }  { fifo_B_PE_3_5_x1148_read fifo_update 1 1 } } }
	fifo_B_PE_4_5_x1149 { ap_fifo {  { fifo_B_PE_4_5_x1149_din fifo_data 1 512 }  { fifo_B_PE_4_5_x1149_full_n fifo_status 0 1 }  { fifo_B_PE_4_5_x1149_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_5_x1215 { ap_fifo {  { fifo_C_drain_PE_3_5_x1215_din fifo_data 1 16 }  { fifo_C_drain_PE_3_5_x1215_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_5_x1215_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_3_5_x1
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
set C_modelName {PE_wrapper_3_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_5_x152 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_6_x153 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_5_x1140 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_5_x1141 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_5_x1207 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_5_x152", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_6_x153", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_5_x1140", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_5_x1141", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_5_x1207", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_5_x152_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_5_x152_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x152_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_6_x153_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_6_x153_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_6_x153_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_5_x1140_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_5_x1140_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_5_x1140_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_5_x1141_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_5_x1141_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_5_x1141_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_5_x1207_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_5_x1207_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_5_x1207_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_5_x152_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x152", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_5_x152_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x152", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x152_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x152", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_6_x153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x153", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_6_x153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x153", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_6_x153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x153", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_5_x1140_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1140", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_5_x1140_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1140", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_5_x1140_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1140", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_5_x1141_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1141", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_5_x1141_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1141", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_5_x1141_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1141", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1207_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1207", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1207_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1207", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1207_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1207", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_3_5_x1",
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
			{"Name" : "fifo_A_PE_3_5_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x1140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x1140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x1141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x1141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x1207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x1207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1234", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_5_x1 {
		fifo_A_PE_3_5_x152 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_6_x153 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_5_x1140 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_5_x1141 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_5_x1207 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_5_x152 { ap_fifo {  { fifo_A_PE_3_5_x152_dout fifo_data 0 512 }  { fifo_A_PE_3_5_x152_empty_n fifo_status 0 1 }  { fifo_A_PE_3_5_x152_read fifo_update 1 1 } } }
	fifo_A_PE_3_6_x153 { ap_fifo {  { fifo_A_PE_3_6_x153_din fifo_data 1 512 }  { fifo_A_PE_3_6_x153_full_n fifo_status 0 1 }  { fifo_A_PE_3_6_x153_write fifo_update 1 1 } } }
	fifo_B_PE_3_5_x1140 { ap_fifo {  { fifo_B_PE_3_5_x1140_dout fifo_data 0 512 }  { fifo_B_PE_3_5_x1140_empty_n fifo_status 0 1 }  { fifo_B_PE_3_5_x1140_read fifo_update 1 1 } } }
	fifo_B_PE_4_5_x1141 { ap_fifo {  { fifo_B_PE_4_5_x1141_din fifo_data 1 512 }  { fifo_B_PE_4_5_x1141_full_n fifo_status 0 1 }  { fifo_B_PE_4_5_x1141_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_5_x1207 { ap_fifo {  { fifo_C_drain_PE_3_5_x1207_din fifo_data 1 16 }  { fifo_C_drain_PE_3_5_x1207_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_5_x1207_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_3_5_x1
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
set C_modelName {PE_wrapper_3_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_5_x152 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_6_x153 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_5_x1140 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_5_x1141 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_5_x1207 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_5_x152", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_6_x153", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_5_x1140", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_5_x1141", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_5_x1207", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_5_x152_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_5_x152_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x152_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_6_x153_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_6_x153_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_6_x153_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_5_x1140_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_5_x1140_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_5_x1140_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_5_x1141_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_5_x1141_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_5_x1141_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_5_x1207_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_5_x1207_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_5_x1207_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_5_x152_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x152", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_5_x152_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x152", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x152_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x152", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_6_x153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x153", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_6_x153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x153", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_6_x153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x153", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_5_x1140_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1140", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_5_x1140_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1140", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_5_x1140_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x1140", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_5_x1141_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1141", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_5_x1141_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1141", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_5_x1141_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x1141", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1207_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1207", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1207_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1207", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_5_x1207_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_5_x1207", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_3_5_x1",
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
			{"Name" : "fifo_A_PE_3_5_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x1140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x1140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x1141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x1141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x1207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x1207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1245", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_5_x1 {
		fifo_A_PE_3_5_x152 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_6_x153 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_5_x1140 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_5_x1141 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_5_x1207 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_5_x152 { ap_fifo {  { fifo_A_PE_3_5_x152_dout fifo_data 0 512 }  { fifo_A_PE_3_5_x152_empty_n fifo_status 0 1 }  { fifo_A_PE_3_5_x152_read fifo_update 1 1 } } }
	fifo_A_PE_3_6_x153 { ap_fifo {  { fifo_A_PE_3_6_x153_din fifo_data 1 512 }  { fifo_A_PE_3_6_x153_full_n fifo_status 0 1 }  { fifo_A_PE_3_6_x153_write fifo_update 1 1 } } }
	fifo_B_PE_3_5_x1140 { ap_fifo {  { fifo_B_PE_3_5_x1140_dout fifo_data 0 512 }  { fifo_B_PE_3_5_x1140_empty_n fifo_status 0 1 }  { fifo_B_PE_3_5_x1140_read fifo_update 1 1 } } }
	fifo_B_PE_4_5_x1141 { ap_fifo {  { fifo_B_PE_4_5_x1141_din fifo_data 1 512 }  { fifo_B_PE_4_5_x1141_full_n fifo_status 0 1 }  { fifo_B_PE_4_5_x1141_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_5_x1207 { ap_fifo {  { fifo_C_drain_PE_3_5_x1207_din fifo_data 1 16 }  { fifo_C_drain_PE_3_5_x1207_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_5_x1207_write fifo_update 1 1 } } }
}
