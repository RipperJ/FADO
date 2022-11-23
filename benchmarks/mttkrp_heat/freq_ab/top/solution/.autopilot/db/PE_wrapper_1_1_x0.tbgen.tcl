set moduleName PE_wrapper_1_1_x0
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
set C_modelName {PE_wrapper_1_1_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_1_x035 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_2_x036 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_1_x067 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_1_x068 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_1_1_x0107 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_2_1_x0108 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_1_1_x0146 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_1_x035", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_2_x036", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_1_x067", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_1_x068", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_1_1_x0107", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_2_1_x0108", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_1_1_x0146", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_1_x035_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_1_1_x035_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_1_x035_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_2_x036_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_1_2_x036_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_2_x036_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_1_x067_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_1_1_x067_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_1_x067_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_1_x068_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_2_1_x068_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_1_x068_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_1_1_x0107_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_1_1_x0107_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_1_1_x0107_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_2_1_x0108_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_2_1_x0108_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_2_1_x0108_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_1_1_x0146_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_1_1_x0146_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_1_1_x0146_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_1_x035_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x035", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_1_x035_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x035", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_1_x035_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x035", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_2_x036_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x036", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_2_x036_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x036", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_2_x036_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x036", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_1_x067_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x067", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_1_x067_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x067", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_1_x067_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x067", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_1_x068_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x068", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_1_x068_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x068", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_1_x068_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x068", "role": "write" }} , 
 	{ "name": "fifo_C_PE_1_1_x0107_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_1_1_x0107", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_1_1_x0107_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_1_x0107", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_1_1_x0107_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_1_x0107", "role": "read" }} , 
 	{ "name": "fifo_C_PE_2_1_x0108_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_2_1_x0108", "role": "din" }} , 
 	{ "name": "fifo_C_PE_2_1_x0108_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_1_x0108", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_2_1_x0108_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_1_x0108", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_1_1_x0146_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_1_x0146", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_1_1_x0146_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_1_x0146", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_1_1_x0146_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_1_x0146", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_1_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U171", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U172", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x035 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_2_x036 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_1_x067 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_1_x068 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_1_x0107 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_1_x0108 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_1_x0146 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4055258577", "Max" : "4055258577"}
	, {"Name" : "Interval", "Min" : "-239708719", "Max" : "-239708719"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_1_x035 { ap_fifo {  { fifo_A_PE_1_1_x035_dout fifo_data 0 256 }  { fifo_A_PE_1_1_x035_empty_n fifo_status 0 1 }  { fifo_A_PE_1_1_x035_read fifo_update 1 1 } } }
	fifo_A_PE_1_2_x036 { ap_fifo {  { fifo_A_PE_1_2_x036_din fifo_data 1 256 }  { fifo_A_PE_1_2_x036_full_n fifo_status 0 1 }  { fifo_A_PE_1_2_x036_write fifo_update 1 1 } } }
	fifo_B_PE_1_1_x067 { ap_fifo {  { fifo_B_PE_1_1_x067_dout fifo_data 0 32 }  { fifo_B_PE_1_1_x067_empty_n fifo_status 0 1 }  { fifo_B_PE_1_1_x067_read fifo_update 1 1 } } }
	fifo_B_PE_2_1_x068 { ap_fifo {  { fifo_B_PE_2_1_x068_din fifo_data 1 32 }  { fifo_B_PE_2_1_x068_full_n fifo_status 0 1 }  { fifo_B_PE_2_1_x068_write fifo_update 1 1 } } }
	fifo_C_PE_1_1_x0107 { ap_fifo {  { fifo_C_PE_1_1_x0107_dout fifo_data 0 256 }  { fifo_C_PE_1_1_x0107_empty_n fifo_status 0 1 }  { fifo_C_PE_1_1_x0107_read fifo_update 1 1 } } }
	fifo_C_PE_2_1_x0108 { ap_fifo {  { fifo_C_PE_2_1_x0108_din fifo_data 1 256 }  { fifo_C_PE_2_1_x0108_full_n fifo_status 0 1 }  { fifo_C_PE_2_1_x0108_write fifo_update 1 1 } } }
	fifo_D_drain_PE_1_1_x0146 { ap_fifo {  { fifo_D_drain_PE_1_1_x0146_din fifo_data 1 32 }  { fifo_D_drain_PE_1_1_x0146_full_n fifo_status 0 1 }  { fifo_D_drain_PE_1_1_x0146_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_1_x0
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
set C_modelName {PE_wrapper_1_1_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_1_x035 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_2_x036 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_1_x067 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_1_x068 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_1_1_x0107 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_2_1_x0108 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_1_1_x0146 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_1_x035", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_2_x036", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_1_x067", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_1_x068", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_1_1_x0107", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_2_1_x0108", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_1_1_x0146", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_1_x035_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_1_1_x035_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_1_x035_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_2_x036_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_1_2_x036_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_2_x036_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_1_x067_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_1_1_x067_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_1_x067_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_1_x068_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_2_1_x068_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_1_x068_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_1_1_x0107_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_1_1_x0107_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_1_1_x0107_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_2_1_x0108_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_2_1_x0108_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_2_1_x0108_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_1_1_x0146_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_1_1_x0146_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_1_1_x0146_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_1_x035_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x035", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_1_x035_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x035", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_1_x035_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x035", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_2_x036_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x036", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_2_x036_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x036", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_2_x036_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x036", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_1_x067_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x067", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_1_x067_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x067", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_1_x067_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x067", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_1_x068_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x068", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_1_x068_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x068", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_1_x068_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x068", "role": "write" }} , 
 	{ "name": "fifo_C_PE_1_1_x0107_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_1_1_x0107", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_1_1_x0107_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_1_x0107", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_1_1_x0107_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_1_x0107", "role": "read" }} , 
 	{ "name": "fifo_C_PE_2_1_x0108_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_2_1_x0108", "role": "din" }} , 
 	{ "name": "fifo_C_PE_2_1_x0108_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_1_x0108", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_2_1_x0108_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_1_x0108", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_1_1_x0146_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_1_x0146", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_1_1_x0146_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_1_x0146", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_1_1_x0146_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_1_x0146", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "PE_wrapper_1_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U371", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U372", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U373", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U374", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U375", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U376", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U377", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U378", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U379", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U380", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U381", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U382", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U383", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U384", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U385", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U386", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U387", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U388", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U389", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U390", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U391", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U392", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U393", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U394", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x035 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_2_x036 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_1_x067 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_1_x068 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_1_x0107 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_1_x0108 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_1_x0146 {Type O LastRead -1 FirstWrite 69}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25170937", "Max" : "25170937"}
	, {"Name" : "Interval", "Min" : "25170937", "Max" : "25170937"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_1_x035 { ap_fifo {  { fifo_A_PE_1_1_x035_dout fifo_data 0 256 }  { fifo_A_PE_1_1_x035_empty_n fifo_status 0 1 }  { fifo_A_PE_1_1_x035_read fifo_update 1 1 } } }
	fifo_A_PE_1_2_x036 { ap_fifo {  { fifo_A_PE_1_2_x036_din fifo_data 1 256 }  { fifo_A_PE_1_2_x036_full_n fifo_status 0 1 }  { fifo_A_PE_1_2_x036_write fifo_update 1 1 } } }
	fifo_B_PE_1_1_x067 { ap_fifo {  { fifo_B_PE_1_1_x067_dout fifo_data 0 32 }  { fifo_B_PE_1_1_x067_empty_n fifo_status 0 1 }  { fifo_B_PE_1_1_x067_read fifo_update 1 1 } } }
	fifo_B_PE_2_1_x068 { ap_fifo {  { fifo_B_PE_2_1_x068_din fifo_data 1 32 }  { fifo_B_PE_2_1_x068_full_n fifo_status 0 1 }  { fifo_B_PE_2_1_x068_write fifo_update 1 1 } } }
	fifo_C_PE_1_1_x0107 { ap_fifo {  { fifo_C_PE_1_1_x0107_dout fifo_data 0 256 }  { fifo_C_PE_1_1_x0107_empty_n fifo_status 0 1 }  { fifo_C_PE_1_1_x0107_read fifo_update 1 1 } } }
	fifo_C_PE_2_1_x0108 { ap_fifo {  { fifo_C_PE_2_1_x0108_din fifo_data 1 256 }  { fifo_C_PE_2_1_x0108_full_n fifo_status 0 1 }  { fifo_C_PE_2_1_x0108_write fifo_update 1 1 } } }
	fifo_D_drain_PE_1_1_x0146 { ap_fifo {  { fifo_D_drain_PE_1_1_x0146_din fifo_data 1 32 }  { fifo_D_drain_PE_1_1_x0146_full_n fifo_status 0 1 }  { fifo_D_drain_PE_1_1_x0146_write fifo_update 1 1 } } }
}
