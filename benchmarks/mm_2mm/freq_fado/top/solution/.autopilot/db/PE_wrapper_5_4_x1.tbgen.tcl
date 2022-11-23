set moduleName PE_wrapper_5_4_x1
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
set C_modelName {PE_wrapper_5_4_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_4_x177 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_5_x178 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_4_x1141 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_4_x1142 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_4_x1209 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_4_x177", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_5_x178", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_4_x1141", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_4_x1142", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_4_x1209", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_4_x177_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_4_x177_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_4_x177_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_5_x178_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_5_x178_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_5_x178_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_4_x1141_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_4_x1141_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_4_x1141_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_4_x1142_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_4_x1142_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_4_x1142_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_4_x1209_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_4_x1209_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_4_x1209_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_4_x177_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x177", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_4_x177_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x177", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_4_x177_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x177", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_5_x178_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x178", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_5_x178_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x178", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_5_x178_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x178", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_4_x1141_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1141", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_4_x1141_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1141", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_4_x1141_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1141", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_4_x1142_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1142", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_4_x1142_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1142", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_4_x1142_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1142", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1209_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1209", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1209_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1209", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1209_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1209", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_4_x1",
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
			{"Name" : "fifo_A_PE_5_4_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_5_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x1141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x1141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x1142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x1142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x1209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x1209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1332", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_4_x1 {
		fifo_A_PE_5_4_x177 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_5_x178 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_4_x1141 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_4_x1142 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_4_x1209 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_4_x177 { ap_fifo {  { fifo_A_PE_5_4_x177_dout fifo_data 0 512 }  { fifo_A_PE_5_4_x177_empty_n fifo_status 0 1 }  { fifo_A_PE_5_4_x177_read fifo_update 1 1 } } }
	fifo_A_PE_5_5_x178 { ap_fifo {  { fifo_A_PE_5_5_x178_din fifo_data 1 512 }  { fifo_A_PE_5_5_x178_full_n fifo_status 0 1 }  { fifo_A_PE_5_5_x178_write fifo_update 1 1 } } }
	fifo_B_PE_5_4_x1141 { ap_fifo {  { fifo_B_PE_5_4_x1141_dout fifo_data 0 512 }  { fifo_B_PE_5_4_x1141_empty_n fifo_status 0 1 }  { fifo_B_PE_5_4_x1141_read fifo_update 1 1 } } }
	fifo_B_PE_6_4_x1142 { ap_fifo {  { fifo_B_PE_6_4_x1142_din fifo_data 1 512 }  { fifo_B_PE_6_4_x1142_full_n fifo_status 0 1 }  { fifo_B_PE_6_4_x1142_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_4_x1209 { ap_fifo {  { fifo_C_drain_PE_5_4_x1209_din fifo_data 1 16 }  { fifo_C_drain_PE_5_4_x1209_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_4_x1209_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_5_4_x1
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
set C_modelName {PE_wrapper_5_4_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_4_x169 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_5_x170 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_4_x1133 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_4_x1134 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_4_x1201 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_4_x169", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_5_x170", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_4_x1133", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_4_x1134", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_4_x1201", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_4_x169_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_4_x169_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_4_x169_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_5_x170_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_5_x170_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_5_x170_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_4_x1133_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_4_x1133_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_4_x1133_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_4_x1134_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_4_x1134_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_4_x1134_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_4_x1201_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_4_x1201_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_4_x1201_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_4_x169_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x169", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_4_x169_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x169", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_4_x169_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x169", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_4_x1133_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1133", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_4_x1133_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1133", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_4_x1133_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1133", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_4_x1134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1134", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_4_x1134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1134", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_4_x1134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1134", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1201_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1201", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1201_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1201", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1201_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1201", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_4_x1",
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
			{"Name" : "fifo_A_PE_5_4_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_5_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x1201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x1201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1324", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_4_x1 {
		fifo_A_PE_5_4_x169 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_5_x170 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_4_x1133 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_4_x1134 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_4_x1201 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_4_x169 { ap_fifo {  { fifo_A_PE_5_4_x169_dout fifo_data 0 512 }  { fifo_A_PE_5_4_x169_empty_n fifo_status 0 1 }  { fifo_A_PE_5_4_x169_read fifo_update 1 1 } } }
	fifo_A_PE_5_5_x170 { ap_fifo {  { fifo_A_PE_5_5_x170_din fifo_data 1 512 }  { fifo_A_PE_5_5_x170_full_n fifo_status 0 1 }  { fifo_A_PE_5_5_x170_write fifo_update 1 1 } } }
	fifo_B_PE_5_4_x1133 { ap_fifo {  { fifo_B_PE_5_4_x1133_dout fifo_data 0 512 }  { fifo_B_PE_5_4_x1133_empty_n fifo_status 0 1 }  { fifo_B_PE_5_4_x1133_read fifo_update 1 1 } } }
	fifo_B_PE_6_4_x1134 { ap_fifo {  { fifo_B_PE_6_4_x1134_din fifo_data 1 512 }  { fifo_B_PE_6_4_x1134_full_n fifo_status 0 1 }  { fifo_B_PE_6_4_x1134_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_4_x1201 { ap_fifo {  { fifo_C_drain_PE_5_4_x1201_din fifo_data 1 16 }  { fifo_C_drain_PE_5_4_x1201_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_4_x1201_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_5_4_x1
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
set C_modelName {PE_wrapper_5_4_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_4_x169 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_5_x170 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_4_x1133 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_4_x1134 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_4_x1201 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_4_x169", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_5_x170", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_4_x1133", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_4_x1134", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_4_x1201", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_4_x169_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_4_x169_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_4_x169_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_5_x170_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_5_x170_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_5_x170_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_4_x1133_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_4_x1133_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_4_x1133_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_4_x1134_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_4_x1134_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_4_x1134_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_4_x1201_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_4_x1201_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_4_x1201_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_4_x169_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x169", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_4_x169_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x169", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_4_x169_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_4_x169", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_4_x1133_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1133", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_4_x1133_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1133", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_4_x1133_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_4_x1133", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_4_x1134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1134", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_4_x1134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1134", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_4_x1134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x1134", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1201_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1201", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1201_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1201", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_4_x1201_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_4_x1201", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65011713", "EstimateLatencyMax" : "65011713",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_4_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_5_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x1201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x1201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3514", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_4_x1 {
		fifo_A_PE_5_4_x169 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_5_5_x170 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_5_4_x1133 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_6_4_x1134 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_5_4_x1201 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_4_x169 { ap_fifo {  { fifo_A_PE_5_4_x169_dout fifo_data 0 512 }  { fifo_A_PE_5_4_x169_empty_n fifo_status 0 1 }  { fifo_A_PE_5_4_x169_read fifo_update 1 1 } } }
	fifo_A_PE_5_5_x170 { ap_fifo {  { fifo_A_PE_5_5_x170_din fifo_data 1 512 }  { fifo_A_PE_5_5_x170_full_n fifo_status 0 1 }  { fifo_A_PE_5_5_x170_write fifo_update 1 1 } } }
	fifo_B_PE_5_4_x1133 { ap_fifo {  { fifo_B_PE_5_4_x1133_dout fifo_data 0 512 }  { fifo_B_PE_5_4_x1133_empty_n fifo_status 0 1 }  { fifo_B_PE_5_4_x1133_read fifo_update 1 1 } } }
	fifo_B_PE_6_4_x1134 { ap_fifo {  { fifo_B_PE_6_4_x1134_din fifo_data 1 512 }  { fifo_B_PE_6_4_x1134_full_n fifo_status 0 1 }  { fifo_B_PE_6_4_x1134_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_4_x1201 { ap_fifo {  { fifo_C_drain_PE_5_4_x1201_din fifo_data 1 16 }  { fifo_C_drain_PE_5_4_x1201_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_4_x1201_write fifo_update 1 1 } } }
}
