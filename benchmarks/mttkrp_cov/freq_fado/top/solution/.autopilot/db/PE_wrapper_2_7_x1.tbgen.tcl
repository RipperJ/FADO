set moduleName PE_wrapper_2_7_x1
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
set C_modelName {PE_wrapper_2_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_7_x150 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_8_x151 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_7_x198 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_7_x199 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_2_7_x1138 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_3_7_x1139 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_2_7_x1171 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_7_x150", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_8_x151", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_7_x198", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_7_x199", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_2_7_x1138", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_3_7_x1139", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_2_7_x1171", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_PE_2_7_x150_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_2_7_x150_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x150_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_8_x151_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_2_8_x151_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_8_x151_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_7_x198_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_2_7_x198_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_7_x198_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_7_x199_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_3_7_x199_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_7_x199_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_2_7_x1138_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_2_7_x1138_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_2_7_x1138_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_3_7_x1139_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_3_7_x1139_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_3_7_x1139_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_2_7_x1171_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_2_7_x1171_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_2_7_x1171_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_7_x150_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x150", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_7_x150_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x150", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x150_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x150", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_8_x151_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_2_8_x151", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_8_x151_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_8_x151", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_8_x151_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_8_x151", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_7_x198_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_2_7_x198", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_7_x198_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_7_x198", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_7_x198_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_7_x198", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_7_x199_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_3_7_x199", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_7_x199_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_7_x199", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_7_x199_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_7_x199", "role": "write" }} , 
 	{ "name": "fifo_C_PE_2_7_x1138_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_2_7_x1138", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_2_7_x1138_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_7_x1138", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_2_7_x1138_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_7_x1138", "role": "read" }} , 
 	{ "name": "fifo_C_PE_3_7_x1139_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_3_7_x1139", "role": "din" }} , 
 	{ "name": "fifo_C_PE_3_7_x1139_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_7_x1139", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_3_7_x1139_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_7_x1139", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_2_7_x1171_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_7_x1171", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_2_7_x1171_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_7_x1171", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_2_7_x1171_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_7_x1171", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "PE_wrapper_2_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_7_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x1138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x1139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x1139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x1171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x1171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1550", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1551", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1552", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1553", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1554", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1555", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1556", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1557", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1558", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_7_x1 {
		fifo_A_PE_2_7_x150 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_8_x151 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_7_x198 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_7_x199 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_7_x1138 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_7_x1139 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_7_x1171 {Type O LastRead -1 FirstWrite 69}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "75502537"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "75502537"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_7_x150 { ap_fifo {  { fifo_A_PE_2_7_x150_dout fifo_data 0 256 }  { fifo_A_PE_2_7_x150_empty_n fifo_status 0 1 }  { fifo_A_PE_2_7_x150_read fifo_update 1 1 } } }
	fifo_A_PE_2_8_x151 { ap_fifo {  { fifo_A_PE_2_8_x151_din fifo_data 1 256 }  { fifo_A_PE_2_8_x151_full_n fifo_status 0 1 }  { fifo_A_PE_2_8_x151_write fifo_update 1 1 } } }
	fifo_B_PE_2_7_x198 { ap_fifo {  { fifo_B_PE_2_7_x198_dout fifo_data 0 32 }  { fifo_B_PE_2_7_x198_empty_n fifo_status 0 1 }  { fifo_B_PE_2_7_x198_read fifo_update 1 1 } } }
	fifo_B_PE_3_7_x199 { ap_fifo {  { fifo_B_PE_3_7_x199_din fifo_data 1 32 }  { fifo_B_PE_3_7_x199_full_n fifo_status 0 1 }  { fifo_B_PE_3_7_x199_write fifo_update 1 1 } } }
	fifo_C_PE_2_7_x1138 { ap_fifo {  { fifo_C_PE_2_7_x1138_dout fifo_data 0 256 }  { fifo_C_PE_2_7_x1138_empty_n fifo_status 0 1 }  { fifo_C_PE_2_7_x1138_read fifo_update 1 1 } } }
	fifo_C_PE_3_7_x1139 { ap_fifo {  { fifo_C_PE_3_7_x1139_din fifo_data 1 256 }  { fifo_C_PE_3_7_x1139_full_n fifo_status 0 1 }  { fifo_C_PE_3_7_x1139_write fifo_update 1 1 } } }
	fifo_D_drain_PE_2_7_x1171 { ap_fifo {  { fifo_D_drain_PE_2_7_x1171_din fifo_data 1 32 }  { fifo_D_drain_PE_2_7_x1171_full_n fifo_status 0 1 }  { fifo_D_drain_PE_2_7_x1171_write fifo_update 1 1 } } }
}
