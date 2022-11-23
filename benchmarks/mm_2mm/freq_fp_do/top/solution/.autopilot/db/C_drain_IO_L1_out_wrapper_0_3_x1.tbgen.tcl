set moduleName C_drain_IO_L1_out_wrapper_0_3_x1
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
set C_modelName {C_drain_IO_L1_out_wrapper_0_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1240 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1239 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_0_x1175 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_0_x1175", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_3_0_x1175_dout sc_in sc_lv 16 signal 2 } 
	{ fifo_C_drain_PE_3_0_x1175_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_3_0_x1175_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1175_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1175", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1175_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1175", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1175_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1175", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x1175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x1175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_wrapper_0_3_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1240 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1239 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x1175 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "290081", "Max" : "290081"}
	, {"Name" : "Interval", "Min" : "290081", "Max" : "290081"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_0_4_x1240 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1240_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_0_3_x1239 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1239_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_0_x1175 { ap_fifo {  { fifo_C_drain_PE_3_0_x1175_dout fifo_data 0 16 }  { fifo_C_drain_PE_3_0_x1175_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_3_0_x1175_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L1_out_wrapper_0_3_x1
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
set C_modelName {C_drain_IO_L1_out_wrapper_0_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1232 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1231 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_0_x1167 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_0_x1167", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_3_0_x1167_dout sc_in sc_lv 16 signal 2 } 
	{ fifo_C_drain_PE_3_0_x1167_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_3_0_x1167_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1167_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1167", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1167_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1167", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1167_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1167", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x1167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x1167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_wrapper_0_3_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1232 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1231 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x1167 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "290081", "Max" : "290081"}
	, {"Name" : "Interval", "Min" : "290081", "Max" : "290081"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_0_4_x1232 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_0_3_x1231 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_0_x1167 { ap_fifo {  { fifo_C_drain_PE_3_0_x1167_dout fifo_data 0 16 }  { fifo_C_drain_PE_3_0_x1167_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_3_0_x1167_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L1_out_wrapper_0_3_x1
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
set C_modelName {C_drain_IO_L1_out_wrapper_0_3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1232 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1231 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_0_x1167 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_0_x1167", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_3_0_x1167_dout sc_in sc_lv 16 signal 2 } 
	{ fifo_C_drain_PE_3_0_x1167_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_3_0_x1167_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1167_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1167", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1167_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1167", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_0_x1167_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_0_x1167", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x1167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x1167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_wrapper_0_3_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1232 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1231 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x1167 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "290081", "Max" : "290081"}
	, {"Name" : "Interval", "Min" : "290081", "Max" : "290081"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_0_4_x1232 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_4_x1232_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_0_3_x1231 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x1231_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_0_x1167 { ap_fifo {  { fifo_C_drain_PE_3_0_x1167_dout fifo_data 0 16 }  { fifo_C_drain_PE_3_0_x1167_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_3_0_x1167_read fifo_update 1 1 } } }
}
