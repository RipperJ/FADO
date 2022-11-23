set moduleName D_drain_IO_L1_out_wrapper_3_0_x0
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
set C_modelName {D_drain_IO_L1_out_wrapper_3_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 int 128 regular {fifo 0 volatile }  }
	{ fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 int 128 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_0_3_x0153 int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_0_3_x0153", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_read sc_out sc_logic 1 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_din sc_out sc_lv 128 signal 1 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_write sc_out sc_logic 1 signal 1 } 
	{ fifo_D_drain_PE_0_3_x0153_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_D_drain_PE_0_3_x0153_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_D_drain_PE_0_3_x0153_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "role": "dout" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "role": "empty_n" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "role": "read" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "role": "din" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_0_3_x0153_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_3_x0153", "role": "dout" }} , 
 	{ "name": "fifo_D_drain_PE_0_3_x0153_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_3_x0153", "role": "empty_n" }} , 
 	{ "name": "fifo_D_drain_PE_0_3_x0153_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_3_x0153", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	D_drain_IO_L1_out_wrapper_3_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_3_x0153 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "40593"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "40593"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 { ap_fifo {  { fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_dout fifo_data 0 128 }  { fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_empty_n fifo_status 0 1 }  { fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_read fifo_update 1 1 } } }
	fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 { ap_fifo {  { fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_din fifo_data 1 128 }  { fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_full_n fifo_status 0 1 }  { fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_write fifo_update 1 1 } } }
	fifo_D_drain_PE_0_3_x0153 { ap_fifo {  { fifo_D_drain_PE_0_3_x0153_dout fifo_data 0 32 }  { fifo_D_drain_PE_0_3_x0153_empty_n fifo_status 0 1 }  { fifo_D_drain_PE_0_3_x0153_read fifo_update 1 1 } } }
}
set moduleName D_drain_IO_L1_out_wrapper_3_0_x0
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
set C_modelName {D_drain_IO_L1_out_wrapper_3_0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 int 128 regular {fifo 0 volatile }  }
	{ fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 int 128 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_0_3_x0153 int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_0_3_x0153", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_read sc_out sc_logic 1 signal 0 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_din sc_out sc_lv 128 signal 1 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_write sc_out sc_logic 1 signal 1 } 
	{ fifo_D_drain_PE_0_3_x0153_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_D_drain_PE_0_3_x0153_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_D_drain_PE_0_3_x0153_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "role": "dout" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "role": "empty_n" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "role": "read" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "role": "din" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_0_3_x0153_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_3_x0153", "role": "dout" }} , 
 	{ "name": "fifo_D_drain_PE_0_3_x0153_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_3_x0153", "role": "empty_n" }} , 
 	{ "name": "fifo_D_drain_PE_0_3_x0153_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_3_x0153", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "18841",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	D_drain_IO_L1_out_wrapper_3_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_0_3_x0153 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "18841"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "18841"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 { ap_fifo {  { fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_dout fifo_data 0 128 }  { fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_empty_n fifo_status 0 1 }  { fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_read fifo_update 1 1 } } }
	fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 { ap_fifo {  { fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_din fifo_data 1 128 }  { fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_full_n fifo_status 0 1 }  { fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_write fifo_update 1 1 } } }
	fifo_D_drain_PE_0_3_x0153 { ap_fifo {  { fifo_D_drain_PE_0_3_x0153_dout fifo_data 0 32 }  { fifo_D_drain_PE_0_3_x0153_empty_n fifo_status 0 1 }  { fifo_D_drain_PE_0_3_x0153_read fifo_update 1 1 } } }
}
