set moduleName D_drain_IO_L2_out_1_x1
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
set C_modelName {D_drain_IO_L2_out_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_D_drain_D_drain_IO_L2_out_2_x1207 int 128 regular {fifo 0 volatile }  }
	{ fifo_D_drain_D_drain_IO_L2_out_1_x1206 int 128 regular {fifo 1 volatile }  }
	{ fifo_D_drain_D_drain_IO_L1_out_1_0_x1177 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_D_drain_D_drain_IO_L2_out_2_x1207_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L2_out_2_x1207_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L2_out_2_x1207_read sc_out sc_logic 1 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L2_out_1_x1206_din sc_out sc_lv 128 signal 1 } 
	{ fifo_D_drain_D_drain_IO_L2_out_1_x1206_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_D_drain_D_drain_IO_L2_out_1_x1206_write sc_out sc_logic 1 signal 1 } 
	{ fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L2_out_2_x1207_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "role": "dout" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L2_out_2_x1207_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "role": "empty_n" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L2_out_2_x1207_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "role": "read" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L2_out_1_x1206_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "role": "din" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L2_out_1_x1206_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L2_out_1_x1206_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "role": "write" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "role": "dout" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "role": "empty_n" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "D_drain_IO_L2_out_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18969", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	D_drain_IO_L2_out_1_x1 {
		fifo_D_drain_D_drain_IO_L2_out_2_x1207 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_1_x1206 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_1_0_x1177 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18969", "Max" : "75705"}
	, {"Name" : "Interval", "Min" : "18969", "Max" : "75705"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_D_drain_D_drain_IO_L2_out_2_x1207 { ap_fifo {  { fifo_D_drain_D_drain_IO_L2_out_2_x1207_dout fifo_data 0 128 }  { fifo_D_drain_D_drain_IO_L2_out_2_x1207_empty_n fifo_status 0 1 }  { fifo_D_drain_D_drain_IO_L2_out_2_x1207_read fifo_update 1 1 } } }
	fifo_D_drain_D_drain_IO_L2_out_1_x1206 { ap_fifo {  { fifo_D_drain_D_drain_IO_L2_out_1_x1206_din fifo_data 1 128 }  { fifo_D_drain_D_drain_IO_L2_out_1_x1206_full_n fifo_status 0 1 }  { fifo_D_drain_D_drain_IO_L2_out_1_x1206_write fifo_update 1 1 } } }
	fifo_D_drain_D_drain_IO_L1_out_1_0_x1177 { ap_fifo {  { fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_dout fifo_data 0 128 }  { fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_empty_n fifo_status 0 1 }  { fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_read fifo_update 1 1 } } }
}
