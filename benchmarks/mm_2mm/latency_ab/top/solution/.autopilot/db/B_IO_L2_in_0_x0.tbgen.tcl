set moduleName B_IO_L2_in_0_x0
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
set C_modelName {B_IO_L2_in_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_0_x020 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_B_IO_L2_in_1_x021 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_0_x0100 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_0_x020", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_B_IO_L2_in_1_x021", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_0_x0100", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
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
	{ fifo_B_B_IO_L2_in_0_x020_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L2_in_0_x020_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_0_x020_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_1_x021_din sc_out sc_lv 512 signal 1 } 
	{ fifo_B_B_IO_L2_in_1_x021_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_B_IO_L2_in_1_x021_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_0_x0100_din sc_out sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_0_x0100_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_0_x0100_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_0_x020_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_0_x020", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_0_x020_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_0_x020", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_0_x020_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_0_x020", "role": "read" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_1_x021_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_1_x021", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_1_x021_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_1_x021", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_1_x021_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_1_x021", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_0_x0100_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_0_x0100", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_0_x0100_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_0_x0100", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_0_x0100_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_0_x0100", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "B_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1270394", "EstimateLatencyMax" : "1991290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in_0_x0 {
		fifo_B_B_IO_L2_in_0_x020 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x021 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_0_x0100 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1270394", "Max" : "1991290"}
	, {"Name" : "Interval", "Min" : "1270394", "Max" : "1991290"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_0_x020 { ap_fifo {  { fifo_B_B_IO_L2_in_0_x020_dout fifo_data 0 512 }  { fifo_B_B_IO_L2_in_0_x020_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_0_x020_read fifo_update 1 1 } } }
	fifo_B_B_IO_L2_in_1_x021 { ap_fifo {  { fifo_B_B_IO_L2_in_1_x021_din fifo_data 1 512 }  { fifo_B_B_IO_L2_in_1_x021_full_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_1_x021_write fifo_update 1 1 } } }
	fifo_B_PE_0_0_x0100 { ap_fifo {  { fifo_B_PE_0_0_x0100_din fifo_data 1 512 }  { fifo_B_PE_0_0_x0100_full_n fifo_status 0 1 }  { fifo_B_PE_0_0_x0100_write fifo_update 1 1 } } }
}
set moduleName B_IO_L2_in_0_x0
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
set C_modelName {B_IO_L2_in_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_0_x012 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_B_IO_L2_in_1_x013 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_0_x092 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_0_x012", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_B_IO_L2_in_1_x013", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_0_x092", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
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
	{ fifo_B_B_IO_L2_in_0_x012_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L2_in_0_x012_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_0_x012_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_1_x013_din sc_out sc_lv 512 signal 1 } 
	{ fifo_B_B_IO_L2_in_1_x013_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_B_IO_L2_in_1_x013_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_0_x092_din sc_out sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_0_x092_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_0_x092_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_0_x012_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_0_x012", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_0_x012_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_0_x012", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_0_x012_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_0_x012", "role": "read" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_1_x013_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_1_x013", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_1_x013_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_1_x013", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_1_x013_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_1_x013", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_0_x092_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_0_x092", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_0_x092_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_0_x092", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_0_x092_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_0_x092", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "B_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1270394", "EstimateLatencyMax" : "1991290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in_0_x0 {
		fifo_B_B_IO_L2_in_0_x012 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x013 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_0_x092 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1270394", "Max" : "1991290"}
	, {"Name" : "Interval", "Min" : "1270394", "Max" : "1991290"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_0_x012 { ap_fifo {  { fifo_B_B_IO_L2_in_0_x012_dout fifo_data 0 512 }  { fifo_B_B_IO_L2_in_0_x012_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_0_x012_read fifo_update 1 1 } } }
	fifo_B_B_IO_L2_in_1_x013 { ap_fifo {  { fifo_B_B_IO_L2_in_1_x013_din fifo_data 1 512 }  { fifo_B_B_IO_L2_in_1_x013_full_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_1_x013_write fifo_update 1 1 } } }
	fifo_B_PE_0_0_x092 { ap_fifo {  { fifo_B_PE_0_0_x092_din fifo_data 1 512 }  { fifo_B_PE_0_0_x092_full_n fifo_status 0 1 }  { fifo_B_PE_0_0_x092_write fifo_update 1 1 } } }
}
