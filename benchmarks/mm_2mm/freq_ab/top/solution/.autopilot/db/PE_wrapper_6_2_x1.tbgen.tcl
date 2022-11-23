set moduleName PE_wrapper_6_2_x1
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
set C_modelName {PE_wrapper_6_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_2_x184 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_3_x185 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_2_x1124 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_2_x1125 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_2_x1194 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_2_x184", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_3_x185", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_2_x1124", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_2_x1125", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_2_x1194", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_2_x184_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_2_x184_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x184_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_3_x185_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_3_x185_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_3_x185_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_2_x1124_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_2_x1124_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_2_x1124_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_2_x1125_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_2_x1125_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_2_x1125_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_2_x1194_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_2_x1194_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_2_x1194_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_2_x184_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x184", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_2_x184_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x184", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x184_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x184", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_3_x185_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x185", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_3_x185_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x185", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_3_x185_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x185", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_2_x1124_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1124", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_2_x1124_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1124", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_2_x1124_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1124", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_2_x1125_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1125", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_2_x1125_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1125", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_2_x1125_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1125", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1194_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1194", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1194_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1194", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1194_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1194", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_2_x1",
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
			{"Name" : "fifo_A_PE_6_2_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x1194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x1194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1368", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_2_x1 {
		fifo_A_PE_6_2_x184 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_3_x185 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_2_x1124 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_2_x1125 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_2_x1194 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_2_x184 { ap_fifo {  { fifo_A_PE_6_2_x184_dout fifo_data 0 512 }  { fifo_A_PE_6_2_x184_empty_n fifo_status 0 1 }  { fifo_A_PE_6_2_x184_read fifo_update 1 1 } } }
	fifo_A_PE_6_3_x185 { ap_fifo {  { fifo_A_PE_6_3_x185_din fifo_data 1 512 }  { fifo_A_PE_6_3_x185_full_n fifo_status 0 1 }  { fifo_A_PE_6_3_x185_write fifo_update 1 1 } } }
	fifo_B_PE_6_2_x1124 { ap_fifo {  { fifo_B_PE_6_2_x1124_dout fifo_data 0 512 }  { fifo_B_PE_6_2_x1124_empty_n fifo_status 0 1 }  { fifo_B_PE_6_2_x1124_read fifo_update 1 1 } } }
	fifo_B_PE_7_2_x1125 { ap_fifo {  { fifo_B_PE_7_2_x1125_din fifo_data 1 512 }  { fifo_B_PE_7_2_x1125_full_n fifo_status 0 1 }  { fifo_B_PE_7_2_x1125_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_2_x1194 { ap_fifo {  { fifo_C_drain_PE_6_2_x1194_din fifo_data 1 16 }  { fifo_C_drain_PE_6_2_x1194_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_2_x1194_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_2_x1
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
set C_modelName {PE_wrapper_6_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_2_x176 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_3_x177 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_2_x1116 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_2_x1117 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_2_x1186 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_2_x176", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_3_x177", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_2_x1116", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_2_x1117", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_2_x1186", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_2_x176_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_2_x176_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x176_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_3_x177_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_3_x177_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_3_x177_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_2_x1116_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_2_x1116_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_2_x1116_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_2_x1117_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_2_x1117_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_2_x1117_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_2_x1186_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_2_x1186_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_2_x1186_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_2_x1",
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
			{"Name" : "fifo_A_PE_6_2_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x1186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x1186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1360", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_2_x1 {
		fifo_A_PE_6_2_x176 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_3_x177 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_2_x1116 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_2_x1117 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_2_x1186 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_2_x176 { ap_fifo {  { fifo_A_PE_6_2_x176_dout fifo_data 0 512 }  { fifo_A_PE_6_2_x176_empty_n fifo_status 0 1 }  { fifo_A_PE_6_2_x176_read fifo_update 1 1 } } }
	fifo_A_PE_6_3_x177 { ap_fifo {  { fifo_A_PE_6_3_x177_din fifo_data 1 512 }  { fifo_A_PE_6_3_x177_full_n fifo_status 0 1 }  { fifo_A_PE_6_3_x177_write fifo_update 1 1 } } }
	fifo_B_PE_6_2_x1116 { ap_fifo {  { fifo_B_PE_6_2_x1116_dout fifo_data 0 512 }  { fifo_B_PE_6_2_x1116_empty_n fifo_status 0 1 }  { fifo_B_PE_6_2_x1116_read fifo_update 1 1 } } }
	fifo_B_PE_7_2_x1117 { ap_fifo {  { fifo_B_PE_7_2_x1117_din fifo_data 1 512 }  { fifo_B_PE_7_2_x1117_full_n fifo_status 0 1 }  { fifo_B_PE_7_2_x1117_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_2_x1186 { ap_fifo {  { fifo_C_drain_PE_6_2_x1186_din fifo_data 1 16 }  { fifo_C_drain_PE_6_2_x1186_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_2_x1186_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_2_x1
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
set C_modelName {PE_wrapper_6_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_2_x176 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_3_x177 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_2_x1116 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_2_x1117 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_2_x1186 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_2_x176", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_3_x177", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_2_x1116", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_2_x1117", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_2_x1186", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_2_x176_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_2_x176_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x176_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_3_x177_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_3_x177_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_3_x177_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_2_x1116_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_2_x1116_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_2_x1116_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_2_x1117_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_2_x1117_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_2_x1117_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_2_x1186_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_2_x1186_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_2_x1186_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_2_x1",
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
			{"Name" : "fifo_A_PE_6_2_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x1186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x1186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3473", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_2_x1 {
		fifo_A_PE_6_2_x176 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_6_3_x177 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_6_2_x1116 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_7_2_x1117 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_6_2_x1186 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_2_x176 { ap_fifo {  { fifo_A_PE_6_2_x176_dout fifo_data 0 512 }  { fifo_A_PE_6_2_x176_empty_n fifo_status 0 1 }  { fifo_A_PE_6_2_x176_read fifo_update 1 1 } } }
	fifo_A_PE_6_3_x177 { ap_fifo {  { fifo_A_PE_6_3_x177_din fifo_data 1 512 }  { fifo_A_PE_6_3_x177_full_n fifo_status 0 1 }  { fifo_A_PE_6_3_x177_write fifo_update 1 1 } } }
	fifo_B_PE_6_2_x1116 { ap_fifo {  { fifo_B_PE_6_2_x1116_dout fifo_data 0 512 }  { fifo_B_PE_6_2_x1116_empty_n fifo_status 0 1 }  { fifo_B_PE_6_2_x1116_read fifo_update 1 1 } } }
	fifo_B_PE_7_2_x1117 { ap_fifo {  { fifo_B_PE_7_2_x1117_din fifo_data 1 512 }  { fifo_B_PE_7_2_x1117_full_n fifo_status 0 1 }  { fifo_B_PE_7_2_x1117_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_2_x1186 { ap_fifo {  { fifo_C_drain_PE_6_2_x1186_din fifo_data 1 16 }  { fifo_C_drain_PE_6_2_x1186_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_2_x1186_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_2_x1
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
set C_modelName {PE_wrapper_6_2_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_2_x176 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_3_x177 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_2_x1116 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_2_x1117 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_2_x1186 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_2_x176", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_3_x177", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_2_x1116", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_2_x1117", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_2_x1186", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_2_x176_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_2_x176_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x176_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_3_x177_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_3_x177_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_3_x177_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_2_x1116_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_2_x1116_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_2_x1116_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_2_x1117_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_2_x1117_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_2_x1117_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_2_x1186_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_2_x1186_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_2_x1186_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x176_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x176", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_3_x177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x177", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_2_x1116_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_2_x1116", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_2_x1117_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_2_x1117", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_2_x1186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_2_x1186", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_2_x1",
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
			{"Name" : "fifo_A_PE_6_2_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x1186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x1186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3473", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_2_x1 {
		fifo_A_PE_6_2_x176 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_6_3_x177 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_6_2_x1116 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_7_2_x1117 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_6_2_x1186 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_2_x176 { ap_fifo {  { fifo_A_PE_6_2_x176_dout fifo_data 0 512 }  { fifo_A_PE_6_2_x176_empty_n fifo_status 0 1 }  { fifo_A_PE_6_2_x176_read fifo_update 1 1 } } }
	fifo_A_PE_6_3_x177 { ap_fifo {  { fifo_A_PE_6_3_x177_din fifo_data 1 512 }  { fifo_A_PE_6_3_x177_full_n fifo_status 0 1 }  { fifo_A_PE_6_3_x177_write fifo_update 1 1 } } }
	fifo_B_PE_6_2_x1116 { ap_fifo {  { fifo_B_PE_6_2_x1116_dout fifo_data 0 512 }  { fifo_B_PE_6_2_x1116_empty_n fifo_status 0 1 }  { fifo_B_PE_6_2_x1116_read fifo_update 1 1 } } }
	fifo_B_PE_7_2_x1117 { ap_fifo {  { fifo_B_PE_7_2_x1117_din fifo_data 1 512 }  { fifo_B_PE_7_2_x1117_full_n fifo_status 0 1 }  { fifo_B_PE_7_2_x1117_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_2_x1186 { ap_fifo {  { fifo_C_drain_PE_6_2_x1186_din fifo_data 1 16 }  { fifo_C_drain_PE_6_2_x1186_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_2_x1186_write fifo_update 1 1 } } }
}
