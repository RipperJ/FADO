set moduleName PE_wrapper_0_3_x0
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
set C_modelName {PE_wrapper_0_3_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_3_x031 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_4_x032 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_3_x0127 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_3_x0128 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_3_x0196 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_3_x031", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_4_x032", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_3_x0127", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_3_x0128", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_3_x0196", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_3_x031_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_3_x031_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_3_x031_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_4_x032_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_4_x032_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_4_x032_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_3_x0127_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_3_x0127_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_3_x0127_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_3_x0128_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_3_x0128_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_3_x0128_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_3_x0196_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_3_x0196_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_3_x0196_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_3_x031_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x031", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_3_x031_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x031", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_3_x031_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x031", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_4_x032_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x032", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_4_x032_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x032", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_4_x032_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x032", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_3_x0127_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0127", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_3_x0127_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0127", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_3_x0127_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0127", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_3_x0128_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0128", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_3_x0128_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0128", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_3_x0128_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0128", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0196_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0196", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0196_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0196", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0196_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0196", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_3_x0",
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
			{"Name" : "fifo_A_PE_0_3_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U95", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x031 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_4_x032 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_3_x0127 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_3_x0128 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_3_x0196 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_3_x031 { ap_fifo {  { fifo_A_PE_0_3_x031_dout fifo_data 0 512 }  { fifo_A_PE_0_3_x031_empty_n fifo_status 0 1 }  { fifo_A_PE_0_3_x031_read fifo_update 1 1 } } }
	fifo_A_PE_0_4_x032 { ap_fifo {  { fifo_A_PE_0_4_x032_din fifo_data 1 512 }  { fifo_A_PE_0_4_x032_full_n fifo_status 0 1 }  { fifo_A_PE_0_4_x032_write fifo_update 1 1 } } }
	fifo_B_PE_0_3_x0127 { ap_fifo {  { fifo_B_PE_0_3_x0127_dout fifo_data 0 512 }  { fifo_B_PE_0_3_x0127_empty_n fifo_status 0 1 }  { fifo_B_PE_0_3_x0127_read fifo_update 1 1 } } }
	fifo_B_PE_1_3_x0128 { ap_fifo {  { fifo_B_PE_1_3_x0128_din fifo_data 1 512 }  { fifo_B_PE_1_3_x0128_full_n fifo_status 0 1 }  { fifo_B_PE_1_3_x0128_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_3_x0196 { ap_fifo {  { fifo_C_drain_PE_0_3_x0196_din fifo_data 1 16 }  { fifo_C_drain_PE_0_3_x0196_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_3_x0196_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_3_x0
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
set C_modelName {PE_wrapper_0_3_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_3_x023 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_4_x024 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_3_x0119 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_3_x0120 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_3_x0188 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_3_x023", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_4_x024", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_3_x0119", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_3_x0120", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_3_x0188", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_3_x023_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_3_x023_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_3_x023_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_4_x024_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_4_x024_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_4_x024_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_3_x0119_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_3_x0119_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_3_x0119_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_3_x0120_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_3_x0120_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_3_x0120_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_3_x0188_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_3_x0188_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_3_x0188_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_3_x023_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x023", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_3_x023_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x023", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_3_x023_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x023", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_4_x024_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x024", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_4_x024_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x024", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_4_x024_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x024", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_3_x0119_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0119", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_3_x0119_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0119", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_3_x0119_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0119", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_3_x0120_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0120", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_3_x0120_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0120", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_3_x0120_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0120", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0188_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0188", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0188_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0188", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0188_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0188", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_3_x0",
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
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U95", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x023 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_4_x024 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_3_x0119 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_3_x0120 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_3_x0188 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_3_x023 { ap_fifo {  { fifo_A_PE_0_3_x023_dout fifo_data 0 512 }  { fifo_A_PE_0_3_x023_empty_n fifo_status 0 1 }  { fifo_A_PE_0_3_x023_read fifo_update 1 1 } } }
	fifo_A_PE_0_4_x024 { ap_fifo {  { fifo_A_PE_0_4_x024_din fifo_data 1 512 }  { fifo_A_PE_0_4_x024_full_n fifo_status 0 1 }  { fifo_A_PE_0_4_x024_write fifo_update 1 1 } } }
	fifo_B_PE_0_3_x0119 { ap_fifo {  { fifo_B_PE_0_3_x0119_dout fifo_data 0 512 }  { fifo_B_PE_0_3_x0119_empty_n fifo_status 0 1 }  { fifo_B_PE_0_3_x0119_read fifo_update 1 1 } } }
	fifo_B_PE_1_3_x0120 { ap_fifo {  { fifo_B_PE_1_3_x0120_din fifo_data 1 512 }  { fifo_B_PE_1_3_x0120_full_n fifo_status 0 1 }  { fifo_B_PE_1_3_x0120_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_3_x0188 { ap_fifo {  { fifo_C_drain_PE_0_3_x0188_din fifo_data 1 16 }  { fifo_C_drain_PE_0_3_x0188_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_3_x0188_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_3_x0
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
set C_modelName {PE_wrapper_0_3_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_3_x023 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_4_x024 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_3_x0119 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_3_x0120 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_3_x0188 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_3_x023", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_4_x024", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_3_x0119", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_3_x0120", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_3_x0188", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_3_x023_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_3_x023_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_3_x023_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_4_x024_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_4_x024_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_4_x024_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_3_x0119_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_3_x0119_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_3_x0119_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_3_x0120_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_3_x0120_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_3_x0120_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_3_x0188_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_3_x0188_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_3_x0188_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_3_x023_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x023", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_3_x023_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x023", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_3_x023_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_3_x023", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_4_x024_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x024", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_4_x024_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x024", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_4_x024_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_4_x024", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_3_x0119_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0119", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_3_x0119_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0119", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_3_x0119_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_3_x0119", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_3_x0120_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0120", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_3_x0120_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0120", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_3_x0120_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_3_x0120", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0188_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0188", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0188_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0188", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_3_x0188_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_3_x0188", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_0_3_x0",
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
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U101", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x023 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_4_x024 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_3_x0119 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_3_x0120 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_3_x0188 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_3_x023 { ap_fifo {  { fifo_A_PE_0_3_x023_dout fifo_data 0 512 }  { fifo_A_PE_0_3_x023_empty_n fifo_status 0 1 }  { fifo_A_PE_0_3_x023_read fifo_update 1 1 } } }
	fifo_A_PE_0_4_x024 { ap_fifo {  { fifo_A_PE_0_4_x024_din fifo_data 1 512 }  { fifo_A_PE_0_4_x024_full_n fifo_status 0 1 }  { fifo_A_PE_0_4_x024_write fifo_update 1 1 } } }
	fifo_B_PE_0_3_x0119 { ap_fifo {  { fifo_B_PE_0_3_x0119_dout fifo_data 0 512 }  { fifo_B_PE_0_3_x0119_empty_n fifo_status 0 1 }  { fifo_B_PE_0_3_x0119_read fifo_update 1 1 } } }
	fifo_B_PE_1_3_x0120 { ap_fifo {  { fifo_B_PE_1_3_x0120_din fifo_data 1 512 }  { fifo_B_PE_1_3_x0120_full_n fifo_status 0 1 }  { fifo_B_PE_1_3_x0120_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_3_x0188 { ap_fifo {  { fifo_C_drain_PE_0_3_x0188_din fifo_data 1 16 }  { fifo_C_drain_PE_0_3_x0188_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_3_x0188_write fifo_update 1 1 } } }
}
