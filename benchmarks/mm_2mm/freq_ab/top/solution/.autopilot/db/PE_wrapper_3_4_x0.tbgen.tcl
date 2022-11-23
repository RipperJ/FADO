set moduleName PE_wrapper_3_4_x0
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
set C_modelName {PE_wrapper_3_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_4_x059 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_5_x060 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_4_x0139 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_4_x0140 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_4_x0207 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_4_x059", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_5_x060", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_4_x0139", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x0140", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_4_x0207", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_4_x059_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_4_x059_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_4_x059_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x060_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_5_x060_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_5_x060_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_4_x0139_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_4_x0139_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_4_x0139_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x0140_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_4_x0140_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_4_x0140_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_4_x0207_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_4_x0207_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_4_x0207_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_4_x059_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x059", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_4_x059_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x059", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_4_x059_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x059", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_5_x060_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x060", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_5_x060_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x060", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x060_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x060", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_4_x0139_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0139", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_4_x0139_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0139", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_4_x0139_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0139", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_4_x0140_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0140", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_4_x0140_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0140", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x0140_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0140", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0207_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0207", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0207_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0207", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0207_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0207", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_3_4_x0",
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
			{"Name" : "fifo_A_PE_3_4_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U245", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x059 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_5_x060 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_4_x0139 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_4_x0140 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_4_x0207 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_4_x059 { ap_fifo {  { fifo_A_PE_3_4_x059_dout fifo_data 0 512 }  { fifo_A_PE_3_4_x059_empty_n fifo_status 0 1 }  { fifo_A_PE_3_4_x059_read fifo_update 1 1 } } }
	fifo_A_PE_3_5_x060 { ap_fifo {  { fifo_A_PE_3_5_x060_din fifo_data 1 512 }  { fifo_A_PE_3_5_x060_full_n fifo_status 0 1 }  { fifo_A_PE_3_5_x060_write fifo_update 1 1 } } }
	fifo_B_PE_3_4_x0139 { ap_fifo {  { fifo_B_PE_3_4_x0139_dout fifo_data 0 512 }  { fifo_B_PE_3_4_x0139_empty_n fifo_status 0 1 }  { fifo_B_PE_3_4_x0139_read fifo_update 1 1 } } }
	fifo_B_PE_4_4_x0140 { ap_fifo {  { fifo_B_PE_4_4_x0140_din fifo_data 1 512 }  { fifo_B_PE_4_4_x0140_full_n fifo_status 0 1 }  { fifo_B_PE_4_4_x0140_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_4_x0207 { ap_fifo {  { fifo_C_drain_PE_3_4_x0207_din fifo_data 1 16 }  { fifo_C_drain_PE_3_4_x0207_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_4_x0207_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_3_4_x0
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
set C_modelName {PE_wrapper_3_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_4_x051 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_5_x052 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_4_x0131 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_4_x0132 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_4_x0199 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_4_x051", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_5_x052", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_4_x0131", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x0132", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_4_x0199", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_4_x051_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_4_x051_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_4_x051_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x052_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_5_x052_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_5_x052_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_4_x0131_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_4_x0131_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_4_x0131_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x0132_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_4_x0132_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_4_x0132_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_4_x0199_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_4_x0199_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_4_x0199_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_3_4_x0",
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
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U245", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x051 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_5_x052 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_4_x0131 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_4_x0132 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_4_x0199 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_4_x051 { ap_fifo {  { fifo_A_PE_3_4_x051_dout fifo_data 0 512 }  { fifo_A_PE_3_4_x051_empty_n fifo_status 0 1 }  { fifo_A_PE_3_4_x051_read fifo_update 1 1 } } }
	fifo_A_PE_3_5_x052 { ap_fifo {  { fifo_A_PE_3_5_x052_din fifo_data 1 512 }  { fifo_A_PE_3_5_x052_full_n fifo_status 0 1 }  { fifo_A_PE_3_5_x052_write fifo_update 1 1 } } }
	fifo_B_PE_3_4_x0131 { ap_fifo {  { fifo_B_PE_3_4_x0131_dout fifo_data 0 512 }  { fifo_B_PE_3_4_x0131_empty_n fifo_status 0 1 }  { fifo_B_PE_3_4_x0131_read fifo_update 1 1 } } }
	fifo_B_PE_4_4_x0132 { ap_fifo {  { fifo_B_PE_4_4_x0132_din fifo_data 1 512 }  { fifo_B_PE_4_4_x0132_full_n fifo_status 0 1 }  { fifo_B_PE_4_4_x0132_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_4_x0199 { ap_fifo {  { fifo_C_drain_PE_3_4_x0199_din fifo_data 1 16 }  { fifo_C_drain_PE_3_4_x0199_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_4_x0199_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_3_4_x0
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
set C_modelName {PE_wrapper_3_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_4_x051 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_5_x052 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_4_x0131 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_4_x0132 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_4_x0199 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_4_x051", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_5_x052", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_4_x0131", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x0132", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_4_x0199", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_4_x051_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_4_x051_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_4_x051_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x052_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_5_x052_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_5_x052_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_4_x0131_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_4_x0131_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_4_x0131_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x0132_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_4_x0132_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_4_x0132_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_4_x0199_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_4_x0199_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_4_x0199_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_3_4_x0",
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
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1180", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1181", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1182", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1183", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1184", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1185", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1186", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1187", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1188", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1189", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1190", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1191", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1192", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1193", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1194", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1195", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1196", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1197", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1198", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1199", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1200", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1201", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1202", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1203", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1204", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1205", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1206", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1207", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1208", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1209", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1210", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1211", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x051 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_3_5_x052 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_3_4_x0131 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_4_4_x0132 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_3_4_x0199 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "524297", "Max" : "524297"}
	, {"Name" : "Interval", "Min" : "524297", "Max" : "524297"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_4_x051 { ap_fifo {  { fifo_A_PE_3_4_x051_dout fifo_data 0 512 }  { fifo_A_PE_3_4_x051_empty_n fifo_status 0 1 }  { fifo_A_PE_3_4_x051_read fifo_update 1 1 } } }
	fifo_A_PE_3_5_x052 { ap_fifo {  { fifo_A_PE_3_5_x052_din fifo_data 1 512 }  { fifo_A_PE_3_5_x052_full_n fifo_status 0 1 }  { fifo_A_PE_3_5_x052_write fifo_update 1 1 } } }
	fifo_B_PE_3_4_x0131 { ap_fifo {  { fifo_B_PE_3_4_x0131_dout fifo_data 0 512 }  { fifo_B_PE_3_4_x0131_empty_n fifo_status 0 1 }  { fifo_B_PE_3_4_x0131_read fifo_update 1 1 } } }
	fifo_B_PE_4_4_x0132 { ap_fifo {  { fifo_B_PE_4_4_x0132_din fifo_data 1 512 }  { fifo_B_PE_4_4_x0132_full_n fifo_status 0 1 }  { fifo_B_PE_4_4_x0132_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_4_x0199 { ap_fifo {  { fifo_C_drain_PE_3_4_x0199_din fifo_data 1 16 }  { fifo_C_drain_PE_3_4_x0199_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_4_x0199_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_3_4_x0
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
set C_modelName {PE_wrapper_3_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_4_x051 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_5_x052 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_4_x0131 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_4_x0132 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_3_4_x0199 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_4_x051", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_5_x052", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_4_x0131", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x0132", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_3_4_x0199", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_4_x051_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_3_4_x051_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_4_x051_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x052_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_3_5_x052_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_5_x052_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_4_x0131_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_3_4_x0131_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_4_x0131_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x0132_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_4_4_x0132_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_4_x0132_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_3_4_x0199_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_3_4_x0199_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_3_4_x0199_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_4_x051_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x051", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x052_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x052", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_4_x0131_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x0131", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x0132_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x0132", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_3_4_x0199_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_3_4_x0199", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_3_4_x0",
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
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1180", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1181", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1182", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1183", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1184", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1185", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1186", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1187", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1188", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1189", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1190", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1191", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1192", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1193", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1194", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1195", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1196", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1197", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1198", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1199", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1200", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1201", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1202", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1203", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1204", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1205", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1206", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1207", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1208", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1209", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U1210", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1211", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x051 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_3_5_x052 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_3_4_x0131 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_4_4_x0132 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_3_4_x0199 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "524297", "Max" : "524297"}
	, {"Name" : "Interval", "Min" : "524297", "Max" : "524297"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_4_x051 { ap_fifo {  { fifo_A_PE_3_4_x051_dout fifo_data 0 512 }  { fifo_A_PE_3_4_x051_empty_n fifo_status 0 1 }  { fifo_A_PE_3_4_x051_read fifo_update 1 1 } } }
	fifo_A_PE_3_5_x052 { ap_fifo {  { fifo_A_PE_3_5_x052_din fifo_data 1 512 }  { fifo_A_PE_3_5_x052_full_n fifo_status 0 1 }  { fifo_A_PE_3_5_x052_write fifo_update 1 1 } } }
	fifo_B_PE_3_4_x0131 { ap_fifo {  { fifo_B_PE_3_4_x0131_dout fifo_data 0 512 }  { fifo_B_PE_3_4_x0131_empty_n fifo_status 0 1 }  { fifo_B_PE_3_4_x0131_read fifo_update 1 1 } } }
	fifo_B_PE_4_4_x0132 { ap_fifo {  { fifo_B_PE_4_4_x0132_din fifo_data 1 512 }  { fifo_B_PE_4_4_x0132_full_n fifo_status 0 1 }  { fifo_B_PE_4_4_x0132_write fifo_update 1 1 } } }
	fifo_C_drain_PE_3_4_x0199 { ap_fifo {  { fifo_C_drain_PE_3_4_x0199_din fifo_data 1 16 }  { fifo_C_drain_PE_3_4_x0199_full_n fifo_status 0 1 }  { fifo_C_drain_PE_3_4_x0199_write fifo_update 1 1 } } }
}
