set moduleName PE_wrapper_4_0_x0
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
set C_modelName {PE_wrapper_4_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_0_x064 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_1_x065 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_0_x0104 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_0_x0105 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_0_x0176 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_0_x064", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_1_x065", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_0_x0104", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_0_x0105", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_0_x0176", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_0_x064_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_0_x064_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_0_x064_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x065_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_1_x065_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_1_x065_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_0_x0104_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_0_x0104_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_0_x0104_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_0_x0105_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_0_x0105_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_0_x0105_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_0_x0176_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0176_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0176_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_0_x064_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x064", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_0_x064_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x064", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_0_x064_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x064", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_1_x065_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x065", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_1_x065_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x065", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x065_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x065", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_0_x0104_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x0104", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_0_x0104_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x0104", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_0_x0104_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x0104", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_0_x0105_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x0105", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_0_x0105_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x0105", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_0_x0105_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x0105", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0176", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0176", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0176", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U269", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x064 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_1_x065 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_0_x0104 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_0_x0105 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_0_x0176 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_0_x064 { ap_fifo {  { fifo_A_PE_4_0_x064_dout fifo_data 0 512 }  { fifo_A_PE_4_0_x064_empty_n fifo_status 0 1 }  { fifo_A_PE_4_0_x064_read fifo_update 1 1 } } }
	fifo_A_PE_4_1_x065 { ap_fifo {  { fifo_A_PE_4_1_x065_din fifo_data 1 512 }  { fifo_A_PE_4_1_x065_full_n fifo_status 0 1 }  { fifo_A_PE_4_1_x065_write fifo_update 1 1 } } }
	fifo_B_PE_4_0_x0104 { ap_fifo {  { fifo_B_PE_4_0_x0104_dout fifo_data 0 512 }  { fifo_B_PE_4_0_x0104_empty_n fifo_status 0 1 }  { fifo_B_PE_4_0_x0104_read fifo_update 1 1 } } }
	fifo_B_PE_5_0_x0105 { ap_fifo {  { fifo_B_PE_5_0_x0105_din fifo_data 1 512 }  { fifo_B_PE_5_0_x0105_full_n fifo_status 0 1 }  { fifo_B_PE_5_0_x0105_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_0_x0176 { ap_fifo {  { fifo_C_drain_PE_4_0_x0176_din fifo_data 1 16 }  { fifo_C_drain_PE_4_0_x0176_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_0_x0176_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_0_x0
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
set C_modelName {PE_wrapper_4_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_0_x056 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_1_x057 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_0_x096 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_0_x097 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_0_x0168 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_0_x056", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_1_x057", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_0_x096", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_0_x097", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_0_x0168", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_0_x056_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_0_x056_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_0_x056_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_1_x057_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_1_x057_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_1_x057_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_0_x096_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_0_x096_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_0_x096_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_0_x097_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_0_x097_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_0_x097_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_0_x0168_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0168_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_0_x0168_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_0_x056_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_0_x056", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_1_x057_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_1_x057", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_0_x096_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_0_x096", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_0_x097_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_0_x097", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_0_x0168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_0_x0168", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U269", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x056 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_1_x057 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_0_x096 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_0_x097 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_0_x0168 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_0_x056 { ap_fifo {  { fifo_A_PE_4_0_x056_dout fifo_data 0 512 }  { fifo_A_PE_4_0_x056_empty_n fifo_status 0 1 }  { fifo_A_PE_4_0_x056_read fifo_update 1 1 } } }
	fifo_A_PE_4_1_x057 { ap_fifo {  { fifo_A_PE_4_1_x057_din fifo_data 1 512 }  { fifo_A_PE_4_1_x057_full_n fifo_status 0 1 }  { fifo_A_PE_4_1_x057_write fifo_update 1 1 } } }
	fifo_B_PE_4_0_x096 { ap_fifo {  { fifo_B_PE_4_0_x096_dout fifo_data 0 512 }  { fifo_B_PE_4_0_x096_empty_n fifo_status 0 1 }  { fifo_B_PE_4_0_x096_read fifo_update 1 1 } } }
	fifo_B_PE_5_0_x097 { ap_fifo {  { fifo_B_PE_5_0_x097_din fifo_data 1 512 }  { fifo_B_PE_5_0_x097_full_n fifo_status 0 1 }  { fifo_B_PE_5_0_x097_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_0_x0168 { ap_fifo {  { fifo_C_drain_PE_4_0_x0168_din fifo_data 1 16 }  { fifo_C_drain_PE_4_0_x0168_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_0_x0168_write fifo_update 1 1 } } }
}
