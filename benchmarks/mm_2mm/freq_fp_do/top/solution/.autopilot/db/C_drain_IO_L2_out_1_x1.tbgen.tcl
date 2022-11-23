set moduleName C_drain_IO_L2_out_1_x1
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
set C_modelName {C_drain_IO_L2_out_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1302 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1301 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1244 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1302", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1301", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1302_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1302_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1302_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1301_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1301_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1301_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1302_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1302", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1302_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1302", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1302_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1302", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1301_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1301", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1301_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1301", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1301_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1301", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262177", "EstimateLatencyMax" : "262177",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1302", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1302_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1301", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1301_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_1_x1 {
		fifo_C_drain_C_drain_IO_L2_out_2_x1302 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_1_x1301 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1244 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "262177", "Max" : "262177"}
	, {"Name" : "Interval", "Min" : "262177", "Max" : "262177"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_2_x1302 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_2_x1302_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_2_x1302_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_2_x1302_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_1_x1301 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_1_x1301_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_1_x1301_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_1_x1301_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_1_0_x1244 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1244_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L2_out_1_x1
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
set C_modelName {C_drain_IO_L2_out_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1294 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1293 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1236 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1294_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1294_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1294_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1293_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1293_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1293_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262177", "EstimateLatencyMax" : "262177",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_1_x1 {
		fifo_C_drain_C_drain_IO_L2_out_2_x1294 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_1_x1293 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1236 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "262177", "Max" : "262177"}
	, {"Name" : "Interval", "Min" : "262177", "Max" : "262177"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_2_x1294 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_2_x1294_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_2_x1294_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_2_x1294_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_1_x1293 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_1_x1293_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_1_x1293_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_1_x1293_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_1_0_x1236 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L2_out_1_x1
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
set C_modelName {C_drain_IO_L2_out_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1294 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1293 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1236 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1294_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1294_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_2_x1294_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1293_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1293_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_1_x1293_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "C_drain_IO_L2_out_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120065", "EstimateLatencyMax" : "120065",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x1294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out_1_x1 {
		fifo_C_drain_C_drain_IO_L2_out_2_x1294 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_1_x1293 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1236 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120065", "Max" : "120065"}
	, {"Name" : "Interval", "Min" : "120065", "Max" : "120065"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_2_x1294 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_2_x1294_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_2_x1294_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_2_x1294_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_1_x1293 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_1_x1293_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_1_x1293_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_1_x1293_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_1_0_x1236 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_1_0_x1236_read fifo_update 1 1 } } }
}
