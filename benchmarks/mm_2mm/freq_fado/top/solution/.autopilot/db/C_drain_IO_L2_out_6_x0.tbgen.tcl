set moduleName C_drain_IO_L2_out_6_x0
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
set C_modelName {C_drain_IO_L2_out_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0307 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0306 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0284 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0307", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0306", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0307_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0307_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0307_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0306_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0306_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0306_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0307_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0307", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0307_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0307", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0307_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0307", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0306_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0306", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0306_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0306", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0306_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0306", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75297", "EstimateLatencyMax" : "75297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0307", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0307_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0306", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0306_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_6_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0307 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_6_x0306 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0284 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75297", "Max" : "75297"}
	, {"Name" : "Interval", "Min" : "75297", "Max" : "75297"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_7_x0307 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_7_x0307_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_7_x0307_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_7_x0307_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_6_x0306 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_6_x0306_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_6_x0306_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_6_x0306_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_6_0_x0284 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L2_out_6_x0
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
set C_modelName {C_drain_IO_L2_out_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0299 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0298 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0299_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0299_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0299_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0298_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0298_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0298_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75297", "EstimateLatencyMax" : "75297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_6_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0299 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_6_x0298 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75297", "Max" : "75297"}
	, {"Name" : "Interval", "Min" : "75297", "Max" : "75297"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_7_x0299 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_7_x0299_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_7_x0299_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_7_x0299_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_6_x0298 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_6_x0298_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_6_x0298_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_6_x0298_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L2_out_6_x0
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
set C_modelName {C_drain_IO_L2_out_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0299 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0298 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0299_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0299_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_7_x0299_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0298_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0298_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_6_x0298_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75297", "EstimateLatencyMax" : "75297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_6_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0299 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_6_x0298 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75297", "Max" : "75297"}
	, {"Name" : "Interval", "Min" : "75297", "Max" : "75297"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_7_x0299 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_7_x0299_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_7_x0299_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_7_x0299_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_6_x0298 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_6_x0298_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_6_x0298_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_6_x0298_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_read fifo_update 1 1 } } }
}
