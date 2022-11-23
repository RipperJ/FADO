set moduleName PE_wrapper_6_4_x0
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
set C_modelName {PE_wrapper_6_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_4_x086 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_5_x087 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_4_x0142 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_4_x0143 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_4_x0210 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_4_x086", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_5_x087", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_4_x0142", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_4_x0143", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_4_x0210", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_4_x086_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_4_x086_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_4_x086_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_5_x087_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_5_x087_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_5_x087_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_4_x0142_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_4_x0142_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_4_x0142_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_4_x0143_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_4_x0143_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_4_x0143_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_4_x0210_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_4_x0210_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_4_x0210_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_4_x086_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x086", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_4_x086_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x086", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_4_x086_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x086", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_5_x087_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x087", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_5_x087_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x087", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_5_x087_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x087", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_4_x0142_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0142", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_4_x0142_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0142", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_4_x0142_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0142", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_4_x0143_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0143", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_4_x0143_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0143", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_4_x0143_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0143", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0210_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0210", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0210_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0210", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0210_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0210", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_4_x0",
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
			{"Name" : "fifo_A_PE_6_4_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_5_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U389", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_4_x0 {
		fifo_A_PE_6_4_x086 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_5_x087 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_4_x0142 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_4_x0143 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_4_x0210 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_4_x086 { ap_fifo {  { fifo_A_PE_6_4_x086_dout fifo_data 0 512 }  { fifo_A_PE_6_4_x086_empty_n fifo_status 0 1 }  { fifo_A_PE_6_4_x086_read fifo_update 1 1 } } }
	fifo_A_PE_6_5_x087 { ap_fifo {  { fifo_A_PE_6_5_x087_din fifo_data 1 512 }  { fifo_A_PE_6_5_x087_full_n fifo_status 0 1 }  { fifo_A_PE_6_5_x087_write fifo_update 1 1 } } }
	fifo_B_PE_6_4_x0142 { ap_fifo {  { fifo_B_PE_6_4_x0142_dout fifo_data 0 512 }  { fifo_B_PE_6_4_x0142_empty_n fifo_status 0 1 }  { fifo_B_PE_6_4_x0142_read fifo_update 1 1 } } }
	fifo_B_PE_7_4_x0143 { ap_fifo {  { fifo_B_PE_7_4_x0143_din fifo_data 1 512 }  { fifo_B_PE_7_4_x0143_full_n fifo_status 0 1 }  { fifo_B_PE_7_4_x0143_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_4_x0210 { ap_fifo {  { fifo_C_drain_PE_6_4_x0210_din fifo_data 1 16 }  { fifo_C_drain_PE_6_4_x0210_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_4_x0210_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_4_x0
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
set C_modelName {PE_wrapper_6_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_4_x078 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_5_x079 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_4_x0134 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_4_x0135 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_4_x0202 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_4_x078", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_5_x079", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_4_x0134", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_4_x0135", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_4_x0202", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_4_x078_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_4_x078_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_4_x078_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_5_x079_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_5_x079_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_5_x079_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_4_x0134_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_4_x0134_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_4_x0134_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_4_x0135_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_4_x0135_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_4_x0135_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_4_x0202_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_4_x0202_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_4_x0202_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_5_x079_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x079", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_5_x079_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x079", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_5_x079_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x079", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_4_x0134_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0134", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_4_x0134_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0134", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_4_x0134_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0134", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_4_x0135_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0135", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_4_x0135_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0135", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_4_x0135_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0135", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0202_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0202", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0202_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0202", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0202_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0202", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_4_x0",
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
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U389", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_4_x0 {
		fifo_A_PE_6_4_x078 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_5_x079 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_4_x0134 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_4_x0135 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_4_x0202 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_4_x078 { ap_fifo {  { fifo_A_PE_6_4_x078_dout fifo_data 0 512 }  { fifo_A_PE_6_4_x078_empty_n fifo_status 0 1 }  { fifo_A_PE_6_4_x078_read fifo_update 1 1 } } }
	fifo_A_PE_6_5_x079 { ap_fifo {  { fifo_A_PE_6_5_x079_din fifo_data 1 512 }  { fifo_A_PE_6_5_x079_full_n fifo_status 0 1 }  { fifo_A_PE_6_5_x079_write fifo_update 1 1 } } }
	fifo_B_PE_6_4_x0134 { ap_fifo {  { fifo_B_PE_6_4_x0134_dout fifo_data 0 512 }  { fifo_B_PE_6_4_x0134_empty_n fifo_status 0 1 }  { fifo_B_PE_6_4_x0134_read fifo_update 1 1 } } }
	fifo_B_PE_7_4_x0135 { ap_fifo {  { fifo_B_PE_7_4_x0135_din fifo_data 1 512 }  { fifo_B_PE_7_4_x0135_full_n fifo_status 0 1 }  { fifo_B_PE_7_4_x0135_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_4_x0202 { ap_fifo {  { fifo_C_drain_PE_6_4_x0202_din fifo_data 1 16 }  { fifo_C_drain_PE_6_4_x0202_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_4_x0202_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_4_x0
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
set C_modelName {PE_wrapper_6_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_4_x078 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_5_x079 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_4_x0134 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_4_x0135 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_4_x0202 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_4_x078", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_5_x079", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_4_x0134", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_4_x0135", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_4_x0202", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_4_x078_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_4_x078_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_4_x078_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_5_x079_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_5_x079_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_5_x079_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_4_x0134_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_4_x0134_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_4_x0134_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_4_x0135_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_4_x0135_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_4_x0135_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_4_x0202_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_4_x0202_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_4_x0202_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_5_x079_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x079", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_5_x079_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x079", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_5_x079_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_5_x079", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_4_x0134_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0134", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_4_x0134_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0134", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_4_x0134_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_4_x0134", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_4_x0135_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0135", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_4_x0135_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0135", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_4_x0135_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_4_x0135", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0202_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0202", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0202_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0202", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_4_x0202_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_4_x0202", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_4_x0",
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
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U395", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_4_x0 {
		fifo_A_PE_6_4_x078 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_5_x079 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_4_x0134 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_4_x0135 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_4_x0202 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_4_x078 { ap_fifo {  { fifo_A_PE_6_4_x078_dout fifo_data 0 512 }  { fifo_A_PE_6_4_x078_empty_n fifo_status 0 1 }  { fifo_A_PE_6_4_x078_read fifo_update 1 1 } } }
	fifo_A_PE_6_5_x079 { ap_fifo {  { fifo_A_PE_6_5_x079_din fifo_data 1 512 }  { fifo_A_PE_6_5_x079_full_n fifo_status 0 1 }  { fifo_A_PE_6_5_x079_write fifo_update 1 1 } } }
	fifo_B_PE_6_4_x0134 { ap_fifo {  { fifo_B_PE_6_4_x0134_dout fifo_data 0 512 }  { fifo_B_PE_6_4_x0134_empty_n fifo_status 0 1 }  { fifo_B_PE_6_4_x0134_read fifo_update 1 1 } } }
	fifo_B_PE_7_4_x0135 { ap_fifo {  { fifo_B_PE_7_4_x0135_din fifo_data 1 512 }  { fifo_B_PE_7_4_x0135_full_n fifo_status 0 1 }  { fifo_B_PE_7_4_x0135_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_4_x0202 { ap_fifo {  { fifo_C_drain_PE_6_4_x0202_din fifo_data 1 16 }  { fifo_C_drain_PE_6_4_x0202_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_4_x0202_write fifo_update 1 1 } } }
}
