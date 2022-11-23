set moduleName PE_wrapper_11_1_x2
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
set C_modelName {PE_wrapper_11_1_x2}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_11_1_x250 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_11_2_x251 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_11_1_x280 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_12_1_x281 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_11_1_x2107 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_11_1_x250", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_11_2_x251", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_11_1_x280", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_12_1_x281", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_11_1_x2107", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_11_1_x250_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_11_1_x250_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_11_1_x250_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_11_2_x251_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_11_2_x251_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_11_2_x251_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_11_1_x280_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_11_1_x280_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_11_1_x280_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_12_1_x281_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_12_1_x281_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_12_1_x281_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_11_1_x2107_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_11_1_x2107_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_11_1_x2107_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "read" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "din" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "write" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "read" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "din" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_11_1_x2",
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
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1190", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1191", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_11_1_x2 {
		fifo_A_PE_11_1_x250 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_2_x251 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_11_1_x280 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_1_x281 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_11_1_x2107 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4232386", "Max" : "4232386"}
	, {"Name" : "Interval", "Min" : "4232386", "Max" : "4232386"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_11_1_x250 { ap_fifo {  { fifo_A_PE_11_1_x250_dout fifo_data 0 256 }  { fifo_A_PE_11_1_x250_empty_n fifo_status 0 1 }  { fifo_A_PE_11_1_x250_read fifo_update 1 1 } } }
	fifo_A_PE_11_2_x251 { ap_fifo {  { fifo_A_PE_11_2_x251_din fifo_data 1 256 }  { fifo_A_PE_11_2_x251_full_n fifo_status 0 1 }  { fifo_A_PE_11_2_x251_write fifo_update 1 1 } } }
	fifo_B_PE_11_1_x280 { ap_fifo {  { fifo_B_PE_11_1_x280_dout fifo_data 0 256 }  { fifo_B_PE_11_1_x280_empty_n fifo_status 0 1 }  { fifo_B_PE_11_1_x280_read fifo_update 1 1 } } }
	fifo_B_PE_12_1_x281 { ap_fifo {  { fifo_B_PE_12_1_x281_din fifo_data 1 256 }  { fifo_B_PE_12_1_x281_full_n fifo_status 0 1 }  { fifo_B_PE_12_1_x281_write fifo_update 1 1 } } }
	fifo_C_drain_PE_11_1_x2107 { ap_fifo {  { fifo_C_drain_PE_11_1_x2107_din fifo_data 1 32 }  { fifo_C_drain_PE_11_1_x2107_full_n fifo_status 0 1 }  { fifo_C_drain_PE_11_1_x2107_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_11_1_x2
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
set C_modelName {PE_wrapper_11_1_x2}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_11_1_x250 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_11_2_x251 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_11_1_x280 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_12_1_x281 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_11_1_x2107 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_11_1_x250", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_11_2_x251", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_11_1_x280", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_12_1_x281", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_11_1_x2107", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_11_1_x250_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_11_1_x250_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_11_1_x250_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_11_2_x251_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_11_2_x251_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_11_2_x251_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_11_1_x280_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_11_1_x280_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_11_1_x280_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_12_1_x281_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_12_1_x281_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_12_1_x281_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_11_1_x2107_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_11_1_x2107_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_11_1_x2107_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "read" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "din" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "write" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "read" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "din" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "PE_wrapper_11_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33984", "EstimateLatencyMax" : "33984",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2238", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2239", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2240", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2241", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2242", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2243", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2244", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2245", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2246", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2247", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2248", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2249", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2250", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2251", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2252", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2253", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_11_1_x2 {
		fifo_A_PE_11_1_x250 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_11_2_x251 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_11_1_x280 {Type I LastRead 3 FirstWrite -1}
		fifo_B_PE_12_1_x281 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_PE_11_1_x2107 {Type O LastRead -1 FirstWrite 64}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33984", "Max" : "33984"}
	, {"Name" : "Interval", "Min" : "33984", "Max" : "33984"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_11_1_x250 { ap_fifo {  { fifo_A_PE_11_1_x250_dout fifo_data 0 256 }  { fifo_A_PE_11_1_x250_empty_n fifo_status 0 1 }  { fifo_A_PE_11_1_x250_read fifo_update 1 1 } } }
	fifo_A_PE_11_2_x251 { ap_fifo {  { fifo_A_PE_11_2_x251_din fifo_data 1 256 }  { fifo_A_PE_11_2_x251_full_n fifo_status 0 1 }  { fifo_A_PE_11_2_x251_write fifo_update 1 1 } } }
	fifo_B_PE_11_1_x280 { ap_fifo {  { fifo_B_PE_11_1_x280_dout fifo_data 0 256 }  { fifo_B_PE_11_1_x280_empty_n fifo_status 0 1 }  { fifo_B_PE_11_1_x280_read fifo_update 1 1 } } }
	fifo_B_PE_12_1_x281 { ap_fifo {  { fifo_B_PE_12_1_x281_din fifo_data 1 256 }  { fifo_B_PE_12_1_x281_full_n fifo_status 0 1 }  { fifo_B_PE_12_1_x281_write fifo_update 1 1 } } }
	fifo_C_drain_PE_11_1_x2107 { ap_fifo {  { fifo_C_drain_PE_11_1_x2107_din fifo_data 1 32 }  { fifo_C_drain_PE_11_1_x2107_full_n fifo_status 0 1 }  { fifo_C_drain_PE_11_1_x2107_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_11_1_x2
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
set C_modelName {PE_wrapper_11_1_x2}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_11_1_x250 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_11_2_x251 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_11_1_x280 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_PE_12_1_x281 int 256 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_11_1_x2107 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_11_1_x250", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_11_2_x251", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_11_1_x280", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_12_1_x281", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_11_1_x2107", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_11_1_x250_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_11_1_x250_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_11_1_x250_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_11_2_x251_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_11_2_x251_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_11_2_x251_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_11_1_x280_dout sc_in sc_lv 256 signal 2 } 
	{ fifo_B_PE_11_1_x280_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_11_1_x280_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_12_1_x281_din sc_out sc_lv 256 signal 3 } 
	{ fifo_B_PE_12_1_x281_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_12_1_x281_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_11_1_x2107_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_11_1_x2107_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_11_1_x2107_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_11_1_x250_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_1_x250", "role": "read" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "din" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_11_2_x251_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_11_2_x251", "role": "write" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_11_1_x280_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_11_1_x280", "role": "read" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "din" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_12_1_x281_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_12_1_x281", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_11_1_x2107_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_11_1_x2107", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "PE_wrapper_11_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33984", "EstimateLatencyMax" : "33984",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2239", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2240", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2241", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2242", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2243", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2244", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2245", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2246", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2247", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2248", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2249", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2250", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2251", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2252", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2253", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2254", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_11_1_x2 {
		fifo_A_PE_11_1_x250 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_11_2_x251 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_11_1_x280 {Type I LastRead 3 FirstWrite -1}
		fifo_B_PE_12_1_x281 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_PE_11_1_x2107 {Type O LastRead -1 FirstWrite 64}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33984", "Max" : "33984"}
	, {"Name" : "Interval", "Min" : "33984", "Max" : "33984"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_11_1_x250 { ap_fifo {  { fifo_A_PE_11_1_x250_dout fifo_data 0 256 }  { fifo_A_PE_11_1_x250_empty_n fifo_status 0 1 }  { fifo_A_PE_11_1_x250_read fifo_update 1 1 } } }
	fifo_A_PE_11_2_x251 { ap_fifo {  { fifo_A_PE_11_2_x251_din fifo_data 1 256 }  { fifo_A_PE_11_2_x251_full_n fifo_status 0 1 }  { fifo_A_PE_11_2_x251_write fifo_update 1 1 } } }
	fifo_B_PE_11_1_x280 { ap_fifo {  { fifo_B_PE_11_1_x280_dout fifo_data 0 256 }  { fifo_B_PE_11_1_x280_empty_n fifo_status 0 1 }  { fifo_B_PE_11_1_x280_read fifo_update 1 1 } } }
	fifo_B_PE_12_1_x281 { ap_fifo {  { fifo_B_PE_12_1_x281_din fifo_data 1 256 }  { fifo_B_PE_12_1_x281_full_n fifo_status 0 1 }  { fifo_B_PE_12_1_x281_write fifo_update 1 1 } } }
	fifo_C_drain_PE_11_1_x2107 { ap_fifo {  { fifo_C_drain_PE_11_1_x2107_din fifo_data 1 32 }  { fifo_C_drain_PE_11_1_x2107_full_n fifo_status 0 1 }  { fifo_C_drain_PE_11_1_x2107_write fifo_update 1 1 } } }
}
