set moduleName B_IO_L2_in_boundary_x1
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
set C_modelName {B_IO_L2_in_boundary_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_7_x127 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_0_7_x1163 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_7_x127", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_0_7_x1163", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_B_B_IO_L2_in_7_x127_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L2_in_7_x127_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_7_x127_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_PE_0_7_x1163_din sc_out sc_lv 512 signal 1 } 
	{ fifo_B_PE_0_7_x1163_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_7_x1163_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_7_x127_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_7_x127", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_7_x127_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_7_x127", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_7_x127_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_7_x127", "role": "read" }} , 
 	{ "name": "fifo_B_PE_0_7_x1163_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1163", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_7_x1163_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1163", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_7_x1163_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1163", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "B_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "156282", "EstimateLatencyMax" : "877178",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x1163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x1163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in_boundary_x1 {
		fifo_B_B_IO_L2_in_7_x127 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_0_7_x1163 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "156282", "Max" : "877178"}
	, {"Name" : "Interval", "Min" : "156282", "Max" : "877178"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_7_x127 { ap_fifo {  { fifo_B_B_IO_L2_in_7_x127_dout fifo_data 0 512 }  { fifo_B_B_IO_L2_in_7_x127_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_7_x127_read fifo_update 1 1 } } }
	fifo_B_PE_0_7_x1163 { ap_fifo {  { fifo_B_PE_0_7_x1163_din fifo_data 1 512 }  { fifo_B_PE_0_7_x1163_full_n fifo_status 0 1 }  { fifo_B_PE_0_7_x1163_write fifo_update 1 1 } } }
}
set moduleName B_IO_L2_in_boundary_x1
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
set C_modelName {B_IO_L2_in_boundary_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_7_x119 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_0_7_x1155 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_7_x119", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_0_7_x1155", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_B_B_IO_L2_in_7_x119_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L2_in_7_x119_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_7_x119_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_PE_0_7_x1155_din sc_out sc_lv 512 signal 1 } 
	{ fifo_B_PE_0_7_x1155_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_7_x1155_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_7_x119_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_7_x119", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_7_x119_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_7_x119", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_7_x119_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_7_x119", "role": "read" }} , 
 	{ "name": "fifo_B_PE_0_7_x1155_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1155", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_7_x1155_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1155", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_7_x1155_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_7_x1155", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "B_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "156282", "EstimateLatencyMax" : "877178",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x1155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x1155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in_boundary_x1 {
		fifo_B_B_IO_L2_in_7_x119 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_0_7_x1155 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "156282", "Max" : "877178"}
	, {"Name" : "Interval", "Min" : "156282", "Max" : "877178"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_7_x119 { ap_fifo {  { fifo_B_B_IO_L2_in_7_x119_dout fifo_data 0 512 }  { fifo_B_B_IO_L2_in_7_x119_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_7_x119_read fifo_update 1 1 } } }
	fifo_B_PE_0_7_x1155 { ap_fifo {  { fifo_B_PE_0_7_x1155_din fifo_data 1 512 }  { fifo_B_PE_0_7_x1155_full_n fifo_status 0 1 }  { fifo_B_PE_0_7_x1155_write fifo_update 1 1 } } }
}
