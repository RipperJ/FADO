set moduleName PE_wrapper_1_2_x1
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
set C_modelName {PE_wrapper_1_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_2_x139 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_3_x140 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_2_x1119 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_2_x1120 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_2_x1189 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_2_x139", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_3_x140", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_2_x1119", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_2_x1120", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_2_x1189", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_2_x139_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_2_x139_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_2_x139_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_3_x140_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_3_x140_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_3_x140_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_2_x1119_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_2_x1119_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_2_x1119_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_2_x1120_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_2_x1120_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_2_x1120_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_2_x1189_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_2_x1189_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_2_x1189_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_2_x139_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x139", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_2_x139_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x139", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_2_x139_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x139", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_3_x140_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x140", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_3_x140_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x140", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_3_x140_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x140", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_2_x1119_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1119", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_2_x1119_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1119", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_2_x1119_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1119", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_2_x1120_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1120", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_2_x1120_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1120", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_2_x1120_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1120", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1189_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1189", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1189_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1189", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1189_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1189", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_2_x1",
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
			{"Name" : "fifo_A_PE_1_2_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x1189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x1189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1128", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_2_x1 {
		fifo_A_PE_1_2_x139 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_3_x140 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_2_x1119 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_2_x1120 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_2_x1189 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_2_x139 { ap_fifo {  { fifo_A_PE_1_2_x139_dout fifo_data 0 512 }  { fifo_A_PE_1_2_x139_empty_n fifo_status 0 1 }  { fifo_A_PE_1_2_x139_read fifo_update 1 1 } } }
	fifo_A_PE_1_3_x140 { ap_fifo {  { fifo_A_PE_1_3_x140_din fifo_data 1 512 }  { fifo_A_PE_1_3_x140_full_n fifo_status 0 1 }  { fifo_A_PE_1_3_x140_write fifo_update 1 1 } } }
	fifo_B_PE_1_2_x1119 { ap_fifo {  { fifo_B_PE_1_2_x1119_dout fifo_data 0 512 }  { fifo_B_PE_1_2_x1119_empty_n fifo_status 0 1 }  { fifo_B_PE_1_2_x1119_read fifo_update 1 1 } } }
	fifo_B_PE_2_2_x1120 { ap_fifo {  { fifo_B_PE_2_2_x1120_din fifo_data 1 512 }  { fifo_B_PE_2_2_x1120_full_n fifo_status 0 1 }  { fifo_B_PE_2_2_x1120_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_2_x1189 { ap_fifo {  { fifo_C_drain_PE_1_2_x1189_din fifo_data 1 16 }  { fifo_C_drain_PE_1_2_x1189_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_2_x1189_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_2_x1
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
set C_modelName {PE_wrapper_1_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_2_x131 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_3_x132 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_2_x1111 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_2_x1112 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_2_x1181 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_2_x131", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_3_x132", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_2_x1111", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_2_x1112", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_2_x1181", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_2_x131_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_2_x131_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_2_x131_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_3_x132_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_3_x132_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_3_x132_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_2_x1111_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_2_x1111_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_2_x1111_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_2_x1112_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_2_x1112_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_2_x1112_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_2_x1181_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_2_x1181_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_2_x1181_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_2_x1",
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
			{"Name" : "fifo_A_PE_1_2_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x1181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x1181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1120", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_2_x1 {
		fifo_A_PE_1_2_x131 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_3_x132 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_2_x1111 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_2_x1112 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_2_x1181 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_2_x131 { ap_fifo {  { fifo_A_PE_1_2_x131_dout fifo_data 0 512 }  { fifo_A_PE_1_2_x131_empty_n fifo_status 0 1 }  { fifo_A_PE_1_2_x131_read fifo_update 1 1 } } }
	fifo_A_PE_1_3_x132 { ap_fifo {  { fifo_A_PE_1_3_x132_din fifo_data 1 512 }  { fifo_A_PE_1_3_x132_full_n fifo_status 0 1 }  { fifo_A_PE_1_3_x132_write fifo_update 1 1 } } }
	fifo_B_PE_1_2_x1111 { ap_fifo {  { fifo_B_PE_1_2_x1111_dout fifo_data 0 512 }  { fifo_B_PE_1_2_x1111_empty_n fifo_status 0 1 }  { fifo_B_PE_1_2_x1111_read fifo_update 1 1 } } }
	fifo_B_PE_2_2_x1112 { ap_fifo {  { fifo_B_PE_2_2_x1112_din fifo_data 1 512 }  { fifo_B_PE_2_2_x1112_full_n fifo_status 0 1 }  { fifo_B_PE_2_2_x1112_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_2_x1181 { ap_fifo {  { fifo_C_drain_PE_1_2_x1181_din fifo_data 1 16 }  { fifo_C_drain_PE_1_2_x1181_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_2_x1181_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_2_x1
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
set C_modelName {PE_wrapper_1_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_2_x131 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_3_x132 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_2_x1111 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_2_x1112 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_2_x1181 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_2_x131", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_3_x132", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_2_x1111", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_2_x1112", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_2_x1181", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_2_x131_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_2_x131_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_2_x131_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_3_x132_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_3_x132_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_3_x132_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_2_x1111_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_2_x1111_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_2_x1111_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_2_x1112_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_2_x1112_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_2_x1112_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_2_x1181_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_2_x1181_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_2_x1181_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_2_x1",
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
			{"Name" : "fifo_A_PE_1_2_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x1181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x1181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3233", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_2_x1 {
		fifo_A_PE_1_2_x131 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_1_3_x132 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_1_2_x1111 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_2_x1112 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_1_2_x1181 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_2_x131 { ap_fifo {  { fifo_A_PE_1_2_x131_dout fifo_data 0 512 }  { fifo_A_PE_1_2_x131_empty_n fifo_status 0 1 }  { fifo_A_PE_1_2_x131_read fifo_update 1 1 } } }
	fifo_A_PE_1_3_x132 { ap_fifo {  { fifo_A_PE_1_3_x132_din fifo_data 1 512 }  { fifo_A_PE_1_3_x132_full_n fifo_status 0 1 }  { fifo_A_PE_1_3_x132_write fifo_update 1 1 } } }
	fifo_B_PE_1_2_x1111 { ap_fifo {  { fifo_B_PE_1_2_x1111_dout fifo_data 0 512 }  { fifo_B_PE_1_2_x1111_empty_n fifo_status 0 1 }  { fifo_B_PE_1_2_x1111_read fifo_update 1 1 } } }
	fifo_B_PE_2_2_x1112 { ap_fifo {  { fifo_B_PE_2_2_x1112_din fifo_data 1 512 }  { fifo_B_PE_2_2_x1112_full_n fifo_status 0 1 }  { fifo_B_PE_2_2_x1112_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_2_x1181 { ap_fifo {  { fifo_C_drain_PE_1_2_x1181_din fifo_data 1 16 }  { fifo_C_drain_PE_1_2_x1181_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_2_x1181_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_2_x1
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
set C_modelName {PE_wrapper_1_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_2_x131 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_3_x132 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_2_x1111 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_2_x1112 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_2_x1181 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_2_x131", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_3_x132", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_2_x1111", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_2_x1112", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_2_x1181", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_2_x131_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_2_x131_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_2_x131_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_3_x132_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_3_x132_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_3_x132_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_2_x1111_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_2_x1111_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_2_x1111_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_2_x1112_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_2_x1112_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_2_x1112_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_2_x1181_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_2_x1181_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_2_x1181_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_2_x131_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_2_x131", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_3_x132_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_3_x132", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_2_x1111_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_2_x1111", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_2_x1112_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_2_x1112", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_2_x1181_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_2_x1181", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_2_x1",
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
			{"Name" : "fifo_A_PE_1_2_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x1181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x1181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3233", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_2_x1 {
		fifo_A_PE_1_2_x131 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_1_3_x132 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_1_2_x1111 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_2_x1112 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_1_2_x1181 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_2_x131 { ap_fifo {  { fifo_A_PE_1_2_x131_dout fifo_data 0 512 }  { fifo_A_PE_1_2_x131_empty_n fifo_status 0 1 }  { fifo_A_PE_1_2_x131_read fifo_update 1 1 } } }
	fifo_A_PE_1_3_x132 { ap_fifo {  { fifo_A_PE_1_3_x132_din fifo_data 1 512 }  { fifo_A_PE_1_3_x132_full_n fifo_status 0 1 }  { fifo_A_PE_1_3_x132_write fifo_update 1 1 } } }
	fifo_B_PE_1_2_x1111 { ap_fifo {  { fifo_B_PE_1_2_x1111_dout fifo_data 0 512 }  { fifo_B_PE_1_2_x1111_empty_n fifo_status 0 1 }  { fifo_B_PE_1_2_x1111_read fifo_update 1 1 } } }
	fifo_B_PE_2_2_x1112 { ap_fifo {  { fifo_B_PE_2_2_x1112_din fifo_data 1 512 }  { fifo_B_PE_2_2_x1112_full_n fifo_status 0 1 }  { fifo_B_PE_2_2_x1112_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_2_x1181 { ap_fifo {  { fifo_C_drain_PE_1_2_x1181_din fifo_data 1 16 }  { fifo_C_drain_PE_1_2_x1181_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_2_x1181_write fifo_update 1 1 } } }
}
