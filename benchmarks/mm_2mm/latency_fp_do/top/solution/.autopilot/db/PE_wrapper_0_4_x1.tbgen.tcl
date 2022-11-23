set moduleName PE_wrapper_0_4_x1
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
set C_modelName {PE_wrapper_0_4_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_4_x132 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_5_x133 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_4_x1136 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_4_x1137 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_4_x1204 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_4_x132", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_5_x133", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_4_x1136", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_4_x1137", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_4_x1204", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_4_x132_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_4_x132_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_4_x132_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_5_x133_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_5_x133_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_5_x133_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_4_x1136_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_4_x1136_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_4_x1136_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_4_x1137_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_4_x1137_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_4_x1137_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_4_x1204_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_4_x1204_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_4_x1204_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_4_x132_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x132", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_4_x132_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x132", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_4_x132_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x132", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_5_x133_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x133", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_5_x133_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x133", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_5_x133_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x133", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_4_x1136_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_4_x1136", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_4_x1136_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_4_x1136", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_4_x1136_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_4_x1136", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_4_x1137_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x1137", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_4_x1137_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x1137", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_4_x1137_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x1137", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_4_x1204_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_4_x1204", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_4_x1204_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_4_x1204", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_4_x1204_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_4_x1204", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_4_x1",
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
			{"Name" : "fifo_A_PE_0_4_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x1137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x1204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x1204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1092", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_4_x1 {
		fifo_A_PE_0_4_x132 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_5_x133 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_4_x1136 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_4_x1137 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_4_x1204 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_4_x132 { ap_fifo {  { fifo_A_PE_0_4_x132_dout fifo_data 0 512 }  { fifo_A_PE_0_4_x132_empty_n fifo_status 0 1 }  { fifo_A_PE_0_4_x132_read fifo_update 1 1 } } }
	fifo_A_PE_0_5_x133 { ap_fifo {  { fifo_A_PE_0_5_x133_din fifo_data 1 512 }  { fifo_A_PE_0_5_x133_full_n fifo_status 0 1 }  { fifo_A_PE_0_5_x133_write fifo_update 1 1 } } }
	fifo_B_PE_0_4_x1136 { ap_fifo {  { fifo_B_PE_0_4_x1136_dout fifo_data 0 512 }  { fifo_B_PE_0_4_x1136_empty_n fifo_status 0 1 }  { fifo_B_PE_0_4_x1136_read fifo_update 1 1 } } }
	fifo_B_PE_1_4_x1137 { ap_fifo {  { fifo_B_PE_1_4_x1137_din fifo_data 1 512 }  { fifo_B_PE_1_4_x1137_full_n fifo_status 0 1 }  { fifo_B_PE_1_4_x1137_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_4_x1204 { ap_fifo {  { fifo_C_drain_PE_0_4_x1204_din fifo_data 1 16 }  { fifo_C_drain_PE_0_4_x1204_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_4_x1204_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_4_x1
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
set C_modelName {PE_wrapper_0_4_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_4_x124 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_5_x125 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_4_x1128 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_4_x1129 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_4_x1196 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_4_x124", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_5_x125", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_4_x1128", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_4_x1129", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_4_x1196", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_4_x124_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_4_x124_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_4_x124_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_5_x125_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_5_x125_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_5_x125_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_4_x1128_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_4_x1128_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_4_x1128_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_4_x1129_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_4_x1129_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_4_x1129_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_4_x1196_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_4_x1196_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_4_x1196_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_4_x124_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x124", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_4_x124_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x124", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_4_x124_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x124", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_5_x125_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x125", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_4_x1128_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_4_x1128", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_4_x1128_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_4_x1128", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_4_x1128_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_4_x1128", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_4_x1129_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x1129", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_4_x1129_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x1129", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_4_x1129_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x1129", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_4_x1196_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_4_x1196", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_4_x1196_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_4_x1196", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_4_x1196_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_4_x1196", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_4_x1",
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
			{"Name" : "fifo_A_PE_0_4_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x1196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x1196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1084", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_4_x1 {
		fifo_A_PE_0_4_x124 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_5_x125 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_4_x1128 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_4_x1129 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_4_x1196 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_4_x124 { ap_fifo {  { fifo_A_PE_0_4_x124_dout fifo_data 0 512 }  { fifo_A_PE_0_4_x124_empty_n fifo_status 0 1 }  { fifo_A_PE_0_4_x124_read fifo_update 1 1 } } }
	fifo_A_PE_0_5_x125 { ap_fifo {  { fifo_A_PE_0_5_x125_din fifo_data 1 512 }  { fifo_A_PE_0_5_x125_full_n fifo_status 0 1 }  { fifo_A_PE_0_5_x125_write fifo_update 1 1 } } }
	fifo_B_PE_0_4_x1128 { ap_fifo {  { fifo_B_PE_0_4_x1128_dout fifo_data 0 512 }  { fifo_B_PE_0_4_x1128_empty_n fifo_status 0 1 }  { fifo_B_PE_0_4_x1128_read fifo_update 1 1 } } }
	fifo_B_PE_1_4_x1129 { ap_fifo {  { fifo_B_PE_1_4_x1129_din fifo_data 1 512 }  { fifo_B_PE_1_4_x1129_full_n fifo_status 0 1 }  { fifo_B_PE_1_4_x1129_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_4_x1196 { ap_fifo {  { fifo_C_drain_PE_0_4_x1196_din fifo_data 1 16 }  { fifo_C_drain_PE_0_4_x1196_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_4_x1196_write fifo_update 1 1 } } }
}
