set moduleName PE_wrapper_4_6_x0
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
set C_modelName {PE_wrapper_4_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_6_x070 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_7_x071 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_6_x0158 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_6_x0159 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_6_x0224 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_6_x070", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_7_x071", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_6_x0158", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_6_x0159", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_6_x0224", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_6_x070_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_6_x070_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_6_x070_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_7_x071_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_7_x071_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_7_x071_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_6_x0158_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_6_x0158_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_6_x0158_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_6_x0159_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_6_x0159_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_6_x0159_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_6_x0224_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_6_x0224_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_6_x0224_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_6_x070_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x070", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_6_x070_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x070", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_6_x070_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x070", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_7_x071_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x071", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_7_x071_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x071", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_7_x071_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x071", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_6_x0158_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0158", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_6_x0158_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0158", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_6_x0158_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0158", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_6_x0159_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0159", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_6_x0159_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0159", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_6_x0159_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0159", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0224_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0224", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0224_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0224", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0224_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0224", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_6_x0",
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
			{"Name" : "fifo_A_PE_4_6_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U305", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_6_x0 {
		fifo_A_PE_4_6_x070 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_7_x071 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_6_x0158 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_6_x0159 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_6_x0224 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_6_x070 { ap_fifo {  { fifo_A_PE_4_6_x070_dout fifo_data 0 512 }  { fifo_A_PE_4_6_x070_empty_n fifo_status 0 1 }  { fifo_A_PE_4_6_x070_read fifo_update 1 1 } } }
	fifo_A_PE_4_7_x071 { ap_fifo {  { fifo_A_PE_4_7_x071_din fifo_data 1 512 }  { fifo_A_PE_4_7_x071_full_n fifo_status 0 1 }  { fifo_A_PE_4_7_x071_write fifo_update 1 1 } } }
	fifo_B_PE_4_6_x0158 { ap_fifo {  { fifo_B_PE_4_6_x0158_dout fifo_data 0 512 }  { fifo_B_PE_4_6_x0158_empty_n fifo_status 0 1 }  { fifo_B_PE_4_6_x0158_read fifo_update 1 1 } } }
	fifo_B_PE_5_6_x0159 { ap_fifo {  { fifo_B_PE_5_6_x0159_din fifo_data 1 512 }  { fifo_B_PE_5_6_x0159_full_n fifo_status 0 1 }  { fifo_B_PE_5_6_x0159_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_6_x0224 { ap_fifo {  { fifo_C_drain_PE_4_6_x0224_din fifo_data 1 16 }  { fifo_C_drain_PE_4_6_x0224_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_6_x0224_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_6_x0
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
set C_modelName {PE_wrapper_4_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_6_x062 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_7_x063 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_6_x0150 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_6_x0151 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_6_x0216 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_6_x062", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_7_x063", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_6_x0150", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_6_x0151", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_6_x0216", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_6_x062_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_6_x062_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_6_x062_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_7_x063_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_7_x063_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_7_x063_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_6_x0150_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_6_x0150_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_6_x0150_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_6_x0151_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_6_x0151_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_6_x0151_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_6_x0216_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_6_x0216_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_6_x0216_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_6_x0",
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
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U305", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_6_x0 {
		fifo_A_PE_4_6_x062 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_7_x063 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_6_x0150 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_6_x0151 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_6_x0216 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_6_x062 { ap_fifo {  { fifo_A_PE_4_6_x062_dout fifo_data 0 512 }  { fifo_A_PE_4_6_x062_empty_n fifo_status 0 1 }  { fifo_A_PE_4_6_x062_read fifo_update 1 1 } } }
	fifo_A_PE_4_7_x063 { ap_fifo {  { fifo_A_PE_4_7_x063_din fifo_data 1 512 }  { fifo_A_PE_4_7_x063_full_n fifo_status 0 1 }  { fifo_A_PE_4_7_x063_write fifo_update 1 1 } } }
	fifo_B_PE_4_6_x0150 { ap_fifo {  { fifo_B_PE_4_6_x0150_dout fifo_data 0 512 }  { fifo_B_PE_4_6_x0150_empty_n fifo_status 0 1 }  { fifo_B_PE_4_6_x0150_read fifo_update 1 1 } } }
	fifo_B_PE_5_6_x0151 { ap_fifo {  { fifo_B_PE_5_6_x0151_din fifo_data 1 512 }  { fifo_B_PE_5_6_x0151_full_n fifo_status 0 1 }  { fifo_B_PE_5_6_x0151_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_6_x0216 { ap_fifo {  { fifo_C_drain_PE_4_6_x0216_din fifo_data 1 16 }  { fifo_C_drain_PE_4_6_x0216_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_6_x0216_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_6_x0
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
set C_modelName {PE_wrapper_4_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_6_x062 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_7_x063 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_6_x0150 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_6_x0151 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_6_x0216 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_6_x062", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_7_x063", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_6_x0150", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_6_x0151", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_6_x0216", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_6_x062_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_6_x062_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_6_x062_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_7_x063_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_7_x063_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_7_x063_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_6_x0150_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_6_x0150_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_6_x0150_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_6_x0151_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_6_x0151_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_6_x0151_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_6_x0216_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_6_x0216_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_6_x0216_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_4_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524297", "EstimateLatencyMax" : "524297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1550", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1551", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1552", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1553", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1554", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1555", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1556", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1557", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1558", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1559", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1560", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1561", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1562", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1563", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1564", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1565", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1566", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1567", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1568", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1569", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1570", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1571", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1572", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1573", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1574", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1575", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1576", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1577", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1578", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1579", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1580", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1581", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_6_x0 {
		fifo_A_PE_4_6_x062 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_4_7_x063 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_4_6_x0150 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_5_6_x0151 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_4_6_x0216 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "524297", "Max" : "524297"}
	, {"Name" : "Interval", "Min" : "524297", "Max" : "524297"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_6_x062 { ap_fifo {  { fifo_A_PE_4_6_x062_dout fifo_data 0 512 }  { fifo_A_PE_4_6_x062_empty_n fifo_status 0 1 }  { fifo_A_PE_4_6_x062_read fifo_update 1 1 } } }
	fifo_A_PE_4_7_x063 { ap_fifo {  { fifo_A_PE_4_7_x063_din fifo_data 1 512 }  { fifo_A_PE_4_7_x063_full_n fifo_status 0 1 }  { fifo_A_PE_4_7_x063_write fifo_update 1 1 } } }
	fifo_B_PE_4_6_x0150 { ap_fifo {  { fifo_B_PE_4_6_x0150_dout fifo_data 0 512 }  { fifo_B_PE_4_6_x0150_empty_n fifo_status 0 1 }  { fifo_B_PE_4_6_x0150_read fifo_update 1 1 } } }
	fifo_B_PE_5_6_x0151 { ap_fifo {  { fifo_B_PE_5_6_x0151_din fifo_data 1 512 }  { fifo_B_PE_5_6_x0151_full_n fifo_status 0 1 }  { fifo_B_PE_5_6_x0151_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_6_x0216 { ap_fifo {  { fifo_C_drain_PE_4_6_x0216_din fifo_data 1 16 }  { fifo_C_drain_PE_4_6_x0216_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_6_x0216_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_6_x0
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
set C_modelName {PE_wrapper_4_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_6_x062 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_7_x063 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_6_x0150 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_6_x0151 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_6_x0216 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_6_x062", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_7_x063", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_6_x0150", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_6_x0151", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_6_x0216", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_6_x062_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_6_x062_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_6_x062_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_7_x063_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_7_x063_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_7_x063_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_6_x0150_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_6_x0150_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_6_x0150_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_6_x0151_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_6_x0151_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_6_x0151_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_6_x0216_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_6_x0216_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_6_x0216_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_6_x062_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_6_x062", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_7_x063_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x063", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_6_x0150_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_6_x0150", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_6_x0151_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_6_x0151", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_6_x0216_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_6_x0216", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_4_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524297", "EstimateLatencyMax" : "524297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1550", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1551", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1552", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1553", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1554", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1555", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1556", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1557", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1558", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1559", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1560", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1561", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1562", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1563", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1564", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1565", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1566", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1567", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1568", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1569", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1570", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1571", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1572", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1573", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1574", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1575", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1576", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1577", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1578", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1579", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1580", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1581", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_6_x0 {
		fifo_A_PE_4_6_x062 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_4_7_x063 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_4_6_x0150 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_5_6_x0151 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_4_6_x0216 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "524297", "Max" : "524297"}
	, {"Name" : "Interval", "Min" : "524297", "Max" : "524297"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_6_x062 { ap_fifo {  { fifo_A_PE_4_6_x062_dout fifo_data 0 512 }  { fifo_A_PE_4_6_x062_empty_n fifo_status 0 1 }  { fifo_A_PE_4_6_x062_read fifo_update 1 1 } } }
	fifo_A_PE_4_7_x063 { ap_fifo {  { fifo_A_PE_4_7_x063_din fifo_data 1 512 }  { fifo_A_PE_4_7_x063_full_n fifo_status 0 1 }  { fifo_A_PE_4_7_x063_write fifo_update 1 1 } } }
	fifo_B_PE_4_6_x0150 { ap_fifo {  { fifo_B_PE_4_6_x0150_dout fifo_data 0 512 }  { fifo_B_PE_4_6_x0150_empty_n fifo_status 0 1 }  { fifo_B_PE_4_6_x0150_read fifo_update 1 1 } } }
	fifo_B_PE_5_6_x0151 { ap_fifo {  { fifo_B_PE_5_6_x0151_din fifo_data 1 512 }  { fifo_B_PE_5_6_x0151_full_n fifo_status 0 1 }  { fifo_B_PE_5_6_x0151_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_6_x0216 { ap_fifo {  { fifo_C_drain_PE_4_6_x0216_din fifo_data 1 16 }  { fifo_C_drain_PE_4_6_x0216_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_6_x0216_write fifo_update 1 1 } } }
}
