set moduleName PE_wrapper_3_1_x1
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
set C_modelName {PE_wrapper_3_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_1_x156 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_2_x157 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_1_x1112 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_1_x1113 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_1_x1183 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_1_x156", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_2_x157", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_1_x1112", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_1_x1113", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_1_x1183", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_1_x156_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_1_x156_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_1_x156_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_2_x157_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_2_x157_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_2_x157_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_1_x1112_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_1_x1112_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_1_x1112_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_1_x1113_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_1_x1113_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_1_x1113_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_1_x1183_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_1_x1183_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_1_x1183_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_1_x156_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_1_x156", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_1_x156_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_1_x156", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_1_x156_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_1_x156", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_2_x157_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_2_x157", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_2_x157_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_2_x157", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_2_x157_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_2_x157", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_1_x1112_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x1112", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_1_x1112_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x1112", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_1_x1112_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x1112", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_1_x1113_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1113", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_1_x1113_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1113", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_1_x1113_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1113", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_1_x1183_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_1_x1183", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_1_x1183_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_1_x1183", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_1_x1183_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_1_x1183", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_3_1_x1",
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
			{"Name" : "fifo_A_PE_3_1_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x1183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x1183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1218", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_1_x1 {
		fifo_A_PE_3_1_x156 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_2_x157 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_1_x1112 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_1_x1113 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_1_x1183 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_1_x156 { ap_fifo {  { fifo_A_PE_3_1_x156_dout fifo_data 0 512 }  { fifo_A_PE_3_1_x156_empty_n fifo_status 0 1 }  { fifo_A_PE_3_1_x156_read fifo_update 1 1 } } }
	fifo_A_PE_3_2_x157 { ap_fifo {  { fifo_A_PE_3_2_x157_din fifo_data 1 512 }  { fifo_A_PE_3_2_x157_full_n fifo_status 0 1 }  { fifo_A_PE_3_2_x157_write fifo_update 1 1 } } }
	fifo_B_PE_3_1_x1112 { ap_fifo {  { fifo_B_PE_3_1_x1112_dout fifo_data 0 512 }  { fifo_B_PE_3_1_x1112_empty_n fifo_status 0 1 }  { fifo_B_PE_3_1_x1112_read fifo_update 1 1 } } }
	fifo_B_PE_4_1_x1113 { ap_fifo {  { fifo_B_PE_4_1_x1113_din fifo_data 1 512 }  { fifo_B_PE_4_1_x1113_full_n fifo_status 0 1 }  { fifo_B_PE_4_1_x1113_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_1_x1183 { ap_fifo {  { fifo_C_drain_PE_3_1_x1183_din fifo_data 1 16 }  { fifo_C_drain_PE_3_1_x1183_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_1_x1183_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_3_1_x1
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
set C_modelName {PE_wrapper_3_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_1_x148 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_2_x149 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_1_x1104 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_1_x1105 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_1_x1175 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_1_x148", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_2_x149", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_1_x1104", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_1_x1105", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_1_x1175", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_1_x148_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_1_x148_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_1_x148_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_2_x149_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_2_x149_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_2_x149_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_1_x1104_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_1_x1104_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_1_x1104_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_1_x1105_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_1_x1105_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_1_x1105_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_1_x1175_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_1_x1175_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_1_x1175_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_1_x148_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_1_x148", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_1_x148_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_1_x148", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_1_x148_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_1_x148", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_2_x149_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_2_x149", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_2_x149_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_2_x149", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_2_x149_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_2_x149", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_1_x1104_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x1104", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_1_x1104_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x1104", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_1_x1104_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x1104", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_1_x1105_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_1_x1105", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_1_x1175_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_1_x1175", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_1_x1175_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_1_x1175", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_1_x1175_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_1_x1175", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_3_1_x1",
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
			{"Name" : "fifo_A_PE_3_1_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x1104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x1105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x1175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x1175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1210", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_1_x1 {
		fifo_A_PE_3_1_x148 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_2_x149 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_1_x1104 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_1_x1105 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_1_x1175 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_1_x148 { ap_fifo {  { fifo_A_PE_3_1_x148_dout fifo_data 0 512 }  { fifo_A_PE_3_1_x148_empty_n fifo_status 0 1 }  { fifo_A_PE_3_1_x148_read fifo_update 1 1 } } }
	fifo_A_PE_3_2_x149 { ap_fifo {  { fifo_A_PE_3_2_x149_din fifo_data 1 512 }  { fifo_A_PE_3_2_x149_full_n fifo_status 0 1 }  { fifo_A_PE_3_2_x149_write fifo_update 1 1 } } }
	fifo_B_PE_3_1_x1104 { ap_fifo {  { fifo_B_PE_3_1_x1104_dout fifo_data 0 512 }  { fifo_B_PE_3_1_x1104_empty_n fifo_status 0 1 }  { fifo_B_PE_3_1_x1104_read fifo_update 1 1 } } }
	fifo_B_PE_4_1_x1105 { ap_fifo {  { fifo_B_PE_4_1_x1105_din fifo_data 1 512 }  { fifo_B_PE_4_1_x1105_full_n fifo_status 0 1 }  { fifo_B_PE_4_1_x1105_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_1_x1175 { ap_fifo {  { fifo_C_drain_PE_3_1_x1175_din fifo_data 1 16 }  { fifo_C_drain_PE_3_1_x1175_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_1_x1175_write fifo_update 1 1 } } }
}
