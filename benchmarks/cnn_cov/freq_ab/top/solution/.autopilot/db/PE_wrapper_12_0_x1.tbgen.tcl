set moduleName PE_wrapper_12_0_x1
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
set C_modelName {PE_wrapper_12_0_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_12_0_x152 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_12_1_x153 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_12_0_x167 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_13_0_x168 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_12_0_x195 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_12_0_x152", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_12_1_x153", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_12_0_x167", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_13_0_x168", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_12_0_x195", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_12_0_x152_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_12_0_x152_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_12_0_x152_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_12_1_x153_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_12_1_x153_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_12_1_x153_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_12_0_x167_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_12_0_x167_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_12_0_x167_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_13_0_x168_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_13_0_x168_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_13_0_x168_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_12_0_x195_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_12_0_x195_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_12_0_x195_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "read" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "din" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "write" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "read" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "din" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_12_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U719", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U720", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_12_0_x1 {
		fifo_A_PE_12_0_x152 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_1_x153 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_12_0_x167 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_0_x168 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_12_0_x195 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4232386", "Max" : "4232386"}
	, {"Name" : "Interval", "Min" : "4232386", "Max" : "4232386"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_12_0_x152 { ap_fifo {  { fifo_A_PE_12_0_x152_dout fifo_data 0 256 }  { fifo_A_PE_12_0_x152_empty_n fifo_status 0 1 }  { fifo_A_PE_12_0_x152_read fifo_update 1 1 } } }
	fifo_A_PE_12_1_x153 { ap_fifo {  { fifo_A_PE_12_1_x153_din fifo_data 1 256 }  { fifo_A_PE_12_1_x153_full_n fifo_status 0 1 }  { fifo_A_PE_12_1_x153_write fifo_update 1 1 } } }
	fifo_B_PE_12_0_x167 { ap_fifo {  { fifo_B_PE_12_0_x167_dout fifo_data 0 256 }  { fifo_B_PE_12_0_x167_empty_n fifo_status 0 1 }  { fifo_B_PE_12_0_x167_read fifo_update 1 1 } } }
	fifo_B_PE_13_0_x168 { ap_fifo {  { fifo_B_PE_13_0_x168_din fifo_data 1 256 }  { fifo_B_PE_13_0_x168_full_n fifo_status 0 1 }  { fifo_B_PE_13_0_x168_write fifo_update 1 1 } } }
	fifo_C_drain_PE_12_0_x195 { ap_fifo {  { fifo_C_drain_PE_12_0_x195_din fifo_data 1 32 }  { fifo_C_drain_PE_12_0_x195_full_n fifo_status 0 1 }  { fifo_C_drain_PE_12_0_x195_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_12_0_x1
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
set C_modelName {PE_wrapper_12_0_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_12_0_x152 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_12_1_x153 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_12_0_x167 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_13_0_x168 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_12_0_x195 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_12_0_x152", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_12_1_x153", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_12_0_x167", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_13_0_x168", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_12_0_x195", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_12_0_x152_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_12_0_x152_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_12_0_x152_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_12_1_x153_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_12_1_x153_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_12_1_x153_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_12_0_x167_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_12_0_x167_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_12_0_x167_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_13_0_x168_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_13_0_x168_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_13_0_x168_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_12_0_x195_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_12_0_x195_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_12_0_x195_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "read" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "din" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "write" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "read" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "din" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "PE_wrapper_12_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1415", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1416", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1417", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1418", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1419", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1420", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1421", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1422", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1423", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1424", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1425", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1426", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1427", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1428", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1429", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1430", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_12_0_x1 {
		fifo_A_PE_12_0_x152 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_1_x153 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_12_0_x167 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_13_0_x168 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_0_x195 {Type O LastRead -1 FirstWrite 65}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33857", "Max" : "33857"}
	, {"Name" : "Interval", "Min" : "33857", "Max" : "33857"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_12_0_x152 { ap_fifo {  { fifo_A_PE_12_0_x152_dout fifo_data 0 256 }  { fifo_A_PE_12_0_x152_empty_n fifo_status 0 1 }  { fifo_A_PE_12_0_x152_read fifo_update 1 1 } } }
	fifo_A_PE_12_1_x153 { ap_fifo {  { fifo_A_PE_12_1_x153_din fifo_data 1 256 }  { fifo_A_PE_12_1_x153_full_n fifo_status 0 1 }  { fifo_A_PE_12_1_x153_write fifo_update 1 1 } } }
	fifo_B_PE_12_0_x167 { ap_fifo {  { fifo_B_PE_12_0_x167_dout fifo_data 0 256 }  { fifo_B_PE_12_0_x167_empty_n fifo_status 0 1 }  { fifo_B_PE_12_0_x167_read fifo_update 1 1 } } }
	fifo_B_PE_13_0_x168 { ap_fifo {  { fifo_B_PE_13_0_x168_din fifo_data 1 256 }  { fifo_B_PE_13_0_x168_full_n fifo_status 0 1 }  { fifo_B_PE_13_0_x168_write fifo_update 1 1 } } }
	fifo_C_drain_PE_12_0_x195 { ap_fifo {  { fifo_C_drain_PE_12_0_x195_din fifo_data 1 32 }  { fifo_C_drain_PE_12_0_x195_full_n fifo_status 0 1 }  { fifo_C_drain_PE_12_0_x195_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_12_0_x1
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
set C_modelName {PE_wrapper_12_0_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_12_0_x152 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_12_1_x153 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_12_0_x167 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_13_0_x168 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_12_0_x195 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_12_0_x152", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_12_1_x153", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_12_0_x167", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_13_0_x168", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_12_0_x195", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_12_0_x152_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_12_0_x152_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_12_0_x152_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_12_1_x153_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_12_1_x153_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_12_1_x153_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_12_0_x167_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_12_0_x167_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_12_0_x167_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_13_0_x168_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_13_0_x168_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_13_0_x168_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_12_0_x195_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_12_0_x195_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_12_0_x195_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_12_0_x152_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_0_x152", "role": "read" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "din" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_12_1_x153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_12_1_x153", "role": "write" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_12_0_x167_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_0_x167", "role": "read" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "din" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_13_0_x168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_13_0_x168", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_12_0_x195_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_12_0_x195", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "PE_wrapper_12_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1415", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1416", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1417", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1418", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1419", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1420", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1421", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1422", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1423", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1424", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1425", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1426", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1427", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1428", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1429", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1430", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_12_0_x1 {
		fifo_A_PE_12_0_x152 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_1_x153 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_12_0_x167 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_13_0_x168 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_0_x195 {Type O LastRead -1 FirstWrite 65}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33857", "Max" : "33857"}
	, {"Name" : "Interval", "Min" : "33857", "Max" : "33857"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_12_0_x152 { ap_fifo {  { fifo_A_PE_12_0_x152_dout fifo_data 0 256 }  { fifo_A_PE_12_0_x152_empty_n fifo_status 0 1 }  { fifo_A_PE_12_0_x152_read fifo_update 1 1 } } }
	fifo_A_PE_12_1_x153 { ap_fifo {  { fifo_A_PE_12_1_x153_din fifo_data 1 256 }  { fifo_A_PE_12_1_x153_full_n fifo_status 0 1 }  { fifo_A_PE_12_1_x153_write fifo_update 1 1 } } }
	fifo_B_PE_12_0_x167 { ap_fifo {  { fifo_B_PE_12_0_x167_dout fifo_data 0 256 }  { fifo_B_PE_12_0_x167_empty_n fifo_status 0 1 }  { fifo_B_PE_12_0_x167_read fifo_update 1 1 } } }
	fifo_B_PE_13_0_x168 { ap_fifo {  { fifo_B_PE_13_0_x168_din fifo_data 1 256 }  { fifo_B_PE_13_0_x168_full_n fifo_status 0 1 }  { fifo_B_PE_13_0_x168_write fifo_update 1 1 } } }
	fifo_C_drain_PE_12_0_x195 { ap_fifo {  { fifo_C_drain_PE_12_0_x195_din fifo_data 1 32 }  { fifo_C_drain_PE_12_0_x195_full_n fifo_status 0 1 }  { fifo_C_drain_PE_12_0_x195_write fifo_update 1 1 } } }
}
