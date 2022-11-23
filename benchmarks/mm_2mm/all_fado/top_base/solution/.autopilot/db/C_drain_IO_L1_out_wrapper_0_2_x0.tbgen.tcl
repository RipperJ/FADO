set moduleName C_drain_IO_L1_out_wrapper_0_2_x0
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
set C_modelName {C_drain_IO_L1_out_wrapper_0_2_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x0239 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_0_2_x0238 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_0_x0174 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_0_x0174", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_2_0_x0174_dout sc_in sc_lv 16 signal 2 } 
	{ fifo_C_drain_PE_2_0_x0174_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_2_0_x0174_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_0_x0174_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_0_x0174", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_2_0_x0174_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_0_x0174", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_0_x0174_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_0_x0174", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_wrapper_0_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0239 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0238 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x0174 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "294689", "Max" : "294689"}
	, {"Name" : "Interval", "Min" : "294689", "Max" : "294689"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_0_3_x0239 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_0_2_x0238 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_0_x0174 { ap_fifo {  { fifo_C_drain_PE_2_0_x0174_dout fifo_data 0 16 }  { fifo_C_drain_PE_2_0_x0174_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_2_0_x0174_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L1_out_wrapper_0_2_x0
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
set C_modelName {C_drain_IO_L1_out_wrapper_0_2_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x0231 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_0_2_x0230 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_0_x0166 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_0_x0166", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_2_0_x0166_dout sc_in sc_lv 16 signal 2 } 
	{ fifo_C_drain_PE_2_0_x0166_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_2_0_x0166_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_0_x0166_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_0_x0166", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_2_0_x0166_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_0_x0166", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_0_x0166_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_0_x0166", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_wrapper_0_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0231 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0230 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x0166 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "294689", "Max" : "294689"}
	, {"Name" : "Interval", "Min" : "294689", "Max" : "294689"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_0_3_x0231 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_0_2_x0230 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_0_x0166 { ap_fifo {  { fifo_C_drain_PE_2_0_x0166_dout fifo_data 0 16 }  { fifo_C_drain_PE_2_0_x0166_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_2_0_x0166_read fifo_update 1 1 } } }
}
