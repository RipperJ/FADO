set moduleName PE_wrapper_1_6_x1
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
set C_modelName {PE_wrapper_1_6_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_6_x143 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_7_x144 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_6_x1155 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_6_x1156 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_6_x1221 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_6_x143", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_7_x144", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_6_x1155", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x1156", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_6_x1221", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_6_x143_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_6_x143_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_6_x143_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_7_x144_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_7_x144_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_7_x144_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_6_x1155_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_6_x1155_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_6_x1155_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x1156_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_6_x1156_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_6_x1156_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_6_x1221_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_6_x1221_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_6_x1221_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_6_x143_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x143", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_6_x143_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x143", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_6_x143_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x143", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_7_x144_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x144", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_7_x144_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x144", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_7_x144_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x144", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_6_x1155_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_6_x1155", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_6_x1155_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_6_x1155", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_6_x1155_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_6_x1155", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_6_x1156_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1156", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_6_x1156_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1156", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x1156_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1156", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_6_x1221_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_6_x1221", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_6_x1221_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_6_x1221", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_6_x1221_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_6_x1221", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_6_x1",
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
			{"Name" : "fifo_A_PE_1_6_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x1155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x1155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x1156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x1156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x1221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x1221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1152", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_6_x1 {
		fifo_A_PE_1_6_x143 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_7_x144 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_6_x1155 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_6_x1156 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_6_x1221 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_6_x143 { ap_fifo {  { fifo_A_PE_1_6_x143_dout fifo_data 0 512 }  { fifo_A_PE_1_6_x143_empty_n fifo_status 0 1 }  { fifo_A_PE_1_6_x143_read fifo_update 1 1 } } }
	fifo_A_PE_1_7_x144 { ap_fifo {  { fifo_A_PE_1_7_x144_din fifo_data 1 512 }  { fifo_A_PE_1_7_x144_full_n fifo_status 0 1 }  { fifo_A_PE_1_7_x144_write fifo_update 1 1 } } }
	fifo_B_PE_1_6_x1155 { ap_fifo {  { fifo_B_PE_1_6_x1155_dout fifo_data 0 512 }  { fifo_B_PE_1_6_x1155_empty_n fifo_status 0 1 }  { fifo_B_PE_1_6_x1155_read fifo_update 1 1 } } }
	fifo_B_PE_2_6_x1156 { ap_fifo {  { fifo_B_PE_2_6_x1156_din fifo_data 1 512 }  { fifo_B_PE_2_6_x1156_full_n fifo_status 0 1 }  { fifo_B_PE_2_6_x1156_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_6_x1221 { ap_fifo {  { fifo_C_drain_PE_1_6_x1221_din fifo_data 1 16 }  { fifo_C_drain_PE_1_6_x1221_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_6_x1221_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_6_x1
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
set C_modelName {PE_wrapper_1_6_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_6_x135 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_7_x136 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_6_x1147 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_6_x1148 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_6_x1213 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_6_x135", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_7_x136", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_6_x1147", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x1148", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_6_x1213", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_6_x135_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_6_x135_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_6_x135_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_7_x136_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_7_x136_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_7_x136_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_6_x1147_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_6_x1147_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_6_x1147_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x1148_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_6_x1148_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_6_x1148_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_6_x1213_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_6_x1213_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_6_x1213_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_6_x135_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x135", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_6_x135_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x135", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_6_x135_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x135", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_7_x136_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x136", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_7_x136_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x136", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_7_x136_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x136", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_6_x1147_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_6_x1147", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_6_x1147_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_6_x1147", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_6_x1147_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_6_x1147", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x1148_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x1148", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_6_x1213_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_6_x1213", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_6_x1213_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_6_x1213", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_6_x1213_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_6_x1213", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_6_x1",
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
			{"Name" : "fifo_A_PE_1_6_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x1147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x1147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x1148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x1148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x1213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x1213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1144", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_6_x1 {
		fifo_A_PE_1_6_x135 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_7_x136 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_6_x1147 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_6_x1148 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_6_x1213 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_6_x135 { ap_fifo {  { fifo_A_PE_1_6_x135_dout fifo_data 0 512 }  { fifo_A_PE_1_6_x135_empty_n fifo_status 0 1 }  { fifo_A_PE_1_6_x135_read fifo_update 1 1 } } }
	fifo_A_PE_1_7_x136 { ap_fifo {  { fifo_A_PE_1_7_x136_din fifo_data 1 512 }  { fifo_A_PE_1_7_x136_full_n fifo_status 0 1 }  { fifo_A_PE_1_7_x136_write fifo_update 1 1 } } }
	fifo_B_PE_1_6_x1147 { ap_fifo {  { fifo_B_PE_1_6_x1147_dout fifo_data 0 512 }  { fifo_B_PE_1_6_x1147_empty_n fifo_status 0 1 }  { fifo_B_PE_1_6_x1147_read fifo_update 1 1 } } }
	fifo_B_PE_2_6_x1148 { ap_fifo {  { fifo_B_PE_2_6_x1148_din fifo_data 1 512 }  { fifo_B_PE_2_6_x1148_full_n fifo_status 0 1 }  { fifo_B_PE_2_6_x1148_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_6_x1213 { ap_fifo {  { fifo_C_drain_PE_1_6_x1213_din fifo_data 1 16 }  { fifo_C_drain_PE_1_6_x1213_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_6_x1213_write fifo_update 1 1 } } }
}
