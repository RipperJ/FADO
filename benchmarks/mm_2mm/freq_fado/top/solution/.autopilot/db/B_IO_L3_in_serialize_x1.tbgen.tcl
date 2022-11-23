set moduleName B_IO_L3_in_serialize_x1
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
set C_modelName {B_IO_L3_in_serialize_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L3_in_serialize_x110 int 512 regular {fifo 1 volatile }  }
	{ B int 32 regular {array 1024 { 3 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L3_in_serialize_x110", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ fifo_B_B_IO_L3_in_serialize_x110_din sc_out sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L3_in_serialize_x110_full_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L3_in_serialize_x110_write sc_out sc_logic 1 signal 0 } 
	{ B_address1 sc_out sc_lv 10 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_q1 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x110_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x110", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x110_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x110", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x110_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x110", "role": "write" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "B_IO_L3_in_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048577", "EstimateLatencyMax" : "1048577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L3_in_serialize_x1 {
		fifo_B_B_IO_L3_in_serialize_x110 {Type O LastRead -1 FirstWrite 2}
		B {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048577", "Max" : "1048577"}
	, {"Name" : "Interval", "Min" : "1048577", "Max" : "1048577"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L3_in_serialize_x110 { ap_fifo {  { fifo_B_B_IO_L3_in_serialize_x110_din fifo_data 1 512 }  { fifo_B_B_IO_L3_in_serialize_x110_full_n fifo_status 0 1 }  { fifo_B_B_IO_L3_in_serialize_x110_write fifo_update 1 1 } } }
	B { ap_memory {  { B_address1 MemPortADDR2 1 10 }  { B_ce1 MemPortCE2 1 1 }  { B_q1 MemPortDOUT2 0 32 } } }
}
set moduleName B_IO_L3_in_serialize_x1
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
set C_modelName {B_IO_L3_in_serialize_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L3_in_serialize_x12 int 512 regular {fifo 1 volatile }  }
	{ B int 32 regular {array 1024 { 3 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L3_in_serialize_x12", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ fifo_B_B_IO_L3_in_serialize_x12_din sc_out sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L3_in_serialize_x12_full_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L3_in_serialize_x12_write sc_out sc_logic 1 signal 0 } 
	{ B_address1 sc_out sc_lv 10 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_q1 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x12", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x12", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x12", "role": "write" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "B_IO_L3_in_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048577", "EstimateLatencyMax" : "1048577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L3_in_serialize_x1 {
		fifo_B_B_IO_L3_in_serialize_x12 {Type O LastRead -1 FirstWrite 2}
		B {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048577", "Max" : "1048577"}
	, {"Name" : "Interval", "Min" : "1048577", "Max" : "1048577"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L3_in_serialize_x12 { ap_fifo {  { fifo_B_B_IO_L3_in_serialize_x12_din fifo_data 1 512 }  { fifo_B_B_IO_L3_in_serialize_x12_full_n fifo_status 0 1 }  { fifo_B_B_IO_L3_in_serialize_x12_write fifo_update 1 1 } } }
	B { ap_memory {  { B_address1 MemPortADDR2 1 10 }  { B_ce1 MemPortCE2 1 1 }  { B_q1 MemPortDOUT2 0 32 } } }
}
set moduleName B_IO_L3_in_serialize_x1
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
set C_modelName {B_IO_L3_in_serialize_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L3_in_serialize_x12 int 512 regular {fifo 1 volatile }  }
	{ B int 512 regular {array 1024 { 3 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L3_in_serialize_x12", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} ]}
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
	{ fifo_B_B_IO_L3_in_serialize_x12_din sc_out sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L3_in_serialize_x12_full_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L3_in_serialize_x12_write sc_out sc_logic 1 signal 0 } 
	{ B_address1 sc_out sc_lv 10 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_q1 sc_in sc_lv 512 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x12", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x12", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L3_in_serialize_x12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L3_in_serialize_x12", "role": "write" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "B_IO_L3_in_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048577", "EstimateLatencyMax" : "1048577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L3_in_serialize_x1 {
		fifo_B_B_IO_L3_in_serialize_x12 {Type O LastRead -1 FirstWrite 2}
		B {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048577", "Max" : "1048577"}
	, {"Name" : "Interval", "Min" : "1048577", "Max" : "1048577"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L3_in_serialize_x12 { ap_fifo {  { fifo_B_B_IO_L3_in_serialize_x12_din fifo_data 1 512 }  { fifo_B_B_IO_L3_in_serialize_x12_full_n fifo_status 0 1 }  { fifo_B_B_IO_L3_in_serialize_x12_write fifo_update 1 1 } } }
	B { ap_memory {  { B_address1 MemPortADDR2 1 10 }  { B_ce1 MemPortCE2 1 1 }  { B_q1 MemPortDOUT2 0 512 } } }
}
