set moduleName PE_wrapper_6_1_x0
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
set C_modelName {PE_wrapper_6_1_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_1_x083 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_2_x084 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_1_x0115 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_1_x0116 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_1_x0186 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_1_x083", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_2_x084", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x0115", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_1_x0116", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_1_x0186", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_1_x083_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_1_x083_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_1_x083_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x084_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_2_x084_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_2_x084_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_1_x0115_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_1_x0115_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x0115_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_1_x0116_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_1_x0116_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_1_x0116_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_1_x0186_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_1_x0186_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_1_x0186_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_1_x083_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x083", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_1_x083_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x083", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_1_x083_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x083", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_2_x084_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x084", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_2_x084_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x084", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x084_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x084", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_1_x0115_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0115", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_1_x0115_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0115", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x0115_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0115", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_1_x0116_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0116", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_1_x0116_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0116", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_1_x0116_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0116", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0186", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0186", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0186", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_1_x0",
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
			{"Name" : "fifo_A_PE_6_1_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U371", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_1_x0 {
		fifo_A_PE_6_1_x083 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_2_x084 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_1_x0115 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_1_x0116 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_1_x0186 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_1_x083 { ap_fifo {  { fifo_A_PE_6_1_x083_dout fifo_data 0 512 }  { fifo_A_PE_6_1_x083_empty_n fifo_status 0 1 }  { fifo_A_PE_6_1_x083_read fifo_update 1 1 } } }
	fifo_A_PE_6_2_x084 { ap_fifo {  { fifo_A_PE_6_2_x084_din fifo_data 1 512 }  { fifo_A_PE_6_2_x084_full_n fifo_status 0 1 }  { fifo_A_PE_6_2_x084_write fifo_update 1 1 } } }
	fifo_B_PE_6_1_x0115 { ap_fifo {  { fifo_B_PE_6_1_x0115_dout fifo_data 0 512 }  { fifo_B_PE_6_1_x0115_empty_n fifo_status 0 1 }  { fifo_B_PE_6_1_x0115_read fifo_update 1 1 } } }
	fifo_B_PE_7_1_x0116 { ap_fifo {  { fifo_B_PE_7_1_x0116_din fifo_data 1 512 }  { fifo_B_PE_7_1_x0116_full_n fifo_status 0 1 }  { fifo_B_PE_7_1_x0116_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_1_x0186 { ap_fifo {  { fifo_C_drain_PE_6_1_x0186_din fifo_data 1 16 }  { fifo_C_drain_PE_6_1_x0186_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_1_x0186_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_1_x0
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
set C_modelName {PE_wrapper_6_1_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_1_x075 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_2_x076 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_1_x0107 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_1_x0108 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_1_x0178 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_1_x075", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_2_x076", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x0107", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_1_x0108", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_1_x0178", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_1_x075_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_1_x075_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_1_x075_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x076_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_2_x076_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_2_x076_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_1_x0107_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_1_x0107_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x0107_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_1_x0108_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_1_x0108_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_1_x0108_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_1_x0178_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_1_x0178_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_1_x0178_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_1_x075_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x075", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_1_x075_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x075", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_1_x075_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x075", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_2_x076_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x076", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_2_x076_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x076", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x076_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x076", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_1_x0107_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0107", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_1_x0107_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0107", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x0107_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0107", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_1_x0108_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0108", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_1_x0108_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0108", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_1_x0108_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0108", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0178_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0178", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0178_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0178", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0178_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0178", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_1_x0",
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
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U371", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_1_x0 {
		fifo_A_PE_6_1_x075 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_2_x076 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_1_x0107 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_1_x0108 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_1_x0178 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_1_x075 { ap_fifo {  { fifo_A_PE_6_1_x075_dout fifo_data 0 512 }  { fifo_A_PE_6_1_x075_empty_n fifo_status 0 1 }  { fifo_A_PE_6_1_x075_read fifo_update 1 1 } } }
	fifo_A_PE_6_2_x076 { ap_fifo {  { fifo_A_PE_6_2_x076_din fifo_data 1 512 }  { fifo_A_PE_6_2_x076_full_n fifo_status 0 1 }  { fifo_A_PE_6_2_x076_write fifo_update 1 1 } } }
	fifo_B_PE_6_1_x0107 { ap_fifo {  { fifo_B_PE_6_1_x0107_dout fifo_data 0 512 }  { fifo_B_PE_6_1_x0107_empty_n fifo_status 0 1 }  { fifo_B_PE_6_1_x0107_read fifo_update 1 1 } } }
	fifo_B_PE_7_1_x0108 { ap_fifo {  { fifo_B_PE_7_1_x0108_din fifo_data 1 512 }  { fifo_B_PE_7_1_x0108_full_n fifo_status 0 1 }  { fifo_B_PE_7_1_x0108_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_1_x0178 { ap_fifo {  { fifo_C_drain_PE_6_1_x0178_din fifo_data 1 16 }  { fifo_C_drain_PE_6_1_x0178_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_1_x0178_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_1_x0
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
set C_modelName {PE_wrapper_6_1_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_1_x075 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_2_x076 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_1_x0107 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_1_x0108 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_1_x0178 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_1_x075", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_2_x076", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_1_x0107", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_1_x0108", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_1_x0178", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_1_x075_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_1_x075_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_1_x075_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_2_x076_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_2_x076_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_2_x076_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_1_x0107_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_1_x0107_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_1_x0107_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_1_x0108_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_1_x0108_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_1_x0108_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_1_x0178_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_1_x0178_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_1_x0178_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_1_x075_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x075", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_1_x075_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x075", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_1_x075_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_1_x075", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_2_x076_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x076", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_2_x076_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x076", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_2_x076_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_2_x076", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_1_x0107_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0107", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_1_x0107_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0107", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_1_x0107_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_1_x0107", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_1_x0108_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0108", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_1_x0108_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0108", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_1_x0108_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_1_x0108", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0178_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0178", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0178_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0178", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_1_x0178_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_1_x0178", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_6_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048584", "EstimateLatencyMax" : "1048584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1935", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1936", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1937", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1938", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1939", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1940", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1941", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1942", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1943", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1944", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1945", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1946", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1947", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1948", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1949", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1950", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1951", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1952", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1953", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1954", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1955", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1956", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1957", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1958", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1959", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1960", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1961", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1962", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1963", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1964", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1965", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1966", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_1_x0 {
		fifo_A_PE_6_1_x075 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_6_2_x076 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_6_1_x0107 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_7_1_x0108 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_6_1_x0178 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048584", "Max" : "1048584"}
	, {"Name" : "Interval", "Min" : "1048584", "Max" : "1048584"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_1_x075 { ap_fifo {  { fifo_A_PE_6_1_x075_dout fifo_data 0 512 }  { fifo_A_PE_6_1_x075_empty_n fifo_status 0 1 }  { fifo_A_PE_6_1_x075_read fifo_update 1 1 } } }
	fifo_A_PE_6_2_x076 { ap_fifo {  { fifo_A_PE_6_2_x076_din fifo_data 1 512 }  { fifo_A_PE_6_2_x076_full_n fifo_status 0 1 }  { fifo_A_PE_6_2_x076_write fifo_update 1 1 } } }
	fifo_B_PE_6_1_x0107 { ap_fifo {  { fifo_B_PE_6_1_x0107_dout fifo_data 0 512 }  { fifo_B_PE_6_1_x0107_empty_n fifo_status 0 1 }  { fifo_B_PE_6_1_x0107_read fifo_update 1 1 } } }
	fifo_B_PE_7_1_x0108 { ap_fifo {  { fifo_B_PE_7_1_x0108_din fifo_data 1 512 }  { fifo_B_PE_7_1_x0108_full_n fifo_status 0 1 }  { fifo_B_PE_7_1_x0108_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_1_x0178 { ap_fifo {  { fifo_C_drain_PE_6_1_x0178_din fifo_data 1 16 }  { fifo_C_drain_PE_6_1_x0178_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_1_x0178_write fifo_update 1 1 } } }
}
