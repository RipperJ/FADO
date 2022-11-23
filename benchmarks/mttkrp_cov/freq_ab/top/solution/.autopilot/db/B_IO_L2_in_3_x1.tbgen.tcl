set moduleName B_IO_L2_in_3_x1
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
set C_modelName {B_IO_L2_in_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_3_x112 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_B_IO_L2_in_4_x113 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_3_x176 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_3_x112", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_B_IO_L2_in_4_x113", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_3_x176", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_B_B_IO_L2_in_3_x112_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_B_B_IO_L2_in_3_x112_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_3_x112_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_4_x113_din sc_out sc_lv 256 signal 1 } 
	{ fifo_B_B_IO_L2_in_4_x113_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_B_IO_L2_in_4_x113_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_3_x176_din sc_out sc_lv 32 signal 2 } 
	{ fifo_B_PE_0_3_x176_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_3_x176_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_3_x112_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_3_x112", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_3_x112_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_3_x112", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_3_x112_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_3_x112", "role": "read" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_4_x113_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_4_x113", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_4_x113_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_4_x113", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_4_x113_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_4_x113", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_3_x176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x176", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_3_x176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x176", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_3_x176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x176", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "B_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_3_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U879", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U880", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U881", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in_3_x1 {
		fifo_B_B_IO_L2_in_3_x112 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x113 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_3_x176 {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "182464", "Max" : "255520960"}
	, {"Name" : "Interval", "Min" : "182464", "Max" : "255520960"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_3_x112 { ap_fifo {  { fifo_B_B_IO_L2_in_3_x112_dout fifo_data 0 256 }  { fifo_B_B_IO_L2_in_3_x112_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_3_x112_read fifo_update 1 1 } } }
	fifo_B_B_IO_L2_in_4_x113 { ap_fifo {  { fifo_B_B_IO_L2_in_4_x113_din fifo_data 1 256 }  { fifo_B_B_IO_L2_in_4_x113_full_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_4_x113_write fifo_update 1 1 } } }
	fifo_B_PE_0_3_x176 { ap_fifo {  { fifo_B_PE_0_3_x176_din fifo_data 1 32 }  { fifo_B_PE_0_3_x176_full_n fifo_status 0 1 }  { fifo_B_PE_0_3_x176_write fifo_update 1 1 } } }
}
set moduleName B_IO_L2_in_3_x1
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
set C_modelName {B_IO_L2_in_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_3_x112 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_B_IO_L2_in_4_x113 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_3_x176 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_3_x112", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_B_IO_L2_in_4_x113", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_3_x176", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_B_B_IO_L2_in_3_x112_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_B_B_IO_L2_in_3_x112_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_3_x112_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_4_x113_din sc_out sc_lv 256 signal 1 } 
	{ fifo_B_B_IO_L2_in_4_x113_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_B_IO_L2_in_4_x113_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_3_x176_din sc_out sc_lv 32 signal 2 } 
	{ fifo_B_PE_0_3_x176_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_3_x176_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_3_x112_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_3_x112", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_3_x112_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_3_x112", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_3_x112_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_3_x112", "role": "read" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_4_x113_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_4_x113", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_4_x113_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_4_x113", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_4_x113_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_4_x113", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_3_x176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x176", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_3_x176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x176", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_3_x176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x176", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "B_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_3_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1156", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1157", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1158", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in_3_x1 {
		fifo_B_B_IO_L2_in_3_x112 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x113 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_3_x176 {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "182464", "Max" : "255520960"}
	, {"Name" : "Interval", "Min" : "182464", "Max" : "255520960"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_3_x112 { ap_fifo {  { fifo_B_B_IO_L2_in_3_x112_dout fifo_data 0 256 }  { fifo_B_B_IO_L2_in_3_x112_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_3_x112_read fifo_update 1 1 } } }
	fifo_B_B_IO_L2_in_4_x113 { ap_fifo {  { fifo_B_B_IO_L2_in_4_x113_din fifo_data 1 256 }  { fifo_B_B_IO_L2_in_4_x113_full_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_4_x113_write fifo_update 1 1 } } }
	fifo_B_PE_0_3_x176 { ap_fifo {  { fifo_B_PE_0_3_x176_din fifo_data 1 32 }  { fifo_B_PE_0_3_x176_full_n fifo_status 0 1 }  { fifo_B_PE_0_3_x176_write fifo_update 1 1 } } }
}
