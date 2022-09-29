set moduleName PE_wrapper_6_6_x0
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
set C_modelName {PE_wrapper_6_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_6_x088 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_7_x089 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_6_x0160 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_6_x0161 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_6_x0226 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_6_x088", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_7_x089", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_6_x0160", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_6_x0161", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_6_x0226", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_6_x088_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_6_x088_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_6_x088_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_7_x089_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_7_x089_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_7_x089_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_6_x0160_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_6_x0160_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_6_x0160_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_6_x0161_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_6_x0161_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_6_x0161_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_6_x0226_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_6_x0226_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_6_x0226_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_6_x088_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x088", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_6_x088_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x088", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_6_x088_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x088", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_7_x089_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_7_x089", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_7_x089_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_7_x089", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_7_x089_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_7_x089", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_6_x0160_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_6_x0160", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_6_x0160_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_6_x0160", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_6_x0160_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_6_x0160", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_6_x0161_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_6_x0161", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_6_x0161_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_6_x0161", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_6_x0161_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_6_x0161", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_6_x0226_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_6_x0226", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_6_x0226_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_6_x0226", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_6_x0226_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_6_x0226", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129122849", "EstimateLatencyMax" : "129122849",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_6_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_7_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U401", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_6_x0 {
		fifo_A_PE_6_6_x088 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_7_x089 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_6_x0160 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_6_x0161 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_6_x0226 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_6_x088 { ap_fifo {  { fifo_A_PE_6_6_x088_dout fifo_data 0 512 }  { fifo_A_PE_6_6_x088_empty_n fifo_status 0 1 }  { fifo_A_PE_6_6_x088_read fifo_update 1 1 } } }
	fifo_A_PE_6_7_x089 { ap_fifo {  { fifo_A_PE_6_7_x089_din fifo_data 1 512 }  { fifo_A_PE_6_7_x089_full_n fifo_status 0 1 }  { fifo_A_PE_6_7_x089_write fifo_update 1 1 } } }
	fifo_B_PE_6_6_x0160 { ap_fifo {  { fifo_B_PE_6_6_x0160_dout fifo_data 0 512 }  { fifo_B_PE_6_6_x0160_empty_n fifo_status 0 1 }  { fifo_B_PE_6_6_x0160_read fifo_update 1 1 } } }
	fifo_B_PE_7_6_x0161 { ap_fifo {  { fifo_B_PE_7_6_x0161_din fifo_data 1 512 }  { fifo_B_PE_7_6_x0161_full_n fifo_status 0 1 }  { fifo_B_PE_7_6_x0161_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_6_x0226 { ap_fifo {  { fifo_C_drain_PE_6_6_x0226_din fifo_data 1 16 }  { fifo_C_drain_PE_6_6_x0226_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_6_x0226_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_6_x0
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
set C_modelName {PE_wrapper_6_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_6_x080 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_7_x081 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_6_x0152 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_6_x0153 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_6_x0218 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_6_x080", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_7_x081", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_6_x0152", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_6_x0153", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_6_x0218", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_6_x080_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_6_x080_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_6_x080_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_7_x081_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_7_x081_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_7_x081_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_6_x0152_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_6_x0152_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_6_x0152_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_6_x0153_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_6_x0153_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_6_x0153_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_6_x0218_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_6_x0218_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_6_x0218_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_6_x080_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x080", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_6_x080_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x080", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_6_x080_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x080", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_7_x081_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_7_x081", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_7_x081_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_7_x081", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_7_x081_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_7_x081", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_6_x0152_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_6_x0152", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_6_x0152_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_6_x0152", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_6_x0152_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_6_x0152", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_6_x0153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_6_x0153", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_6_x0153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_6_x0153", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_6_x0153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_6_x0153", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_6_x0218_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_6_x0218", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_6_x0218_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_6_x0218", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_6_x0218_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_6_x0218", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129122849", "EstimateLatencyMax" : "129122849",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U401", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_6_x0 {
		fifo_A_PE_6_6_x080 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_7_x081 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_6_x0152 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_6_x0153 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_6_x0218 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_6_x080 { ap_fifo {  { fifo_A_PE_6_6_x080_dout fifo_data 0 512 }  { fifo_A_PE_6_6_x080_empty_n fifo_status 0 1 }  { fifo_A_PE_6_6_x080_read fifo_update 1 1 } } }
	fifo_A_PE_6_7_x081 { ap_fifo {  { fifo_A_PE_6_7_x081_din fifo_data 1 512 }  { fifo_A_PE_6_7_x081_full_n fifo_status 0 1 }  { fifo_A_PE_6_7_x081_write fifo_update 1 1 } } }
	fifo_B_PE_6_6_x0152 { ap_fifo {  { fifo_B_PE_6_6_x0152_dout fifo_data 0 512 }  { fifo_B_PE_6_6_x0152_empty_n fifo_status 0 1 }  { fifo_B_PE_6_6_x0152_read fifo_update 1 1 } } }
	fifo_B_PE_7_6_x0153 { ap_fifo {  { fifo_B_PE_7_6_x0153_din fifo_data 1 512 }  { fifo_B_PE_7_6_x0153_full_n fifo_status 0 1 }  { fifo_B_PE_7_6_x0153_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_6_x0218 { ap_fifo {  { fifo_C_drain_PE_6_6_x0218_din fifo_data 1 16 }  { fifo_C_drain_PE_6_6_x0218_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_6_x0218_write fifo_update 1 1 } } }
}
