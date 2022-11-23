set moduleName PE_wrapper_2_3_x1
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
set C_modelName {PE_wrapper_2_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_3_x149 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_4_x150 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_3_x1129 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_3_x1130 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_3_x1198 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_3_x149", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_4_x150", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_3_x1129", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_3_x1130", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_3_x1198", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_3_x149_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_3_x149_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_3_x149_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_4_x150_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_4_x150_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_4_x150_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_3_x1129_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_3_x1129_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_3_x1129_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_3_x1130_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_3_x1130_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_3_x1130_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_3_x1198_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_3_x1198_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_3_x1198_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_3_x149_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x149", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_3_x149_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x149", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_3_x149_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x149", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_4_x150_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x150", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_4_x150_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x150", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_4_x150_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x150", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_3_x1129_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1129", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_3_x1129_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1129", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_3_x1129_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1129", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_3_x1130_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1130", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_3_x1130_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1130", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_3_x1130_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1130", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1198_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1198", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1198_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1198", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1198_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1198", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_3_x1",
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
			{"Name" : "fifo_A_PE_2_3_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x1198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x1198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1182", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_3_x1 {
		fifo_A_PE_2_3_x149 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_4_x150 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_3_x1129 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_3_x1130 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_3_x1198 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_3_x149 { ap_fifo {  { fifo_A_PE_2_3_x149_dout fifo_data 0 512 }  { fifo_A_PE_2_3_x149_empty_n fifo_status 0 1 }  { fifo_A_PE_2_3_x149_read fifo_update 1 1 } } }
	fifo_A_PE_2_4_x150 { ap_fifo {  { fifo_A_PE_2_4_x150_din fifo_data 1 512 }  { fifo_A_PE_2_4_x150_full_n fifo_status 0 1 }  { fifo_A_PE_2_4_x150_write fifo_update 1 1 } } }
	fifo_B_PE_2_3_x1129 { ap_fifo {  { fifo_B_PE_2_3_x1129_dout fifo_data 0 512 }  { fifo_B_PE_2_3_x1129_empty_n fifo_status 0 1 }  { fifo_B_PE_2_3_x1129_read fifo_update 1 1 } } }
	fifo_B_PE_3_3_x1130 { ap_fifo {  { fifo_B_PE_3_3_x1130_din fifo_data 1 512 }  { fifo_B_PE_3_3_x1130_full_n fifo_status 0 1 }  { fifo_B_PE_3_3_x1130_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_3_x1198 { ap_fifo {  { fifo_C_drain_PE_2_3_x1198_din fifo_data 1 16 }  { fifo_C_drain_PE_2_3_x1198_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_3_x1198_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_3_x1
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
set C_modelName {PE_wrapper_2_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_3_x141 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_4_x142 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_3_x1121 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_3_x1122 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_3_x1190 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_3_x141", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_4_x142", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_3_x1121", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_3_x1122", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_3_x1190", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_3_x141_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_3_x141_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_3_x141_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_4_x142_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_4_x142_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_4_x142_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_3_x1121_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_3_x1121_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_3_x1121_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_3_x1122_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_3_x1122_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_3_x1122_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_3_x1190_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_3_x1190_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_3_x1190_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_3_x1",
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
			{"Name" : "fifo_A_PE_2_3_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x1190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x1190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1174", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_3_x1 {
		fifo_A_PE_2_3_x141 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_4_x142 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_3_x1121 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_3_x1122 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_3_x1190 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_3_x141 { ap_fifo {  { fifo_A_PE_2_3_x141_dout fifo_data 0 512 }  { fifo_A_PE_2_3_x141_empty_n fifo_status 0 1 }  { fifo_A_PE_2_3_x141_read fifo_update 1 1 } } }
	fifo_A_PE_2_4_x142 { ap_fifo {  { fifo_A_PE_2_4_x142_din fifo_data 1 512 }  { fifo_A_PE_2_4_x142_full_n fifo_status 0 1 }  { fifo_A_PE_2_4_x142_write fifo_update 1 1 } } }
	fifo_B_PE_2_3_x1121 { ap_fifo {  { fifo_B_PE_2_3_x1121_dout fifo_data 0 512 }  { fifo_B_PE_2_3_x1121_empty_n fifo_status 0 1 }  { fifo_B_PE_2_3_x1121_read fifo_update 1 1 } } }
	fifo_B_PE_3_3_x1122 { ap_fifo {  { fifo_B_PE_3_3_x1122_din fifo_data 1 512 }  { fifo_B_PE_3_3_x1122_full_n fifo_status 0 1 }  { fifo_B_PE_3_3_x1122_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_3_x1190 { ap_fifo {  { fifo_C_drain_PE_2_3_x1190_din fifo_data 1 16 }  { fifo_C_drain_PE_2_3_x1190_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_3_x1190_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_3_x1
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
set C_modelName {PE_wrapper_2_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_3_x141 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_4_x142 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_3_x1121 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_3_x1122 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_3_x1190 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_3_x141", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_4_x142", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_3_x1121", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_3_x1122", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_3_x1190", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_3_x141_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_3_x141_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_3_x141_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_4_x142_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_4_x142_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_4_x142_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_3_x1121_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_3_x1121_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_3_x1121_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_3_x1122_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_3_x1122_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_3_x1122_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_3_x1190_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_3_x1190_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_3_x1190_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_3_x1",
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
			{"Name" : "fifo_A_PE_2_3_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x1190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x1190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3287", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_3_x1 {
		fifo_A_PE_2_3_x141 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_2_4_x142 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_2_3_x1121 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_3_x1122 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_2_3_x1190 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_3_x141 { ap_fifo {  { fifo_A_PE_2_3_x141_dout fifo_data 0 512 }  { fifo_A_PE_2_3_x141_empty_n fifo_status 0 1 }  { fifo_A_PE_2_3_x141_read fifo_update 1 1 } } }
	fifo_A_PE_2_4_x142 { ap_fifo {  { fifo_A_PE_2_4_x142_din fifo_data 1 512 }  { fifo_A_PE_2_4_x142_full_n fifo_status 0 1 }  { fifo_A_PE_2_4_x142_write fifo_update 1 1 } } }
	fifo_B_PE_2_3_x1121 { ap_fifo {  { fifo_B_PE_2_3_x1121_dout fifo_data 0 512 }  { fifo_B_PE_2_3_x1121_empty_n fifo_status 0 1 }  { fifo_B_PE_2_3_x1121_read fifo_update 1 1 } } }
	fifo_B_PE_3_3_x1122 { ap_fifo {  { fifo_B_PE_3_3_x1122_din fifo_data 1 512 }  { fifo_B_PE_3_3_x1122_full_n fifo_status 0 1 }  { fifo_B_PE_3_3_x1122_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_3_x1190 { ap_fifo {  { fifo_C_drain_PE_2_3_x1190_din fifo_data 1 16 }  { fifo_C_drain_PE_2_3_x1190_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_3_x1190_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_3_x1
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
set C_modelName {PE_wrapper_2_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_3_x141 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_4_x142 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_3_x1121 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_3_x1122 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_3_x1190 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_3_x141", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_4_x142", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_3_x1121", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_3_x1122", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_3_x1190", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_3_x141_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_3_x141_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_3_x141_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_4_x142_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_4_x142_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_4_x142_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_3_x1121_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_3_x1121_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_3_x1121_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_3_x1122_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_3_x1122_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_3_x1122_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_3_x1190_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_3_x1190_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_3_x1190_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_3_x141_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_3_x141", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_4_x142_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_4_x142", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_3_x1121_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_3_x1121", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_3_x1122_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_3_x1122", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_3_x1190_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_3_x1190", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_3_x1",
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
			{"Name" : "fifo_A_PE_2_3_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x1190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x1190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3287", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_3_x1 {
		fifo_A_PE_2_3_x141 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_2_4_x142 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_2_3_x1121 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_3_x1122 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_2_3_x1190 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_3_x141 { ap_fifo {  { fifo_A_PE_2_3_x141_dout fifo_data 0 512 }  { fifo_A_PE_2_3_x141_empty_n fifo_status 0 1 }  { fifo_A_PE_2_3_x141_read fifo_update 1 1 } } }
	fifo_A_PE_2_4_x142 { ap_fifo {  { fifo_A_PE_2_4_x142_din fifo_data 1 512 }  { fifo_A_PE_2_4_x142_full_n fifo_status 0 1 }  { fifo_A_PE_2_4_x142_write fifo_update 1 1 } } }
	fifo_B_PE_2_3_x1121 { ap_fifo {  { fifo_B_PE_2_3_x1121_dout fifo_data 0 512 }  { fifo_B_PE_2_3_x1121_empty_n fifo_status 0 1 }  { fifo_B_PE_2_3_x1121_read fifo_update 1 1 } } }
	fifo_B_PE_3_3_x1122 { ap_fifo {  { fifo_B_PE_3_3_x1122_din fifo_data 1 512 }  { fifo_B_PE_3_3_x1122_full_n fifo_status 0 1 }  { fifo_B_PE_3_3_x1122_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_3_x1190 { ap_fifo {  { fifo_C_drain_PE_2_3_x1190_din fifo_data 1 16 }  { fifo_C_drain_PE_2_3_x1190_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_3_x1190_write fifo_update 1 1 } } }
}
