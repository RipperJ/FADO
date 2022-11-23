set moduleName PE_wrapper_6_5_x1
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
set C_modelName {PE_wrapper_6_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_5_x187 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_6_x188 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_5_x1151 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_5_x1152 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_5_x1218 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_5_x187", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_6_x188", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_5_x1151", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_5_x1152", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_5_x1218", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_5_x187_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_5_x187_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_5_x187_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_6_x188_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_6_x188_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_6_x188_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_5_x1151_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_5_x1151_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_5_x1151_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_5_x1152_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_5_x1152_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_5_x1152_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_5_x1218_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_5_x1218_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_5_x1218_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_5_x187_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x187", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_5_x187_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x187", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_5_x187_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x187", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_6_x188_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x188", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_6_x188_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x188", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_6_x188_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x188", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_5_x1151_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1151", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_5_x1151_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1151", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_5_x1151_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1151", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_5_x1152_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1152", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_5_x1152_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1152", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_5_x1152_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1152", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_5_x1218_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_5_x1218", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_5_x1218_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_5_x1218", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_5_x1218_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_5_x1218", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_5_x1",
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
			{"Name" : "fifo_A_PE_6_5_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_6_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x1151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x1151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x1152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x1152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x1218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x1218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1386", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_5_x1 {
		fifo_A_PE_6_5_x187 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_6_x188 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_5_x1151 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_5_x1152 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_5_x1218 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_5_x187 { ap_fifo {  { fifo_A_PE_6_5_x187_dout fifo_data 0 512 }  { fifo_A_PE_6_5_x187_empty_n fifo_status 0 1 }  { fifo_A_PE_6_5_x187_read fifo_update 1 1 } } }
	fifo_A_PE_6_6_x188 { ap_fifo {  { fifo_A_PE_6_6_x188_din fifo_data 1 512 }  { fifo_A_PE_6_6_x188_full_n fifo_status 0 1 }  { fifo_A_PE_6_6_x188_write fifo_update 1 1 } } }
	fifo_B_PE_6_5_x1151 { ap_fifo {  { fifo_B_PE_6_5_x1151_dout fifo_data 0 512 }  { fifo_B_PE_6_5_x1151_empty_n fifo_status 0 1 }  { fifo_B_PE_6_5_x1151_read fifo_update 1 1 } } }
	fifo_B_PE_7_5_x1152 { ap_fifo {  { fifo_B_PE_7_5_x1152_din fifo_data 1 512 }  { fifo_B_PE_7_5_x1152_full_n fifo_status 0 1 }  { fifo_B_PE_7_5_x1152_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_5_x1218 { ap_fifo {  { fifo_C_drain_PE_6_5_x1218_din fifo_data 1 16 }  { fifo_C_drain_PE_6_5_x1218_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_5_x1218_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_5_x1
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
set C_modelName {PE_wrapper_6_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_5_x179 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_6_x180 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_5_x1143 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_5_x1144 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_5_x1210 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_5_x179", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_6_x180", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_5_x1143", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_5_x1144", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_5_x1210", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_5_x179_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_5_x179_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_5_x179_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_6_x180_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_6_x180_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_6_x180_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_5_x1143_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_5_x1143_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_5_x1143_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_5_x1144_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_5_x1144_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_5_x1144_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_5_x1210_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_5_x1210_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_5_x1210_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_5_x179_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x179", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_5_x179_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x179", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_5_x179_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x179", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_6_x180_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x180", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_6_x180_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x180", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_6_x180_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_6_x180", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_5_x1143_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_5_x1143", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_5_x1210_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_5_x1210", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_5_x1210_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_5_x1210", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_5_x1210_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_5_x1210", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_5_x1",
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
			{"Name" : "fifo_A_PE_6_5_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_6_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x1143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x1143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x1144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x1144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x1210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x1210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1378", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_5_x1 {
		fifo_A_PE_6_5_x179 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_6_x180 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_5_x1143 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_5_x1144 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_5_x1210 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_5_x179 { ap_fifo {  { fifo_A_PE_6_5_x179_dout fifo_data 0 512 }  { fifo_A_PE_6_5_x179_empty_n fifo_status 0 1 }  { fifo_A_PE_6_5_x179_read fifo_update 1 1 } } }
	fifo_A_PE_6_6_x180 { ap_fifo {  { fifo_A_PE_6_6_x180_din fifo_data 1 512 }  { fifo_A_PE_6_6_x180_full_n fifo_status 0 1 }  { fifo_A_PE_6_6_x180_write fifo_update 1 1 } } }
	fifo_B_PE_6_5_x1143 { ap_fifo {  { fifo_B_PE_6_5_x1143_dout fifo_data 0 512 }  { fifo_B_PE_6_5_x1143_empty_n fifo_status 0 1 }  { fifo_B_PE_6_5_x1143_read fifo_update 1 1 } } }
	fifo_B_PE_7_5_x1144 { ap_fifo {  { fifo_B_PE_7_5_x1144_din fifo_data 1 512 }  { fifo_B_PE_7_5_x1144_full_n fifo_status 0 1 }  { fifo_B_PE_7_5_x1144_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_5_x1210 { ap_fifo {  { fifo_C_drain_PE_6_5_x1210_din fifo_data 1 16 }  { fifo_C_drain_PE_6_5_x1210_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_5_x1210_write fifo_update 1 1 } } }
}
