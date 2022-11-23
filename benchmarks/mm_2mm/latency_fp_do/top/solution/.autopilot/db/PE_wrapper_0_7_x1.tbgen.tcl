set moduleName PE_wrapper_0_7_x1
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
set C_modelName {PE_wrapper_0_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_7_x135 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_8_x136 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_7_x1163 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_7_x1164 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_7_x1228 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_7_x135", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_8_x136", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_7_x1163", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_7_x1164", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_7_x1228", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_7_x135_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_7_x135_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_7_x135_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_8_x136_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_8_x136_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_8_x136_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_7_x1163_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_7_x1163_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_7_x1163_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_7_x1164_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_7_x1164_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_7_x1164_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_7_x1228_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_7_x1228_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_7_x1228_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_7_x135_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_7_x135", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_7_x135_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_7_x135", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_7_x135_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_7_x135", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_8_x136_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_8_x136", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_8_x136_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_8_x136", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_8_x136_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_8_x136", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_7_x1163_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1163", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_7_x1163_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1163", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_7_x1163_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1163", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_7_x1164_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x1164", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_7_x1164_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x1164", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_7_x1164_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x1164", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_7_x1228_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_7_x1228", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_7_x1228_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_7_x1228", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_7_x1228_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_7_x1228", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_7_x1",
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
			{"Name" : "fifo_A_PE_0_7_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x1163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x1163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x1164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x1164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x1228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x1228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1110", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_7_x1 {
		fifo_A_PE_0_7_x135 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_8_x136 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_7_x1163 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_7_x1164 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_7_x1228 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_7_x135 { ap_fifo {  { fifo_A_PE_0_7_x135_dout fifo_data 0 512 }  { fifo_A_PE_0_7_x135_empty_n fifo_status 0 1 }  { fifo_A_PE_0_7_x135_read fifo_update 1 1 } } }
	fifo_A_PE_0_8_x136 { ap_fifo {  { fifo_A_PE_0_8_x136_din fifo_data 1 512 }  { fifo_A_PE_0_8_x136_full_n fifo_status 0 1 }  { fifo_A_PE_0_8_x136_write fifo_update 1 1 } } }
	fifo_B_PE_0_7_x1163 { ap_fifo {  { fifo_B_PE_0_7_x1163_dout fifo_data 0 512 }  { fifo_B_PE_0_7_x1163_empty_n fifo_status 0 1 }  { fifo_B_PE_0_7_x1163_read fifo_update 1 1 } } }
	fifo_B_PE_1_7_x1164 { ap_fifo {  { fifo_B_PE_1_7_x1164_din fifo_data 1 512 }  { fifo_B_PE_1_7_x1164_full_n fifo_status 0 1 }  { fifo_B_PE_1_7_x1164_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_7_x1228 { ap_fifo {  { fifo_C_drain_PE_0_7_x1228_din fifo_data 1 16 }  { fifo_C_drain_PE_0_7_x1228_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_7_x1228_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_7_x1
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
set C_modelName {PE_wrapper_0_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_7_x127 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_8_x128 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_7_x1155 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_7_x1156 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_7_x1220 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_7_x127", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_8_x128", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_7_x1155", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_7_x1156", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_7_x1220", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_7_x127_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_7_x127_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_7_x127_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_8_x128_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_8_x128_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_8_x128_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_7_x1155_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_7_x1155_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_7_x1155_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_7_x1156_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_7_x1156_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_7_x1156_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_7_x1220_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_7_x1220_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_7_x1220_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_7_x127_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_7_x127", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_7_x127_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_7_x127", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_7_x127_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_7_x127", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_8_x128_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_8_x128", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_8_x128_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_8_x128", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_8_x128_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_8_x128", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_7_x1155_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1155", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_7_x1155_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1155", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_7_x1155_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1155", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_7_x1156_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x1156", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_7_x1156_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x1156", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_7_x1156_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x1156", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_7_x1220_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_7_x1220", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_7_x1220_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_7_x1220", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_7_x1220_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_7_x1220", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_7_x1",
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
			{"Name" : "fifo_A_PE_0_7_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x1155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x1155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x1156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x1156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x1220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x1220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1102", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_7_x1 {
		fifo_A_PE_0_7_x127 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_8_x128 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_7_x1155 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_7_x1156 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_7_x1220 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_7_x127 { ap_fifo {  { fifo_A_PE_0_7_x127_dout fifo_data 0 512 }  { fifo_A_PE_0_7_x127_empty_n fifo_status 0 1 }  { fifo_A_PE_0_7_x127_read fifo_update 1 1 } } }
	fifo_A_PE_0_8_x128 { ap_fifo {  { fifo_A_PE_0_8_x128_din fifo_data 1 512 }  { fifo_A_PE_0_8_x128_full_n fifo_status 0 1 }  { fifo_A_PE_0_8_x128_write fifo_update 1 1 } } }
	fifo_B_PE_0_7_x1155 { ap_fifo {  { fifo_B_PE_0_7_x1155_dout fifo_data 0 512 }  { fifo_B_PE_0_7_x1155_empty_n fifo_status 0 1 }  { fifo_B_PE_0_7_x1155_read fifo_update 1 1 } } }
	fifo_B_PE_1_7_x1156 { ap_fifo {  { fifo_B_PE_1_7_x1156_din fifo_data 1 512 }  { fifo_B_PE_1_7_x1156_full_n fifo_status 0 1 }  { fifo_B_PE_1_7_x1156_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_7_x1220 { ap_fifo {  { fifo_C_drain_PE_0_7_x1220_din fifo_data 1 16 }  { fifo_C_drain_PE_0_7_x1220_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_7_x1220_write fifo_update 1 1 } } }
}
