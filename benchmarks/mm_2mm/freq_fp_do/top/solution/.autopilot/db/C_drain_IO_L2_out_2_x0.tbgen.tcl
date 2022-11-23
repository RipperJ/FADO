set moduleName C_drain_IO_L2_out_2_x0
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
set C_modelName {C_drain_IO_L2_out_2_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0303 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0302 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0252 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0303", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0302", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0303_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0303_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0303_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0302_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0302_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0302_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0303_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0303", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0303_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0303", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0303_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0303", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0302_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0302", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0302_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0302", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0302_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0302", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "224801", "EstimateLatencyMax" : "224801",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0303", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0303_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0302", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0302_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_2_x0 {
		fifo_C_drain_C_drain_IO_L2_out_3_x0303 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_2_x0302 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0252 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "224801", "Max" : "224801"}
	, {"Name" : "Interval", "Min" : "224801", "Max" : "224801"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_3_x0303 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_3_x0303_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_3_x0303_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_3_x0303_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_2_x0302 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_2_x0302_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_2_x0302_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_2_x0302_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_2_0_x0252 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L2_out_2_x0
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
set C_modelName {C_drain_IO_L2_out_2_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0295 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0294 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0295_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0295_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0295_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0294_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0294_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0294_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "224801", "EstimateLatencyMax" : "224801",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_2_x0 {
		fifo_C_drain_C_drain_IO_L2_out_3_x0295 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_2_x0294 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "224801", "Max" : "224801"}
	, {"Name" : "Interval", "Min" : "224801", "Max" : "224801"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_3_x0295 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_3_x0295_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_3_x0295_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_3_x0295_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_2_x0294 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_2_x0294_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_2_x0294_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_2_x0294_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L2_out_2_x0
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
set C_modelName {C_drain_IO_L2_out_2_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0295 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0294 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0295_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0295_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_3_x0295_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0294_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0294_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x0294_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102913", "EstimateLatencyMax" : "102913",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_2_x0 {
		fifo_C_drain_C_drain_IO_L2_out_3_x0295 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_2_x0294 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102913", "Max" : "102913"}
	, {"Name" : "Interval", "Min" : "102913", "Max" : "102913"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_3_x0295 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_3_x0295_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_3_x0295_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_3_x0295_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_2_x0294 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_2_x0294_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_2_x0294_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_2_x0294_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_read fifo_update 1 1 } } }
}
