set moduleName PE_wrapper_1_0_x0
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
set C_modelName {PE_wrapper_1_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_0_x019 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_1_x020 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_0_x056 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_0_x057 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_0_x084 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_0_x019", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_1_x020", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_0_x056", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_0_x057", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_0_x084", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_0_x019_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_1_0_x019_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_0_x019_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_1_x020_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_1_1_x020_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_1_x020_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_0_x056_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_1_0_x056_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_0_x056_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_0_x057_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_2_0_x057_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_0_x057_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_0_x084_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_1_0_x084_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_0_x084_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_1_x020_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x020", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_1_x020_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x020", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_1_x020_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x020", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_0_x056_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_1_0_x056", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_0_x056_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_0_x056", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_0_x056_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_0_x056", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_0_x057_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_2_0_x057", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_0_x057_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_0_x057", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_0_x057_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_0_x057", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_0_x084_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_0_x084", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_0_x084_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_0_x084", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_0_x084_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_0_x084", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_1_0_x0",
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
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x084_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U75", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x019 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x020 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_0_x056 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_0_x057 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_1_0_x084 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4232386", "Max" : "4232386"}
	, {"Name" : "Interval", "Min" : "4232386", "Max" : "4232386"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_0_x019 { ap_fifo {  { fifo_A_PE_1_0_x019_dout fifo_data 0 256 }  { fifo_A_PE_1_0_x019_empty_n fifo_status 0 1 }  { fifo_A_PE_1_0_x019_read fifo_update 1 1 } } }
	fifo_A_PE_1_1_x020 { ap_fifo {  { fifo_A_PE_1_1_x020_din fifo_data 1 256 }  { fifo_A_PE_1_1_x020_full_n fifo_status 0 1 }  { fifo_A_PE_1_1_x020_write fifo_update 1 1 } } }
	fifo_B_PE_1_0_x056 { ap_fifo {  { fifo_B_PE_1_0_x056_dout fifo_data 0 256 }  { fifo_B_PE_1_0_x056_empty_n fifo_status 0 1 }  { fifo_B_PE_1_0_x056_read fifo_update 1 1 } } }
	fifo_B_PE_2_0_x057 { ap_fifo {  { fifo_B_PE_2_0_x057_din fifo_data 1 256 }  { fifo_B_PE_2_0_x057_full_n fifo_status 0 1 }  { fifo_B_PE_2_0_x057_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_0_x084 { ap_fifo {  { fifo_C_drain_PE_1_0_x084_din fifo_data 1 32 }  { fifo_C_drain_PE_1_0_x084_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_0_x084_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_0_x0
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
set C_modelName {PE_wrapper_1_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_0_x019 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_1_x020 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_0_x056 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_0_x057 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_0_x084 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_0_x019", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_1_x020", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_0_x056", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_0_x057", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_0_x084", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_0_x019_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_1_0_x019_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_0_x019_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_1_x020_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_1_1_x020_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_1_x020_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_0_x056_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_1_0_x056_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_0_x056_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_0_x057_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_2_0_x057_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_0_x057_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_0_x084_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_1_0_x084_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_0_x084_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_1_x020_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x020", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_1_x020_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x020", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_1_x020_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_1_x020", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_0_x056_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_1_0_x056", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_0_x056_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_0_x056", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_0_x056_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_0_x056", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_0_x057_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_2_0_x057", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_0_x057_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_0_x057", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_0_x057_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_0_x057", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_0_x084_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_0_x084", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_0_x084_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_0_x084", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_0_x084_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_0_x084", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "PE_wrapper_1_0_x0",
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
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x084_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U101", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U102", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U103", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U104", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U105", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U106", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U107", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U108", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U109", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U110", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U111", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U112", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U113", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U114", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U115", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U116", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x019 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x020 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_0_x056 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_0_x057 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_1_0_x084 {Type O LastRead -1 FirstWrite 65}}}

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
	fifo_A_PE_1_0_x019 { ap_fifo {  { fifo_A_PE_1_0_x019_dout fifo_data 0 256 }  { fifo_A_PE_1_0_x019_empty_n fifo_status 0 1 }  { fifo_A_PE_1_0_x019_read fifo_update 1 1 } } }
	fifo_A_PE_1_1_x020 { ap_fifo {  { fifo_A_PE_1_1_x020_din fifo_data 1 256 }  { fifo_A_PE_1_1_x020_full_n fifo_status 0 1 }  { fifo_A_PE_1_1_x020_write fifo_update 1 1 } } }
	fifo_B_PE_1_0_x056 { ap_fifo {  { fifo_B_PE_1_0_x056_dout fifo_data 0 256 }  { fifo_B_PE_1_0_x056_empty_n fifo_status 0 1 }  { fifo_B_PE_1_0_x056_read fifo_update 1 1 } } }
	fifo_B_PE_2_0_x057 { ap_fifo {  { fifo_B_PE_2_0_x057_din fifo_data 1 256 }  { fifo_B_PE_2_0_x057_full_n fifo_status 0 1 }  { fifo_B_PE_2_0_x057_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_0_x084 { ap_fifo {  { fifo_C_drain_PE_1_0_x084_din fifo_data 1 32 }  { fifo_C_drain_PE_1_0_x084_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_0_x084_write fifo_update 1 1 } } }
}
