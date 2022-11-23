set moduleName PE_wrapper_0_5_x1
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
set C_modelName {PE_wrapper_0_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_5_x133 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_6_x134 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_5_x1145 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_5_x1146 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_5_x1212 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_5_x133", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_6_x134", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_5_x1145", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_5_x1146", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_5_x1212", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_5_x133_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_5_x133_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_5_x133_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_6_x134_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_6_x134_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_6_x134_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_5_x1145_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_5_x1145_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_5_x1145_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_5_x1146_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_5_x1146_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_5_x1146_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_5_x1212_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_5_x1212_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_5_x1212_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_5_x133_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x133", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_5_x133_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x133", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_5_x133_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x133", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_6_x134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x134", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_6_x134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x134", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_6_x134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x134", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_5_x1145_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1145", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_5_x1145_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1145", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_5_x1145_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1145", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_5_x1146_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1146", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_5_x1146_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1146", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_5_x1146_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1146", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1212_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1212", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1212_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1212", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1212_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1212", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_5_x1",
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
			{"Name" : "fifo_A_PE_0_5_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x1145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x1145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x1146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x1146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x1212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x1212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1098", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_5_x1 {
		fifo_A_PE_0_5_x133 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_6_x134 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_5_x1145 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_5_x1146 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_5_x1212 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_5_x133 { ap_fifo {  { fifo_A_PE_0_5_x133_dout fifo_data 0 512 }  { fifo_A_PE_0_5_x133_empty_n fifo_status 0 1 }  { fifo_A_PE_0_5_x133_read fifo_update 1 1 } } }
	fifo_A_PE_0_6_x134 { ap_fifo {  { fifo_A_PE_0_6_x134_din fifo_data 1 512 }  { fifo_A_PE_0_6_x134_full_n fifo_status 0 1 }  { fifo_A_PE_0_6_x134_write fifo_update 1 1 } } }
	fifo_B_PE_0_5_x1145 { ap_fifo {  { fifo_B_PE_0_5_x1145_dout fifo_data 0 512 }  { fifo_B_PE_0_5_x1145_empty_n fifo_status 0 1 }  { fifo_B_PE_0_5_x1145_read fifo_update 1 1 } } }
	fifo_B_PE_1_5_x1146 { ap_fifo {  { fifo_B_PE_1_5_x1146_din fifo_data 1 512 }  { fifo_B_PE_1_5_x1146_full_n fifo_status 0 1 }  { fifo_B_PE_1_5_x1146_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_5_x1212 { ap_fifo {  { fifo_C_drain_PE_0_5_x1212_din fifo_data 1 16 }  { fifo_C_drain_PE_0_5_x1212_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_5_x1212_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_5_x1
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
set C_modelName {PE_wrapper_0_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_5_x125 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_6_x126 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_5_x1137 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_5_x1138 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_5_x1204 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_5_x125", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_6_x126", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_5_x1137", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_5_x1138", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_5_x1204", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_5_x125_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_5_x125_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_5_x125_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_6_x126_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_6_x126_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_6_x126_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_5_x1137_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_5_x1137_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_5_x1137_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_5_x1138_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_5_x1138_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_5_x1138_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_5_x1204_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_5_x1204_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_5_x1204_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_6_x126_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x126", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_6_x126_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x126", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_6_x126_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x126", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_5_x1137_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1137", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_5_x1137_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1137", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_5_x1137_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1137", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_5_x1138_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1138", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_5_x1138_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1138", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_5_x1138_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1138", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1204_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1204", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1204_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1204", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1204_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1204", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_5_x1",
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
			{"Name" : "fifo_A_PE_0_5_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x1137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x1138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x1204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x1204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1090", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_5_x1 {
		fifo_A_PE_0_5_x125 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_6_x126 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_5_x1137 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_5_x1138 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_5_x1204 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_5_x125 { ap_fifo {  { fifo_A_PE_0_5_x125_dout fifo_data 0 512 }  { fifo_A_PE_0_5_x125_empty_n fifo_status 0 1 }  { fifo_A_PE_0_5_x125_read fifo_update 1 1 } } }
	fifo_A_PE_0_6_x126 { ap_fifo {  { fifo_A_PE_0_6_x126_din fifo_data 1 512 }  { fifo_A_PE_0_6_x126_full_n fifo_status 0 1 }  { fifo_A_PE_0_6_x126_write fifo_update 1 1 } } }
	fifo_B_PE_0_5_x1137 { ap_fifo {  { fifo_B_PE_0_5_x1137_dout fifo_data 0 512 }  { fifo_B_PE_0_5_x1137_empty_n fifo_status 0 1 }  { fifo_B_PE_0_5_x1137_read fifo_update 1 1 } } }
	fifo_B_PE_1_5_x1138 { ap_fifo {  { fifo_B_PE_1_5_x1138_din fifo_data 1 512 }  { fifo_B_PE_1_5_x1138_full_n fifo_status 0 1 }  { fifo_B_PE_1_5_x1138_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_5_x1204 { ap_fifo {  { fifo_C_drain_PE_0_5_x1204_din fifo_data 1 16 }  { fifo_C_drain_PE_0_5_x1204_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_5_x1204_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_5_x1
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
set C_modelName {PE_wrapper_0_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_5_x125 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_6_x126 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_5_x1137 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_5_x1138 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_5_x1204 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_5_x125", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_6_x126", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_5_x1137", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_5_x1138", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_5_x1204", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_5_x125_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_5_x125_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_5_x125_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_6_x126_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_6_x126_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_6_x126_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_5_x1137_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_5_x1137_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_5_x1137_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_5_x1138_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_5_x1138_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_5_x1138_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_5_x1204_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_5_x1204_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_5_x1204_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_6_x126_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x126", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_6_x126_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x126", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_6_x126_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x126", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_5_x1137_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1137", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_5_x1137_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1137", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_5_x1137_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x1137", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_5_x1138_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1138", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_5_x1138_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1138", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_5_x1138_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x1138", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1204_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1204", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1204_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1204", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_5_x1204_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_5_x1204", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_5_x1",
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
			{"Name" : "fifo_A_PE_0_5_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x1137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x1138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x1204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x1204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3280", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_5_x1 {
		fifo_A_PE_0_5_x125 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_0_6_x126 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_0_5_x1137 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_5_x1138 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_0_5_x1204 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_5_x125 { ap_fifo {  { fifo_A_PE_0_5_x125_dout fifo_data 0 512 }  { fifo_A_PE_0_5_x125_empty_n fifo_status 0 1 }  { fifo_A_PE_0_5_x125_read fifo_update 1 1 } } }
	fifo_A_PE_0_6_x126 { ap_fifo {  { fifo_A_PE_0_6_x126_din fifo_data 1 512 }  { fifo_A_PE_0_6_x126_full_n fifo_status 0 1 }  { fifo_A_PE_0_6_x126_write fifo_update 1 1 } } }
	fifo_B_PE_0_5_x1137 { ap_fifo {  { fifo_B_PE_0_5_x1137_dout fifo_data 0 512 }  { fifo_B_PE_0_5_x1137_empty_n fifo_status 0 1 }  { fifo_B_PE_0_5_x1137_read fifo_update 1 1 } } }
	fifo_B_PE_1_5_x1138 { ap_fifo {  { fifo_B_PE_1_5_x1138_din fifo_data 1 512 }  { fifo_B_PE_1_5_x1138_full_n fifo_status 0 1 }  { fifo_B_PE_1_5_x1138_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_5_x1204 { ap_fifo {  { fifo_C_drain_PE_0_5_x1204_din fifo_data 1 16 }  { fifo_C_drain_PE_0_5_x1204_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_5_x1204_write fifo_update 1 1 } } }
}
