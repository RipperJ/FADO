set moduleName A_IO_L2_in_1_x1
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
set C_modelName {A_IO_L2_in_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_A_IO_L2_in_1_x16 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_A_IO_L2_in_2_x17 int 512 regular {fifo 1 volatile }  }
	{ fifo_A_PE_1_0_x134 int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_A_IO_L2_in_1_x16", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_A_IO_L2_in_2_x17", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_A_PE_1_0_x134", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_A_IO_L2_in_1_x16_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_A_IO_L2_in_1_x16_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_1_x16_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_2_x17_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_A_IO_L2_in_2_x17_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_A_IO_L2_in_2_x17_write sc_out sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_0_x134_din sc_out sc_lv 256 signal 2 } 
	{ fifo_A_PE_1_0_x134_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_A_PE_1_0_x134_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x16_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x16", "role": "dout" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x16_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x16", "role": "empty_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x16_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x16", "role": "read" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x17", "role": "din" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x17", "role": "full_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x17", "role": "write" }} , 
 	{ "name": "fifo_A_PE_1_0_x134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x134", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_0_x134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x134", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_0_x134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x134", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "A_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10399934", "EstimateLatencyMax" : "164946110",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_ping_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_pong_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_74_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_73_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x16 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x17 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_1_0_x134 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10399934", "Max" : "164946110"}
	, {"Name" : "Interval", "Min" : "10399934", "Max" : "164946110"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_A_IO_L2_in_1_x16 { ap_fifo {  { fifo_A_A_IO_L2_in_1_x16_dout fifo_data 0 512 }  { fifo_A_A_IO_L2_in_1_x16_empty_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_1_x16_read fifo_update 1 1 } } }
	fifo_A_A_IO_L2_in_2_x17 { ap_fifo {  { fifo_A_A_IO_L2_in_2_x17_din fifo_data 1 512 }  { fifo_A_A_IO_L2_in_2_x17_full_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_2_x17_write fifo_update 1 1 } } }
	fifo_A_PE_1_0_x134 { ap_fifo {  { fifo_A_PE_1_0_x134_din fifo_data 1 256 }  { fifo_A_PE_1_0_x134_full_n fifo_status 0 1 }  { fifo_A_PE_1_0_x134_write fifo_update 1 1 } } }
}
set moduleName A_IO_L2_in_1_x1
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
set C_modelName {A_IO_L2_in_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_A_IO_L2_in_1_x16 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_A_IO_L2_in_2_x17 int 512 regular {fifo 1 volatile }  }
	{ fifo_A_PE_1_0_x134 int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_A_IO_L2_in_1_x16", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_A_IO_L2_in_2_x17", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_A_PE_1_0_x134", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_A_IO_L2_in_1_x16_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_A_IO_L2_in_1_x16_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_1_x16_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_2_x17_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_A_IO_L2_in_2_x17_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_A_IO_L2_in_2_x17_write sc_out sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_0_x134_din sc_out sc_lv 256 signal 2 } 
	{ fifo_A_PE_1_0_x134_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_A_PE_1_0_x134_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x16_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x16", "role": "dout" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x16_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x16", "role": "empty_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x16_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x16", "role": "read" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x17", "role": "din" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x17", "role": "full_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x17", "role": "write" }} , 
 	{ "name": "fifo_A_PE_1_0_x134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x134", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_0_x134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x134", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_0_x134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x134", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "A_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10399934", "EstimateLatencyMax" : "164946110",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_ping_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_pong_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_58_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_57_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x16 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x17 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_1_0_x134 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10399934", "Max" : "164946110"}
	, {"Name" : "Interval", "Min" : "10399934", "Max" : "164946110"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_A_IO_L2_in_1_x16 { ap_fifo {  { fifo_A_A_IO_L2_in_1_x16_dout fifo_data 0 512 }  { fifo_A_A_IO_L2_in_1_x16_empty_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_1_x16_read fifo_update 1 1 } } }
	fifo_A_A_IO_L2_in_2_x17 { ap_fifo {  { fifo_A_A_IO_L2_in_2_x17_din fifo_data 1 512 }  { fifo_A_A_IO_L2_in_2_x17_full_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_2_x17_write fifo_update 1 1 } } }
	fifo_A_PE_1_0_x134 { ap_fifo {  { fifo_A_PE_1_0_x134_din fifo_data 1 256 }  { fifo_A_PE_1_0_x134_full_n fifo_status 0 1 }  { fifo_A_PE_1_0_x134_write fifo_update 1 1 } } }
}
