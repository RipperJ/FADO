set moduleName PE_wrapper_1_5_x0
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
set C_modelName {PE_wrapper_1_5_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_5_x042 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_6_x043 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_5_x0146 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_5_x0147 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_5_x0213 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_5_x042", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_6_x043", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_5_x0146", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_5_x0147", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_5_x0213", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_5_x042_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_5_x042_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_5_x042_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_6_x043_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_6_x043_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_6_x043_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_5_x0146_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_5_x0146_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_5_x0146_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_5_x0147_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_5_x0147_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_5_x0147_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_5_x0213_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_5_x0213_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_5_x0213_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_5_x042_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x042", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_5_x042_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x042", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_5_x042_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x042", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_6_x043_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x043", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_6_x043_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x043", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_6_x043_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x043", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_5_x0146_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x0146", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_5_x0146_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x0146", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_5_x0146_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x0146", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_5_x0147_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_5_x0147", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_5_x0147_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_5_x0147", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_5_x0147_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_5_x0147", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_5_x0213_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_5_x0213", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_5_x0213_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_5_x0213", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_5_x0213_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_5_x0213", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_5_x0",
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
			{"Name" : "fifo_A_PE_1_5_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U155", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_5_x0 {
		fifo_A_PE_1_5_x042 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_6_x043 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_5_x0146 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_5_x0147 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_5_x0213 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_5_x042 { ap_fifo {  { fifo_A_PE_1_5_x042_dout fifo_data 0 512 }  { fifo_A_PE_1_5_x042_empty_n fifo_status 0 1 }  { fifo_A_PE_1_5_x042_read fifo_update 1 1 } } }
	fifo_A_PE_1_6_x043 { ap_fifo {  { fifo_A_PE_1_6_x043_din fifo_data 1 512 }  { fifo_A_PE_1_6_x043_full_n fifo_status 0 1 }  { fifo_A_PE_1_6_x043_write fifo_update 1 1 } } }
	fifo_B_PE_1_5_x0146 { ap_fifo {  { fifo_B_PE_1_5_x0146_dout fifo_data 0 512 }  { fifo_B_PE_1_5_x0146_empty_n fifo_status 0 1 }  { fifo_B_PE_1_5_x0146_read fifo_update 1 1 } } }
	fifo_B_PE_2_5_x0147 { ap_fifo {  { fifo_B_PE_2_5_x0147_din fifo_data 1 512 }  { fifo_B_PE_2_5_x0147_full_n fifo_status 0 1 }  { fifo_B_PE_2_5_x0147_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_5_x0213 { ap_fifo {  { fifo_C_drain_PE_1_5_x0213_din fifo_data 1 16 }  { fifo_C_drain_PE_1_5_x0213_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_5_x0213_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_5_x0
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
set C_modelName {PE_wrapper_1_5_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_5_x034 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_6_x035 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_5_x0138 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_5_x0139 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_1_5_x0205 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_5_x034", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_6_x035", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_5_x0138", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_5_x0139", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_1_5_x0205", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_1_5_x034_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_5_x034_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_5_x034_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_6_x035_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_1_6_x035_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_6_x035_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_5_x0138_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_1_5_x0138_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_5_x0138_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_5_x0139_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_2_5_x0139_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_5_x0139_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_1_5_x0205_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_1_5_x0205_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_1_5_x0205_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_5_x034_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x034", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_6_x035_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x035", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_6_x035_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x035", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_6_x035_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_6_x035", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_5_x0138_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x0138", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_5_x0138_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x0138", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_5_x0138_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x0138", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_5_x0139_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_5_x0139", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_5_x0139_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_5_x0139", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_5_x0139_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_5_x0139", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_1_5_x0205_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_5_x0205", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_1_5_x0205_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_5_x0205", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_1_5_x0205_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_1_5_x0205", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_1_5_x0",
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
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U155", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_5_x0 {
		fifo_A_PE_1_5_x034 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_6_x035 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_5_x0138 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_5_x0139 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_5_x0205 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_5_x034 { ap_fifo {  { fifo_A_PE_1_5_x034_dout fifo_data 0 512 }  { fifo_A_PE_1_5_x034_empty_n fifo_status 0 1 }  { fifo_A_PE_1_5_x034_read fifo_update 1 1 } } }
	fifo_A_PE_1_6_x035 { ap_fifo {  { fifo_A_PE_1_6_x035_din fifo_data 1 512 }  { fifo_A_PE_1_6_x035_full_n fifo_status 0 1 }  { fifo_A_PE_1_6_x035_write fifo_update 1 1 } } }
	fifo_B_PE_1_5_x0138 { ap_fifo {  { fifo_B_PE_1_5_x0138_dout fifo_data 0 512 }  { fifo_B_PE_1_5_x0138_empty_n fifo_status 0 1 }  { fifo_B_PE_1_5_x0138_read fifo_update 1 1 } } }
	fifo_B_PE_2_5_x0139 { ap_fifo {  { fifo_B_PE_2_5_x0139_din fifo_data 1 512 }  { fifo_B_PE_2_5_x0139_full_n fifo_status 0 1 }  { fifo_B_PE_2_5_x0139_write fifo_update 1 1 } } }
	fifo_C_drain_PE_1_5_x0205 { ap_fifo {  { fifo_C_drain_PE_1_5_x0205_din fifo_data 1 16 }  { fifo_C_drain_PE_1_5_x0205_full_n fifo_status 0 1 }  { fifo_C_drain_PE_1_5_x0205_write fifo_update 1 1 } } }
}
