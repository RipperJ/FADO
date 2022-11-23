set moduleName C_drain_IO_L1_out_17_x1
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
set C_modelName {C_drain_IO_L1_out_17_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 int 64 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 int 64 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_1_x1102 int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_1_x1102", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout sc_in sc_lv 64 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din sc_out sc_lv 64 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_6_1_x1102_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_C_drain_PE_6_1_x1102_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_6_1_x1102_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1102_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1102", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1102_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1102", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1102_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1102", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "C_drain_IO_L1_out_17_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18288", "EstimateLatencyMax" : "18288",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_17_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x1102 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18288", "Max" : "18288"}
	, {"Name" : "Interval", "Min" : "18288", "Max" : "18288"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout fifo_data 0 64 }  { fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din fifo_data 1 64 }  { fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_1_x1102 { ap_fifo {  { fifo_C_drain_PE_6_1_x1102_dout fifo_data 0 32 }  { fifo_C_drain_PE_6_1_x1102_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_6_1_x1102_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L1_out_17_x1
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
set C_modelName {C_drain_IO_L1_out_17_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 int 64 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 int 64 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_1_x1102 int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_1_x1102", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout sc_in sc_lv 64 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din sc_out sc_lv 64 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_6_1_x1102_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_C_drain_PE_6_1_x1102_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_6_1_x1102_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1102_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1102", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1102_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1102", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x1102_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x1102", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "C_drain_IO_L1_out_17_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6885", "EstimateLatencyMax" : "6885",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_17_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 {Type I LastRead 35 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_6_1_x1102 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6885", "Max" : "6885"}
	, {"Name" : "Interval", "Min" : "6885", "Max" : "6885"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout fifo_data 0 64 }  { fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din fifo_data 1 64 }  { fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_1_x1102 { ap_fifo {  { fifo_C_drain_PE_6_1_x1102_dout fifo_data 0 32 }  { fifo_C_drain_PE_6_1_x1102_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_6_1_x1102_read fifo_update 1 1 } } }
}
