set moduleName PE_wrapper_2_6_x1
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
set C_modelName {PE_wrapper_2_6_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_6_x152 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_7_x153 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_6_x1156 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_6_x1157 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_6_x1222 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_6_x152", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_7_x153", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x1156", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_6_x1157", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_6_x1222", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_6_x152_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_6_x152_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_6_x152_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x153_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_7_x153_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_7_x153_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_6_x1156_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_6_x1156_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x1156_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_6_x1157_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_6_x1157_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_6_x1157_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_6_x1222_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_6_x1222_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_6_x1222_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_6_x152_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x152", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_6_x152_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x152", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_6_x152_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x152", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_7_x153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x153", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_7_x153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x153", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x153", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_6_x1156_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1156", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_6_x1156_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1156", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x1156_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1156", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_6_x1157_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1157", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_6_x1157_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1157", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_6_x1157_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1157", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1222_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1222", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1222_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1222", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1222_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1222", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_6_x1",
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
			{"Name" : "fifo_A_PE_2_6_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x1156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x1156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x1157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x1157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x1222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x1222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1200", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_6_x1 {
		fifo_A_PE_2_6_x152 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_7_x153 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_6_x1156 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_6_x1157 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_6_x1222 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_6_x152 { ap_fifo {  { fifo_A_PE_2_6_x152_dout fifo_data 0 512 }  { fifo_A_PE_2_6_x152_empty_n fifo_status 0 1 }  { fifo_A_PE_2_6_x152_read fifo_update 1 1 } } }
	fifo_A_PE_2_7_x153 { ap_fifo {  { fifo_A_PE_2_7_x153_din fifo_data 1 512 }  { fifo_A_PE_2_7_x153_full_n fifo_status 0 1 }  { fifo_A_PE_2_7_x153_write fifo_update 1 1 } } }
	fifo_B_PE_2_6_x1156 { ap_fifo {  { fifo_B_PE_2_6_x1156_dout fifo_data 0 512 }  { fifo_B_PE_2_6_x1156_empty_n fifo_status 0 1 }  { fifo_B_PE_2_6_x1156_read fifo_update 1 1 } } }
	fifo_B_PE_3_6_x1157 { ap_fifo {  { fifo_B_PE_3_6_x1157_din fifo_data 1 512 }  { fifo_B_PE_3_6_x1157_full_n fifo_status 0 1 }  { fifo_B_PE_3_6_x1157_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_6_x1222 { ap_fifo {  { fifo_C_drain_PE_2_6_x1222_din fifo_data 1 16 }  { fifo_C_drain_PE_2_6_x1222_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_6_x1222_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_6_x1
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
set C_modelName {PE_wrapper_2_6_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_6_x144 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_7_x145 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_6_x1148 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_6_x1149 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_6_x1214 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_6_x144", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_7_x145", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x1148", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_6_x1149", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_6_x1214", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_6_x144_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_6_x144_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_6_x144_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x145_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_7_x145_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_7_x145_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_6_x1148_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_6_x1148_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x1148_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_6_x1149_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_6_x1149_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_6_x1149_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_6_x1214_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_6_x1214_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_6_x1214_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_6_x144_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x144", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_6_x144_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x144", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_6_x144_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x144", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_7_x145_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x145", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_7_x145_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x145", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x145_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x145", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_6_x1149_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1149", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_6_x1149_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1149", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_6_x1149_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1149", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1214_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1214", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1214_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1214", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1214_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1214", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_6_x1",
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
			{"Name" : "fifo_A_PE_2_6_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x1148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x1148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x1149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x1149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x1214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x1214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1192", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_6_x1 {
		fifo_A_PE_2_6_x144 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_7_x145 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_6_x1148 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_6_x1149 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_6_x1214 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_6_x144 { ap_fifo {  { fifo_A_PE_2_6_x144_dout fifo_data 0 512 }  { fifo_A_PE_2_6_x144_empty_n fifo_status 0 1 }  { fifo_A_PE_2_6_x144_read fifo_update 1 1 } } }
	fifo_A_PE_2_7_x145 { ap_fifo {  { fifo_A_PE_2_7_x145_din fifo_data 1 512 }  { fifo_A_PE_2_7_x145_full_n fifo_status 0 1 }  { fifo_A_PE_2_7_x145_write fifo_update 1 1 } } }
	fifo_B_PE_2_6_x1148 { ap_fifo {  { fifo_B_PE_2_6_x1148_dout fifo_data 0 512 }  { fifo_B_PE_2_6_x1148_empty_n fifo_status 0 1 }  { fifo_B_PE_2_6_x1148_read fifo_update 1 1 } } }
	fifo_B_PE_3_6_x1149 { ap_fifo {  { fifo_B_PE_3_6_x1149_din fifo_data 1 512 }  { fifo_B_PE_3_6_x1149_full_n fifo_status 0 1 }  { fifo_B_PE_3_6_x1149_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_6_x1214 { ap_fifo {  { fifo_C_drain_PE_2_6_x1214_din fifo_data 1 16 }  { fifo_C_drain_PE_2_6_x1214_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_6_x1214_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_6_x1
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
set C_modelName {PE_wrapper_2_6_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_6_x144 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_7_x145 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_6_x1148 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_6_x1149 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_6_x1214 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_6_x144", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_7_x145", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x1148", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_6_x1149", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_6_x1214", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_6_x144_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_6_x144_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_6_x144_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x145_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_7_x145_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_7_x145_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_6_x1148_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_6_x1148_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x1148_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_6_x1149_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_6_x1149_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_6_x1149_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_6_x1214_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_6_x1214_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_6_x1214_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_6_x144_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x144", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_6_x144_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x144", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_6_x144_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x144", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_7_x145_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x145", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_7_x145_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x145", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x145_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x145", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_6_x1149_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1149", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_6_x1149_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1149", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_6_x1149_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x1149", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1214_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1214", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1214_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1214", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x1214_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x1214", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_6_x1",
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
			{"Name" : "fifo_A_PE_2_6_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x1148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x1148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x1149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x1149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x1214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x1214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3382", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_6_x1 {
		fifo_A_PE_2_6_x144 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_2_7_x145 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_2_6_x1148 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_6_x1149 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_2_6_x1214 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_6_x144 { ap_fifo {  { fifo_A_PE_2_6_x144_dout fifo_data 0 512 }  { fifo_A_PE_2_6_x144_empty_n fifo_status 0 1 }  { fifo_A_PE_2_6_x144_read fifo_update 1 1 } } }
	fifo_A_PE_2_7_x145 { ap_fifo {  { fifo_A_PE_2_7_x145_din fifo_data 1 512 }  { fifo_A_PE_2_7_x145_full_n fifo_status 0 1 }  { fifo_A_PE_2_7_x145_write fifo_update 1 1 } } }
	fifo_B_PE_2_6_x1148 { ap_fifo {  { fifo_B_PE_2_6_x1148_dout fifo_data 0 512 }  { fifo_B_PE_2_6_x1148_empty_n fifo_status 0 1 }  { fifo_B_PE_2_6_x1148_read fifo_update 1 1 } } }
	fifo_B_PE_3_6_x1149 { ap_fifo {  { fifo_B_PE_3_6_x1149_din fifo_data 1 512 }  { fifo_B_PE_3_6_x1149_full_n fifo_status 0 1 }  { fifo_B_PE_3_6_x1149_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_6_x1214 { ap_fifo {  { fifo_C_drain_PE_2_6_x1214_din fifo_data 1 16 }  { fifo_C_drain_PE_2_6_x1214_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_6_x1214_write fifo_update 1 1 } } }
}
