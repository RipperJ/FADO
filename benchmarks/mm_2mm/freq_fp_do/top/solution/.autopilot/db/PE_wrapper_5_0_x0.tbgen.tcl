set moduleName PE_wrapper_5_0_x0
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
set C_modelName {PE_wrapper_5_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_0_x073 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_1_x074 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_0_x0105 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_0_x0106 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_0_x0177 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_0_x073", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_1_x074", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_0_x0105", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_0_x0106", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_0_x0177", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_0_x073_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_0_x073_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_0_x073_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_1_x074_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_1_x074_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_1_x074_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_0_x0105_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_0_x0105_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_0_x0105_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_0_x0106_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_0_x0106_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_0_x0106_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_0_x0177_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_0_x0177_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_0_x0177_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_0_x073_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x073", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_0_x073_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x073", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_0_x073_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x073", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_1_x074_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x074", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_1_x074_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x074", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_1_x074_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x074", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_0_x0105_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x0105", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_0_x0105_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x0105", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_0_x0105_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x0105", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_0_x0106_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x0106", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_0_x0106_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x0106", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_0_x0106_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x0106", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0177", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0177", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0177", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_0_x0",
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
			{"Name" : "fifo_A_PE_5_0_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U317", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_0_x0 {
		fifo_A_PE_5_0_x073 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_1_x074 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_0_x0105 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_0_x0106 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_0_x0177 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_0_x073 { ap_fifo {  { fifo_A_PE_5_0_x073_dout fifo_data 0 512 }  { fifo_A_PE_5_0_x073_empty_n fifo_status 0 1 }  { fifo_A_PE_5_0_x073_read fifo_update 1 1 } } }
	fifo_A_PE_5_1_x074 { ap_fifo {  { fifo_A_PE_5_1_x074_din fifo_data 1 512 }  { fifo_A_PE_5_1_x074_full_n fifo_status 0 1 }  { fifo_A_PE_5_1_x074_write fifo_update 1 1 } } }
	fifo_B_PE_5_0_x0105 { ap_fifo {  { fifo_B_PE_5_0_x0105_dout fifo_data 0 512 }  { fifo_B_PE_5_0_x0105_empty_n fifo_status 0 1 }  { fifo_B_PE_5_0_x0105_read fifo_update 1 1 } } }
	fifo_B_PE_6_0_x0106 { ap_fifo {  { fifo_B_PE_6_0_x0106_din fifo_data 1 512 }  { fifo_B_PE_6_0_x0106_full_n fifo_status 0 1 }  { fifo_B_PE_6_0_x0106_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_0_x0177 { ap_fifo {  { fifo_C_drain_PE_5_0_x0177_din fifo_data 1 16 }  { fifo_C_drain_PE_5_0_x0177_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_0_x0177_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_5_0_x0
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
set C_modelName {PE_wrapper_5_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_0_x065 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_1_x066 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_0_x097 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_0_x098 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_0_x0169 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_0_x065", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_1_x066", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_0_x097", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_0_x098", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_0_x0169", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_0_x065_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_0_x065_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_0_x065_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_1_x066_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_1_x066_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_1_x066_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_0_x097_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_0_x097_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_0_x097_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_0_x098_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_0_x098_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_0_x098_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_0_x0169_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_0_x0169_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_0_x0169_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_1_x066_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x066", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_1_x066_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x066", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_1_x066_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x066", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_0_x098_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x098", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_0_x098_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x098", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_0_x098_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x098", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0169_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0169", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0169_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0169", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0169_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0169", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_0_x0",
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
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U317", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_0_x0 {
		fifo_A_PE_5_0_x065 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_1_x066 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_0_x097 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_0_x098 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_0_x0169 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_0_x065 { ap_fifo {  { fifo_A_PE_5_0_x065_dout fifo_data 0 512 }  { fifo_A_PE_5_0_x065_empty_n fifo_status 0 1 }  { fifo_A_PE_5_0_x065_read fifo_update 1 1 } } }
	fifo_A_PE_5_1_x066 { ap_fifo {  { fifo_A_PE_5_1_x066_din fifo_data 1 512 }  { fifo_A_PE_5_1_x066_full_n fifo_status 0 1 }  { fifo_A_PE_5_1_x066_write fifo_update 1 1 } } }
	fifo_B_PE_5_0_x097 { ap_fifo {  { fifo_B_PE_5_0_x097_dout fifo_data 0 512 }  { fifo_B_PE_5_0_x097_empty_n fifo_status 0 1 }  { fifo_B_PE_5_0_x097_read fifo_update 1 1 } } }
	fifo_B_PE_6_0_x098 { ap_fifo {  { fifo_B_PE_6_0_x098_din fifo_data 1 512 }  { fifo_B_PE_6_0_x098_full_n fifo_status 0 1 }  { fifo_B_PE_6_0_x098_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_0_x0169 { ap_fifo {  { fifo_C_drain_PE_5_0_x0169_din fifo_data 1 16 }  { fifo_C_drain_PE_5_0_x0169_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_0_x0169_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_5_0_x0
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
set C_modelName {PE_wrapper_5_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_0_x065 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_1_x066 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_0_x097 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_0_x098 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_0_x0169 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_0_x065", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_1_x066", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_0_x097", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_0_x098", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_0_x0169", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_0_x065_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_0_x065_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_0_x065_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_1_x066_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_1_x066_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_1_x066_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_0_x097_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_0_x097_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_0_x097_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_0_x098_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_0_x098_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_0_x098_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_0_x0169_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_0_x0169_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_0_x0169_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_1_x066_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x066", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_1_x066_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x066", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_1_x066_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_1_x066", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_0_x098_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x098", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_0_x098_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x098", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_0_x098_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_0_x098", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0169_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0169", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0169_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0169", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_0_x0169_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_0_x0169", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_0_x0",
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
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U323", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_0_x0 {
		fifo_A_PE_5_0_x065 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_1_x066 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_0_x097 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_0_x098 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_0_x0169 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_0_x065 { ap_fifo {  { fifo_A_PE_5_0_x065_dout fifo_data 0 512 }  { fifo_A_PE_5_0_x065_empty_n fifo_status 0 1 }  { fifo_A_PE_5_0_x065_read fifo_update 1 1 } } }
	fifo_A_PE_5_1_x066 { ap_fifo {  { fifo_A_PE_5_1_x066_din fifo_data 1 512 }  { fifo_A_PE_5_1_x066_full_n fifo_status 0 1 }  { fifo_A_PE_5_1_x066_write fifo_update 1 1 } } }
	fifo_B_PE_5_0_x097 { ap_fifo {  { fifo_B_PE_5_0_x097_dout fifo_data 0 512 }  { fifo_B_PE_5_0_x097_empty_n fifo_status 0 1 }  { fifo_B_PE_5_0_x097_read fifo_update 1 1 } } }
	fifo_B_PE_6_0_x098 { ap_fifo {  { fifo_B_PE_6_0_x098_din fifo_data 1 512 }  { fifo_B_PE_6_0_x098_full_n fifo_status 0 1 }  { fifo_B_PE_6_0_x098_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_0_x0169 { ap_fifo {  { fifo_C_drain_PE_5_0_x0169_din fifo_data 1 16 }  { fifo_C_drain_PE_5_0_x0169_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_0_x0169_write fifo_update 1 1 } } }
}
