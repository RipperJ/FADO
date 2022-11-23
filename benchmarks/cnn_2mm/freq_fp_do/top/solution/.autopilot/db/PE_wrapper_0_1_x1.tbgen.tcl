set moduleName PE_wrapper_0_1_x1
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
set C_modelName {PE_wrapper_0_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_1_x117 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_2_x118 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_1_x169 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_1_x170 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_1_x196 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_1_x117", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_2_x118", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_1_x169", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_1_x170", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_1_x196", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_PE_0_1_x117_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_0_1_x117_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_1_x117_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_2_x118_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_0_2_x118_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_2_x118_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_1_x169_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_0_1_x169_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_1_x169_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_1_x170_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_1_1_x170_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_1_x170_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_1_x196_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_0_1_x196_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_1_x196_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_1_x117_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_1_x117", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_1_x117_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_1_x117", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_1_x117_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_1_x117", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_2_x118_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_2_x118", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_2_x118_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_2_x118", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_2_x118_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_2_x118", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_1_x169_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_0_1_x169", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_1_x169_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_1_x169", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_1_x169_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_1_x169", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_1_x170_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x170", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_1_x170_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x170", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_1_x170_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x170", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_1_x196_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_1_x196", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_1_x196_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_1_x196", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_1_x196_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_1_x196", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U558", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U559", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_1_x1 {
		fifo_A_PE_0_1_x117 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x118 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_1_x169 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_1_x170 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_0_1_x196 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4232386", "Max" : "4232386"}
	, {"Name" : "Interval", "Min" : "4232386", "Max" : "4232386"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_1_x117 { ap_fifo {  { fifo_A_PE_0_1_x117_dout fifo_data 0 256 }  { fifo_A_PE_0_1_x117_empty_n fifo_status 0 1 }  { fifo_A_PE_0_1_x117_read fifo_update 1 1 } } }
	fifo_A_PE_0_2_x118 { ap_fifo {  { fifo_A_PE_0_2_x118_din fifo_data 1 256 }  { fifo_A_PE_0_2_x118_full_n fifo_status 0 1 }  { fifo_A_PE_0_2_x118_write fifo_update 1 1 } } }
	fifo_B_PE_0_1_x169 { ap_fifo {  { fifo_B_PE_0_1_x169_dout fifo_data 0 256 }  { fifo_B_PE_0_1_x169_empty_n fifo_status 0 1 }  { fifo_B_PE_0_1_x169_read fifo_update 1 1 } } }
	fifo_B_PE_1_1_x170 { ap_fifo {  { fifo_B_PE_1_1_x170_din fifo_data 1 256 }  { fifo_B_PE_1_1_x170_full_n fifo_status 0 1 }  { fifo_B_PE_1_1_x170_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_1_x196 { ap_fifo {  { fifo_C_drain_PE_0_1_x196_din fifo_data 1 32 }  { fifo_C_drain_PE_0_1_x196_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_1_x196_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_1_x1
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
set C_modelName {PE_wrapper_0_1_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_1_x117 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_2_x118 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_1_x169 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_1_x170 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_1_x196 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_1_x117", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_2_x118", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_1_x169", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_1_x170", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_1_x196", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_PE_0_1_x117_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_0_1_x117_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_1_x117_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_2_x118_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_0_2_x118_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_2_x118_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_1_x169_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_0_1_x169_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_1_x169_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_1_x170_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_1_1_x170_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_1_x170_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_1_x196_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_0_1_x196_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_1_x196_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_1_x117_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_1_x117", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_1_x117_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_1_x117", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_1_x117_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_1_x117", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_2_x118_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_2_x118", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_2_x118_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_2_x118", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_2_x118_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_2_x118", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_1_x169_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_0_1_x169", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_1_x169_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_1_x169", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_1_x169_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_1_x169", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_1_x170_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x170", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_1_x170_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x170", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_1_x170_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_1_x170", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_1_x196_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_1_x196", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_1_x196_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_1_x196", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_1_x196_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_1_x196", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U611", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U612", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U613", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U614", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_1_x1 {
		fifo_A_PE_0_1_x117 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x118 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_1_x169 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_1_x170 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_0_1_x196 {Type O LastRead -1 FirstWrite 65}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "133182", "Max" : "133182"}
	, {"Name" : "Interval", "Min" : "133182", "Max" : "133182"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_1_x117 { ap_fifo {  { fifo_A_PE_0_1_x117_dout fifo_data 0 256 }  { fifo_A_PE_0_1_x117_empty_n fifo_status 0 1 }  { fifo_A_PE_0_1_x117_read fifo_update 1 1 } } }
	fifo_A_PE_0_2_x118 { ap_fifo {  { fifo_A_PE_0_2_x118_din fifo_data 1 256 }  { fifo_A_PE_0_2_x118_full_n fifo_status 0 1 }  { fifo_A_PE_0_2_x118_write fifo_update 1 1 } } }
	fifo_B_PE_0_1_x169 { ap_fifo {  { fifo_B_PE_0_1_x169_dout fifo_data 0 256 }  { fifo_B_PE_0_1_x169_empty_n fifo_status 0 1 }  { fifo_B_PE_0_1_x169_read fifo_update 1 1 } } }
	fifo_B_PE_1_1_x170 { ap_fifo {  { fifo_B_PE_1_1_x170_din fifo_data 1 256 }  { fifo_B_PE_1_1_x170_full_n fifo_status 0 1 }  { fifo_B_PE_1_1_x170_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_1_x196 { ap_fifo {  { fifo_C_drain_PE_0_1_x196_din fifo_data 1 32 }  { fifo_C_drain_PE_0_1_x196_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_1_x196_write fifo_update 1 1 } } }
}
