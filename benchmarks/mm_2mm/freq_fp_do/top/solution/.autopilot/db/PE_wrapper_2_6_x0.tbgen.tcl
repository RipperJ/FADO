set moduleName PE_wrapper_2_6_x0
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
set C_modelName {PE_wrapper_2_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_6_x052 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_7_x053 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_6_x0156 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_6_x0157 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_6_x0222 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_6_x052", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_7_x053", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x0156", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_6_x0157", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_6_x0222", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_6_x052_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_6_x052_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_6_x052_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x053_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_7_x053_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_7_x053_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_6_x0156_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_6_x0156_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x0156_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_6_x0157_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_6_x0157_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_6_x0157_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_6_x0222_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_6_x0222_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_6_x0222_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_6_x052_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x052", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_6_x052_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x052", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_6_x052_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x052", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_7_x053_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x053", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_7_x053_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x053", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x053_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x053", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_6_x0156_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0156", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_6_x0156_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0156", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x0156_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0156", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_6_x0157_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0157", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_6_x0157_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0157", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_6_x0157_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0157", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0222_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0222", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0222_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0222", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0222_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0222", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_6_x0",
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
			{"Name" : "fifo_A_PE_2_6_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U209", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x052 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_7_x053 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_6_x0156 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_6_x0157 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_6_x0222 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_6_x052 { ap_fifo {  { fifo_A_PE_2_6_x052_dout fifo_data 0 512 }  { fifo_A_PE_2_6_x052_empty_n fifo_status 0 1 }  { fifo_A_PE_2_6_x052_read fifo_update 1 1 } } }
	fifo_A_PE_2_7_x053 { ap_fifo {  { fifo_A_PE_2_7_x053_din fifo_data 1 512 }  { fifo_A_PE_2_7_x053_full_n fifo_status 0 1 }  { fifo_A_PE_2_7_x053_write fifo_update 1 1 } } }
	fifo_B_PE_2_6_x0156 { ap_fifo {  { fifo_B_PE_2_6_x0156_dout fifo_data 0 512 }  { fifo_B_PE_2_6_x0156_empty_n fifo_status 0 1 }  { fifo_B_PE_2_6_x0156_read fifo_update 1 1 } } }
	fifo_B_PE_3_6_x0157 { ap_fifo {  { fifo_B_PE_3_6_x0157_din fifo_data 1 512 }  { fifo_B_PE_3_6_x0157_full_n fifo_status 0 1 }  { fifo_B_PE_3_6_x0157_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_6_x0222 { ap_fifo {  { fifo_C_drain_PE_2_6_x0222_din fifo_data 1 16 }  { fifo_C_drain_PE_2_6_x0222_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_6_x0222_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_6_x0
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
set C_modelName {PE_wrapper_2_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_6_x044 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_7_x045 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_6_x0148 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_6_x0149 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_6_x0214 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_6_x044", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_7_x045", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x0148", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_6_x0149", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_6_x0214", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_6_x044_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_6_x044_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_6_x044_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x045_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_7_x045_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_7_x045_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_6_x0148_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_6_x0148_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x0148_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_6_x0149_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_6_x0149_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_6_x0149_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_6_x0214_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_6_x0214_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_6_x0214_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_6_x044_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x044", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_6_x044_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x044", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_6_x044_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x044", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_7_x045_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x045", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_7_x045_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x045", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x045_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x045", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_6_x0148_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0148", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_6_x0148_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0148", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x0148_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0148", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_6_x0149_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0149", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_6_x0149_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0149", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_6_x0149_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0149", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0214_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0214", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0214_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0214", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0214_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0214", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_6_x0",
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
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U209", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x044 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_7_x045 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_6_x0148 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_6_x0149 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_6_x0214 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_6_x044 { ap_fifo {  { fifo_A_PE_2_6_x044_dout fifo_data 0 512 }  { fifo_A_PE_2_6_x044_empty_n fifo_status 0 1 }  { fifo_A_PE_2_6_x044_read fifo_update 1 1 } } }
	fifo_A_PE_2_7_x045 { ap_fifo {  { fifo_A_PE_2_7_x045_din fifo_data 1 512 }  { fifo_A_PE_2_7_x045_full_n fifo_status 0 1 }  { fifo_A_PE_2_7_x045_write fifo_update 1 1 } } }
	fifo_B_PE_2_6_x0148 { ap_fifo {  { fifo_B_PE_2_6_x0148_dout fifo_data 0 512 }  { fifo_B_PE_2_6_x0148_empty_n fifo_status 0 1 }  { fifo_B_PE_2_6_x0148_read fifo_update 1 1 } } }
	fifo_B_PE_3_6_x0149 { ap_fifo {  { fifo_B_PE_3_6_x0149_din fifo_data 1 512 }  { fifo_B_PE_3_6_x0149_full_n fifo_status 0 1 }  { fifo_B_PE_3_6_x0149_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_6_x0214 { ap_fifo {  { fifo_C_drain_PE_2_6_x0214_din fifo_data 1 16 }  { fifo_C_drain_PE_2_6_x0214_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_6_x0214_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_6_x0
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
set C_modelName {PE_wrapper_2_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_6_x044 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_7_x045 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_6_x0148 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_6_x0149 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_6_x0214 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_6_x044", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_7_x045", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x0148", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_6_x0149", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_6_x0214", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_6_x044_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_6_x044_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_6_x044_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x045_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_7_x045_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_7_x045_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_6_x0148_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_6_x0148_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x0148_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_6_x0149_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_6_x0149_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_6_x0149_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_6_x0214_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_6_x0214_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_6_x0214_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_6_x044_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x044", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_6_x044_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x044", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_6_x044_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x044", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_7_x045_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x045", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_7_x045_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x045", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x045_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x045", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_6_x0148_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0148", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_6_x0148_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0148", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x0148_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x0148", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_6_x0149_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0149", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_6_x0149_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0149", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_6_x0149_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x0149", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0214_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0214", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0214_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0214", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_6_x0214_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_6_x0214", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_6_x0",
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
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U215", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x044 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_7_x045 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_6_x0148 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_6_x0149 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_6_x0214 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_6_x044 { ap_fifo {  { fifo_A_PE_2_6_x044_dout fifo_data 0 512 }  { fifo_A_PE_2_6_x044_empty_n fifo_status 0 1 }  { fifo_A_PE_2_6_x044_read fifo_update 1 1 } } }
	fifo_A_PE_2_7_x045 { ap_fifo {  { fifo_A_PE_2_7_x045_din fifo_data 1 512 }  { fifo_A_PE_2_7_x045_full_n fifo_status 0 1 }  { fifo_A_PE_2_7_x045_write fifo_update 1 1 } } }
	fifo_B_PE_2_6_x0148 { ap_fifo {  { fifo_B_PE_2_6_x0148_dout fifo_data 0 512 }  { fifo_B_PE_2_6_x0148_empty_n fifo_status 0 1 }  { fifo_B_PE_2_6_x0148_read fifo_update 1 1 } } }
	fifo_B_PE_3_6_x0149 { ap_fifo {  { fifo_B_PE_3_6_x0149_din fifo_data 1 512 }  { fifo_B_PE_3_6_x0149_full_n fifo_status 0 1 }  { fifo_B_PE_3_6_x0149_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_6_x0214 { ap_fifo {  { fifo_C_drain_PE_2_6_x0214_din fifo_data 1 16 }  { fifo_C_drain_PE_2_6_x0214_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_6_x0214_write fifo_update 1 1 } } }
}
