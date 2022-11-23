set moduleName A_IO_L2_in_5_x0
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
set C_modelName {A_IO_L2_in_5_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_A_IO_L2_in_5_x017 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_A_IO_L2_in_6_x018 int 512 regular {fifo 1 volatile }  }
	{ fifo_A_PE_5_0_x073 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_A_IO_L2_in_5_x017", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_A_IO_L2_in_6_x018", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_A_PE_5_0_x073", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_A_IO_L2_in_5_x017_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_A_IO_L2_in_5_x017_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_5_x017_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_6_x018_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_A_IO_L2_in_6_x018_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_A_IO_L2_in_6_x018_write sc_out sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_0_x073_din sc_out sc_lv 512 signal 2 } 
	{ fifo_A_PE_5_0_x073_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_A_PE_5_0_x073_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x017_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x017", "role": "dout" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x017_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x017", "role": "empty_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x017_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x017", "role": "read" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x018_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x018", "role": "din" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x018_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x018", "role": "full_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x018_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x018", "role": "write" }} , 
 	{ "name": "fifo_A_PE_5_0_x073_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x073", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_0_x073_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x073", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_0_x073_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x073", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "A_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "492210", "EstimateLatencyMax" : "1671858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x073_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_pong_V_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	A_IO_L2_in_5_x0 {
		fifo_A_A_IO_L2_in_5_x017 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x018 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_5_0_x073 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "492210", "Max" : "1671858"}
	, {"Name" : "Interval", "Min" : "492210", "Max" : "1671858"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_A_IO_L2_in_5_x017 { ap_fifo {  { fifo_A_A_IO_L2_in_5_x017_dout fifo_data 0 512 }  { fifo_A_A_IO_L2_in_5_x017_empty_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_5_x017_read fifo_update 1 1 } } }
	fifo_A_A_IO_L2_in_6_x018 { ap_fifo {  { fifo_A_A_IO_L2_in_6_x018_din fifo_data 1 512 }  { fifo_A_A_IO_L2_in_6_x018_full_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_6_x018_write fifo_update 1 1 } } }
	fifo_A_PE_5_0_x073 { ap_fifo {  { fifo_A_PE_5_0_x073_din fifo_data 1 512 }  { fifo_A_PE_5_0_x073_full_n fifo_status 0 1 }  { fifo_A_PE_5_0_x073_write fifo_update 1 1 } } }
}
set moduleName A_IO_L2_in_5_x0
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
set C_modelName {A_IO_L2_in_5_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_A_IO_L2_in_5_x09 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_A_IO_L2_in_6_x010 int 512 regular {fifo 1 volatile }  }
	{ fifo_A_PE_5_0_x065 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_A_IO_L2_in_5_x09", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_A_IO_L2_in_6_x010", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_A_PE_5_0_x065", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_A_IO_L2_in_5_x09_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_A_IO_L2_in_5_x09_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_5_x09_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_6_x010_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_A_IO_L2_in_6_x010_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_A_IO_L2_in_6_x010_write sc_out sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_0_x065_din sc_out sc_lv 512 signal 2 } 
	{ fifo_A_PE_5_0_x065_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_A_PE_5_0_x065_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x09_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x09", "role": "dout" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x09_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x09", "role": "empty_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x09_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x09", "role": "read" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x010_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x010", "role": "din" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x010_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x010", "role": "full_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x010_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x010", "role": "write" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "A_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "492210", "EstimateLatencyMax" : "1671858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_pong_V_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	A_IO_L2_in_5_x0 {
		fifo_A_A_IO_L2_in_5_x09 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x010 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_5_0_x065 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "492210", "Max" : "1671858"}
	, {"Name" : "Interval", "Min" : "492210", "Max" : "1671858"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_A_IO_L2_in_5_x09 { ap_fifo {  { fifo_A_A_IO_L2_in_5_x09_dout fifo_data 0 512 }  { fifo_A_A_IO_L2_in_5_x09_empty_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_5_x09_read fifo_update 1 1 } } }
	fifo_A_A_IO_L2_in_6_x010 { ap_fifo {  { fifo_A_A_IO_L2_in_6_x010_din fifo_data 1 512 }  { fifo_A_A_IO_L2_in_6_x010_full_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_6_x010_write fifo_update 1 1 } } }
	fifo_A_PE_5_0_x065 { ap_fifo {  { fifo_A_PE_5_0_x065_din fifo_data 1 512 }  { fifo_A_PE_5_0_x065_full_n fifo_status 0 1 }  { fifo_A_PE_5_0_x065_write fifo_update 1 1 } } }
}
set moduleName A_IO_L2_in_5_x0
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
set C_modelName {A_IO_L2_in_5_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_A_IO_L2_in_5_x09 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_A_IO_L2_in_6_x010 int 512 regular {fifo 1 volatile }  }
	{ fifo_A_PE_5_0_x065 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_A_IO_L2_in_5_x09", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_A_IO_L2_in_6_x010", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_A_PE_5_0_x065", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_A_IO_L2_in_5_x09_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_A_IO_L2_in_5_x09_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_5_x09_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_6_x010_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_A_IO_L2_in_6_x010_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_A_IO_L2_in_6_x010_write sc_out sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_0_x065_din sc_out sc_lv 512 signal 2 } 
	{ fifo_A_PE_5_0_x065_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_A_PE_5_0_x065_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x09_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x09", "role": "dout" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x09_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x09", "role": "empty_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_5_x09_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_5_x09", "role": "read" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x010_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x010", "role": "din" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x010_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x010", "role": "full_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_6_x010_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_6_x010", "role": "write" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_0_x065_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_0_x065", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "A_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "492210", "EstimateLatencyMax" : "1671858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_ping_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_pong_V_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	A_IO_L2_in_5_x0 {
		fifo_A_A_IO_L2_in_5_x09 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x010 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_5_0_x065 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "492210", "Max" : "1671858"}
	, {"Name" : "Interval", "Min" : "492210", "Max" : "1671858"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_A_IO_L2_in_5_x09 { ap_fifo {  { fifo_A_A_IO_L2_in_5_x09_dout fifo_data 0 512 }  { fifo_A_A_IO_L2_in_5_x09_empty_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_5_x09_read fifo_update 1 1 } } }
	fifo_A_A_IO_L2_in_6_x010 { ap_fifo {  { fifo_A_A_IO_L2_in_6_x010_din fifo_data 1 512 }  { fifo_A_A_IO_L2_in_6_x010_full_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_6_x010_write fifo_update 1 1 } } }
	fifo_A_PE_5_0_x065 { ap_fifo {  { fifo_A_PE_5_0_x065_din fifo_data 1 512 }  { fifo_A_PE_5_0_x065_full_n fifo_status 0 1 }  { fifo_A_PE_5_0_x065_write fifo_update 1 1 } } }
}
