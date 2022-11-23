set moduleName PE_wrapper_4_7_x1
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
set C_modelName {PE_wrapper_4_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_7_x171 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_8_x172 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_7_x1167 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_7_x1168 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_7_x1232 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_7_x171", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_8_x172", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_7_x1167", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_7_x1168", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_7_x1232", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_7_x171_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_7_x171_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_7_x171_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_8_x172_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_8_x172_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_8_x172_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_7_x1167_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_7_x1167_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_7_x1167_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_7_x1168_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_7_x1168_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_7_x1168_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_7_x1232_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_7_x1232_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_7_x1232_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_7_x171_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x171", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_7_x171_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x171", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_7_x171_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x171", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_8_x172_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x172", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_8_x172_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x172", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_8_x172_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x172", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_7_x1167_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1167", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_7_x1167_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1167", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_7_x1167_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1167", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_7_x1168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1168", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_7_x1168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1168", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_7_x1168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1168", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1232_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1232", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1232_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1232", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1232_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1232", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_7_x1",
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
			{"Name" : "fifo_A_PE_4_7_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_8_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x1167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x1168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x1168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x1232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x1232_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1302", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_7_x1 {
		fifo_A_PE_4_7_x171 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_8_x172 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_7_x1167 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_7_x1168 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_7_x1232 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_7_x171 { ap_fifo {  { fifo_A_PE_4_7_x171_dout fifo_data 0 512 }  { fifo_A_PE_4_7_x171_empty_n fifo_status 0 1 }  { fifo_A_PE_4_7_x171_read fifo_update 1 1 } } }
	fifo_A_PE_4_8_x172 { ap_fifo {  { fifo_A_PE_4_8_x172_din fifo_data 1 512 }  { fifo_A_PE_4_8_x172_full_n fifo_status 0 1 }  { fifo_A_PE_4_8_x172_write fifo_update 1 1 } } }
	fifo_B_PE_4_7_x1167 { ap_fifo {  { fifo_B_PE_4_7_x1167_dout fifo_data 0 512 }  { fifo_B_PE_4_7_x1167_empty_n fifo_status 0 1 }  { fifo_B_PE_4_7_x1167_read fifo_update 1 1 } } }
	fifo_B_PE_5_7_x1168 { ap_fifo {  { fifo_B_PE_5_7_x1168_din fifo_data 1 512 }  { fifo_B_PE_5_7_x1168_full_n fifo_status 0 1 }  { fifo_B_PE_5_7_x1168_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_7_x1232 { ap_fifo {  { fifo_C_drain_PE_4_7_x1232_din fifo_data 1 16 }  { fifo_C_drain_PE_4_7_x1232_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_7_x1232_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_7_x1
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
set C_modelName {PE_wrapper_4_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_7_x163 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_8_x164 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_7_x1159 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_7_x1160 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_7_x1224 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_7_x163", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_8_x164", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_7_x1159", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_7_x1160", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_7_x1224", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_7_x163_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_7_x163_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_7_x163_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_8_x164_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_8_x164_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_8_x164_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_7_x1159_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_7_x1159_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_7_x1159_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_7_x1160_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_7_x1160_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_7_x1160_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_7_x1224_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_7_x1224_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_7_x1224_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_7_x163_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x163", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_7_x163_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x163", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_7_x163_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x163", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_8_x164_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x164", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_8_x164_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x164", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_8_x164_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x164", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_7_x1159_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1159", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_7_x1159_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1159", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_7_x1159_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1159", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_7_x1160_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1160", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_7_x1160_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1160", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_7_x1160_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1160", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1224_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1224", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1224_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1224", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1224_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1224", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_7_x1",
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
			{"Name" : "fifo_A_PE_4_7_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_8_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x1159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x1160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x1160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x1224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x1224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1294", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_7_x1 {
		fifo_A_PE_4_7_x163 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_8_x164 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_7_x1159 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_7_x1160 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_7_x1224 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_7_x163 { ap_fifo {  { fifo_A_PE_4_7_x163_dout fifo_data 0 512 }  { fifo_A_PE_4_7_x163_empty_n fifo_status 0 1 }  { fifo_A_PE_4_7_x163_read fifo_update 1 1 } } }
	fifo_A_PE_4_8_x164 { ap_fifo {  { fifo_A_PE_4_8_x164_din fifo_data 1 512 }  { fifo_A_PE_4_8_x164_full_n fifo_status 0 1 }  { fifo_A_PE_4_8_x164_write fifo_update 1 1 } } }
	fifo_B_PE_4_7_x1159 { ap_fifo {  { fifo_B_PE_4_7_x1159_dout fifo_data 0 512 }  { fifo_B_PE_4_7_x1159_empty_n fifo_status 0 1 }  { fifo_B_PE_4_7_x1159_read fifo_update 1 1 } } }
	fifo_B_PE_5_7_x1160 { ap_fifo {  { fifo_B_PE_5_7_x1160_din fifo_data 1 512 }  { fifo_B_PE_5_7_x1160_full_n fifo_status 0 1 }  { fifo_B_PE_5_7_x1160_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_7_x1224 { ap_fifo {  { fifo_C_drain_PE_4_7_x1224_din fifo_data 1 16 }  { fifo_C_drain_PE_4_7_x1224_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_7_x1224_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_4_7_x1
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
set C_modelName {PE_wrapper_4_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_4_7_x163 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_4_8_x164 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_4_7_x1159 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_5_7_x1160 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_4_7_x1224 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_4_7_x163", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_4_8_x164", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_4_7_x1159", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_5_7_x1160", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_4_7_x1224", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_4_7_x163_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_4_7_x163_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_7_x163_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_4_8_x164_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_4_8_x164_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_4_8_x164_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_4_7_x1159_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_4_7_x1159_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_7_x1159_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_5_7_x1160_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_5_7_x1160_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_5_7_x1160_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_4_7_x1224_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_4_7_x1224_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_4_7_x1224_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_4_7_x163_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x163", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_4_7_x163_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x163", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_4_7_x163_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_7_x163", "role": "read" }} , 
 	{ "name": "fifo_A_PE_4_8_x164_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x164", "role": "din" }} , 
 	{ "name": "fifo_A_PE_4_8_x164_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x164", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_4_8_x164_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_4_8_x164", "role": "write" }} , 
 	{ "name": "fifo_B_PE_4_7_x1159_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1159", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_4_7_x1159_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1159", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_4_7_x1159_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_7_x1159", "role": "read" }} , 
 	{ "name": "fifo_B_PE_5_7_x1160_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1160", "role": "din" }} , 
 	{ "name": "fifo_B_PE_5_7_x1160_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1160", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_5_7_x1160_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_5_7_x1160", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1224_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1224", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1224_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1224", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_4_7_x1224_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_4_7_x1224", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_4_7_x1",
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
			{"Name" : "fifo_A_PE_4_7_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_8_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x1159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x1160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x1160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x1224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x1224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1305", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_4_7_x1 {
		fifo_A_PE_4_7_x163 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_8_x164 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_7_x1159 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_7_x1160 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_7_x1224 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_4_7_x163 { ap_fifo {  { fifo_A_PE_4_7_x163_dout fifo_data 0 512 }  { fifo_A_PE_4_7_x163_empty_n fifo_status 0 1 }  { fifo_A_PE_4_7_x163_read fifo_update 1 1 } } }
	fifo_A_PE_4_8_x164 { ap_fifo {  { fifo_A_PE_4_8_x164_din fifo_data 1 512 }  { fifo_A_PE_4_8_x164_full_n fifo_status 0 1 }  { fifo_A_PE_4_8_x164_write fifo_update 1 1 } } }
	fifo_B_PE_4_7_x1159 { ap_fifo {  { fifo_B_PE_4_7_x1159_dout fifo_data 0 512 }  { fifo_B_PE_4_7_x1159_empty_n fifo_status 0 1 }  { fifo_B_PE_4_7_x1159_read fifo_update 1 1 } } }
	fifo_B_PE_5_7_x1160 { ap_fifo {  { fifo_B_PE_5_7_x1160_din fifo_data 1 512 }  { fifo_B_PE_5_7_x1160_full_n fifo_status 0 1 }  { fifo_B_PE_5_7_x1160_write fifo_update 1 1 } } }
	fifo_C_drain_PE_4_7_x1224 { ap_fifo {  { fifo_C_drain_PE_4_7_x1224_din fifo_data 1 16 }  { fifo_C_drain_PE_4_7_x1224_full_n fifo_status 0 1 }  { fifo_C_drain_PE_4_7_x1224_write fifo_update 1 1 } } }
}
