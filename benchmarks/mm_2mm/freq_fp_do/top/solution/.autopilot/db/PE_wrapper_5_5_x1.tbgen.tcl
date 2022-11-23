set moduleName PE_wrapper_5_5_x1
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
set C_modelName {PE_wrapper_5_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_5_x178 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_6_x179 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_5_x1150 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_5_x1151 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_5_x1217 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_5_x178", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_6_x179", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_5_x1150", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_5_x1151", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_5_x1217", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_5_x178_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_5_x178_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_5_x178_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_6_x179_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_6_x179_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_6_x179_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_5_x1150_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_5_x1150_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_5_x1150_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_5_x1151_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_5_x1151_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_5_x1151_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_5_x1217_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_5_x1217_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_5_x1217_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_5_x178_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x178", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_5_x178_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x178", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_5_x178_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x178", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_6_x179_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x179", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_6_x179_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x179", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_6_x179_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x179", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_5_x1150_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1150", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_5_x1150_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1150", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_5_x1150_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1150", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_5_x1151_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1151", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_5_x1151_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1151", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_5_x1151_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1151", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1217_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1217", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1217_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1217", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1217_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1217", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_5_x1",
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
			{"Name" : "fifo_A_PE_5_5_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_6_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x1150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x1150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x1151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x1151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x1217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x1217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1338", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_5_x1 {
		fifo_A_PE_5_5_x178 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_6_x179 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_5_x1150 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_5_x1151 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_5_x1217 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_5_x178 { ap_fifo {  { fifo_A_PE_5_5_x178_dout fifo_data 0 512 }  { fifo_A_PE_5_5_x178_empty_n fifo_status 0 1 }  { fifo_A_PE_5_5_x178_read fifo_update 1 1 } } }
	fifo_A_PE_5_6_x179 { ap_fifo {  { fifo_A_PE_5_6_x179_din fifo_data 1 512 }  { fifo_A_PE_5_6_x179_full_n fifo_status 0 1 }  { fifo_A_PE_5_6_x179_write fifo_update 1 1 } } }
	fifo_B_PE_5_5_x1150 { ap_fifo {  { fifo_B_PE_5_5_x1150_dout fifo_data 0 512 }  { fifo_B_PE_5_5_x1150_empty_n fifo_status 0 1 }  { fifo_B_PE_5_5_x1150_read fifo_update 1 1 } } }
	fifo_B_PE_6_5_x1151 { ap_fifo {  { fifo_B_PE_6_5_x1151_din fifo_data 1 512 }  { fifo_B_PE_6_5_x1151_full_n fifo_status 0 1 }  { fifo_B_PE_6_5_x1151_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_5_x1217 { ap_fifo {  { fifo_C_drain_PE_5_5_x1217_din fifo_data 1 16 }  { fifo_C_drain_PE_5_5_x1217_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_5_x1217_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_5_5_x1
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
set C_modelName {PE_wrapper_5_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_5_x170 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_6_x171 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_5_x1142 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_5_x1143 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_5_x1209 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_5_x170", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_6_x171", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_5_x1142", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_5_x1143", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_5_x1209", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_5_x170_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_5_x170_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_5_x170_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_6_x171_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_6_x171_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_6_x171_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_5_x1142_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_5_x1142_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_5_x1142_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_5_x1143_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_5_x1143_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_5_x1143_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_5_x1209_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_5_x1209_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_5_x1209_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_6_x171_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x171", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_6_x171_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x171", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_6_x171_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x171", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_5_x1142_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1142", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_5_x1142_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1142", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_5_x1142_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1142", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1209_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1209", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1209_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1209", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1209_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1209", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_5_x1",
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
			{"Name" : "fifo_A_PE_5_5_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_6_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x1142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x1142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x1143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x1143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x1209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x1209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1330", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_5_x1 {
		fifo_A_PE_5_5_x170 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_6_x171 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_5_x1142 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_5_x1143 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_5_x1209 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_5_x170 { ap_fifo {  { fifo_A_PE_5_5_x170_dout fifo_data 0 512 }  { fifo_A_PE_5_5_x170_empty_n fifo_status 0 1 }  { fifo_A_PE_5_5_x170_read fifo_update 1 1 } } }
	fifo_A_PE_5_6_x171 { ap_fifo {  { fifo_A_PE_5_6_x171_din fifo_data 1 512 }  { fifo_A_PE_5_6_x171_full_n fifo_status 0 1 }  { fifo_A_PE_5_6_x171_write fifo_update 1 1 } } }
	fifo_B_PE_5_5_x1142 { ap_fifo {  { fifo_B_PE_5_5_x1142_dout fifo_data 0 512 }  { fifo_B_PE_5_5_x1142_empty_n fifo_status 0 1 }  { fifo_B_PE_5_5_x1142_read fifo_update 1 1 } } }
	fifo_B_PE_6_5_x1143 { ap_fifo {  { fifo_B_PE_6_5_x1143_din fifo_data 1 512 }  { fifo_B_PE_6_5_x1143_full_n fifo_status 0 1 }  { fifo_B_PE_6_5_x1143_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_5_x1209 { ap_fifo {  { fifo_C_drain_PE_5_5_x1209_din fifo_data 1 16 }  { fifo_C_drain_PE_5_5_x1209_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_5_x1209_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_5_5_x1
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
set C_modelName {PE_wrapper_5_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_5_5_x170 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_5_6_x171 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_5_5_x1142 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_6_5_x1143 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_5_5_x1209 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_5_5_x170", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_5_6_x171", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_5_5_x1142", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_6_5_x1143", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_5_5_x1209", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_5_5_x170_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_5_5_x170_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_5_x170_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_5_6_x171_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_5_6_x171_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_5_6_x171_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_5_5_x1142_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_5_5_x1142_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_5_x1142_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_5_x1143_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_6_5_x1143_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_6_5_x1143_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_5_5_x1209_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_5_5_x1209_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_5_5_x1209_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_5_5_x170_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_5_x170", "role": "read" }} , 
 	{ "name": "fifo_A_PE_5_6_x171_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x171", "role": "din" }} , 
 	{ "name": "fifo_A_PE_5_6_x171_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x171", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_5_6_x171_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_5_6_x171", "role": "write" }} , 
 	{ "name": "fifo_B_PE_5_5_x1142_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1142", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_5_5_x1142_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1142", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_5_5_x1142_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_5_x1142", "role": "read" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "din" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1209_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1209", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1209_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1209", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_5_5_x1209_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_5_5_x1209", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_5_5_x1",
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
			{"Name" : "fifo_A_PE_5_5_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_6_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x1142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x1142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x1143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x1143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x1209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x1209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1341", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_5_5_x1 {
		fifo_A_PE_5_5_x170 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_6_x171 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_5_x1142 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_5_x1143 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_5_x1209 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_5_5_x170 { ap_fifo {  { fifo_A_PE_5_5_x170_dout fifo_data 0 512 }  { fifo_A_PE_5_5_x170_empty_n fifo_status 0 1 }  { fifo_A_PE_5_5_x170_read fifo_update 1 1 } } }
	fifo_A_PE_5_6_x171 { ap_fifo {  { fifo_A_PE_5_6_x171_din fifo_data 1 512 }  { fifo_A_PE_5_6_x171_full_n fifo_status 0 1 }  { fifo_A_PE_5_6_x171_write fifo_update 1 1 } } }
	fifo_B_PE_5_5_x1142 { ap_fifo {  { fifo_B_PE_5_5_x1142_dout fifo_data 0 512 }  { fifo_B_PE_5_5_x1142_empty_n fifo_status 0 1 }  { fifo_B_PE_5_5_x1142_read fifo_update 1 1 } } }
	fifo_B_PE_6_5_x1143 { ap_fifo {  { fifo_B_PE_6_5_x1143_din fifo_data 1 512 }  { fifo_B_PE_6_5_x1143_full_n fifo_status 0 1 }  { fifo_B_PE_6_5_x1143_write fifo_update 1 1 } } }
	fifo_C_drain_PE_5_5_x1209 { ap_fifo {  { fifo_C_drain_PE_5_5_x1209_din fifo_data 1 16 }  { fifo_C_drain_PE_5_5_x1209_full_n fifo_status 0 1 }  { fifo_C_drain_PE_5_5_x1209_write fifo_update 1 1 } } }
}
