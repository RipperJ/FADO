set moduleName PE_wrapper_1_7_x1
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
set C_modelName {PE_wrapper_1_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_7_x141 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_8_x142 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_7_x197 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_7_x198 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_1_7_x1137 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_2_7_x1138 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_1_7_x1170 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_7_x141", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_8_x142", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_7_x197", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_7_x198", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_1_7_x1137", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_2_7_x1138", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_1_7_x1170", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_7_x141_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_1_7_x141_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_7_x141_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_8_x142_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_1_8_x142_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_8_x142_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_7_x197_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_1_7_x197_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_7_x197_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_7_x198_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_2_7_x198_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_7_x198_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_1_7_x1137_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_1_7_x1137_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_1_7_x1137_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_2_7_x1138_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_2_7_x1138_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_2_7_x1138_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_1_7_x1170_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_1_7_x1170_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_1_7_x1170_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_7_x141_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x141", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_7_x141_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x141", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_7_x141_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_7_x141", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_8_x142_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_8_x142", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_8_x142_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_8_x142", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_8_x142_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_8_x142", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_7_x197_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x197", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_7_x197_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x197", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_7_x197_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_7_x197", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_7_x198_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_2_7_x198", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_7_x198_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_7_x198", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_7_x198_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_7_x198", "role": "write" }} , 
 	{ "name": "fifo_C_PE_1_7_x1137_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_1_7_x1137", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_1_7_x1137_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_7_x1137", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_1_7_x1137_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_7_x1137", "role": "read" }} , 
 	{ "name": "fifo_C_PE_2_7_x1138_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_2_7_x1138", "role": "din" }} , 
 	{ "name": "fifo_C_PE_2_7_x1138_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_7_x1138", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_2_7_x1138_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_7_x1138", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_1_7_x1170_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_7_x1170", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_1_7_x1170_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_7_x1170", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_1_7_x1170_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_7_x1170", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "PE_wrapper_1_7_x1",
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
			{"Name" : "fifo_A_PE_1_7_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x1137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x1138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x1170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x1170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1422", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1423", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1424", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1425", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1426", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1427", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1428", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1429", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1430", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_7_x1 {
		fifo_A_PE_1_7_x141 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_8_x142 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_7_x197 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_7_x198 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_7_x1137 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_7_x1138 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_7_x1170 {Type O LastRead -1 FirstWrite 69}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "75502537"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "75502537"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_7_x141 { ap_fifo {  { fifo_A_PE_1_7_x141_dout fifo_data 0 256 }  { fifo_A_PE_1_7_x141_empty_n fifo_status 0 1 }  { fifo_A_PE_1_7_x141_read fifo_update 1 1 } } }
	fifo_A_PE_1_8_x142 { ap_fifo {  { fifo_A_PE_1_8_x142_din fifo_data 1 256 }  { fifo_A_PE_1_8_x142_full_n fifo_status 0 1 }  { fifo_A_PE_1_8_x142_write fifo_update 1 1 } } }
	fifo_B_PE_1_7_x197 { ap_fifo {  { fifo_B_PE_1_7_x197_dout fifo_data 0 32 }  { fifo_B_PE_1_7_x197_empty_n fifo_status 0 1 }  { fifo_B_PE_1_7_x197_read fifo_update 1 1 } } }
	fifo_B_PE_2_7_x198 { ap_fifo {  { fifo_B_PE_2_7_x198_din fifo_data 1 32 }  { fifo_B_PE_2_7_x198_full_n fifo_status 0 1 }  { fifo_B_PE_2_7_x198_write fifo_update 1 1 } } }
	fifo_C_PE_1_7_x1137 { ap_fifo {  { fifo_C_PE_1_7_x1137_dout fifo_data 0 256 }  { fifo_C_PE_1_7_x1137_empty_n fifo_status 0 1 }  { fifo_C_PE_1_7_x1137_read fifo_update 1 1 } } }
	fifo_C_PE_2_7_x1138 { ap_fifo {  { fifo_C_PE_2_7_x1138_din fifo_data 1 256 }  { fifo_C_PE_2_7_x1138_full_n fifo_status 0 1 }  { fifo_C_PE_2_7_x1138_write fifo_update 1 1 } } }
	fifo_D_drain_PE_1_7_x1170 { ap_fifo {  { fifo_D_drain_PE_1_7_x1170_din fifo_data 1 32 }  { fifo_D_drain_PE_1_7_x1170_full_n fifo_status 0 1 }  { fifo_D_drain_PE_1_7_x1170_write fifo_update 1 1 } } }
}
