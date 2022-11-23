set moduleName PE_wrapper_6_3_x0
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
set C_modelName {PE_wrapper_6_3_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_3_x085 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_4_x086 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_3_x0133 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_3_x0134 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_3_x0202 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_3_x085", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_4_x086", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_3_x0133", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_3_x0134", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_3_x0202", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_3_x085_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_3_x085_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_3_x085_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_4_x086_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_4_x086_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_4_x086_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_3_x0133_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_3_x0133_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_3_x0133_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_3_x0134_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_3_x0134_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_3_x0134_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_3_x0202_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_3_x0202_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_3_x0202_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_3_x085_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x085", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_3_x085_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x085", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_3_x085_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x085", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_4_x086_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x086", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_4_x086_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x086", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_4_x086_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x086", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_3_x0133_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0133", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_3_x0133_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0133", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_3_x0133_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0133", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_3_x0134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0134", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_3_x0134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0134", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_3_x0134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0134", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0202_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0202", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0202_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0202", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0202_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0202", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_3_x0",
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
			{"Name" : "fifo_A_PE_6_3_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_4_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U383", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_3_x0 {
		fifo_A_PE_6_3_x085 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_4_x086 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_3_x0133 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_3_x0134 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_3_x0202 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_3_x085 { ap_fifo {  { fifo_A_PE_6_3_x085_dout fifo_data 0 512 }  { fifo_A_PE_6_3_x085_empty_n fifo_status 0 1 }  { fifo_A_PE_6_3_x085_read fifo_update 1 1 } } }
	fifo_A_PE_6_4_x086 { ap_fifo {  { fifo_A_PE_6_4_x086_din fifo_data 1 512 }  { fifo_A_PE_6_4_x086_full_n fifo_status 0 1 }  { fifo_A_PE_6_4_x086_write fifo_update 1 1 } } }
	fifo_B_PE_6_3_x0133 { ap_fifo {  { fifo_B_PE_6_3_x0133_dout fifo_data 0 512 }  { fifo_B_PE_6_3_x0133_empty_n fifo_status 0 1 }  { fifo_B_PE_6_3_x0133_read fifo_update 1 1 } } }
	fifo_B_PE_7_3_x0134 { ap_fifo {  { fifo_B_PE_7_3_x0134_din fifo_data 1 512 }  { fifo_B_PE_7_3_x0134_full_n fifo_status 0 1 }  { fifo_B_PE_7_3_x0134_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_3_x0202 { ap_fifo {  { fifo_C_drain_PE_6_3_x0202_din fifo_data 1 16 }  { fifo_C_drain_PE_6_3_x0202_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_3_x0202_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_3_x0
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
set C_modelName {PE_wrapper_6_3_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_3_x077 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_4_x078 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_3_x0125 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_3_x0126 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_3_x0194 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_3_x077", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_4_x078", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_3_x0125", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_3_x0126", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_3_x0194", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_3_x077_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_3_x077_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_3_x077_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_4_x078_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_4_x078_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_4_x078_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_3_x0125_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_3_x0125_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_3_x0125_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_3_x0126_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_3_x0126_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_3_x0126_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_3_x0194_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_3_x0194_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_3_x0194_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_3_x077_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x077", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_3_x077_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x077", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_3_x077_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x077", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_3_x0125_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0125", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_3_x0125_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0125", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_3_x0125_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0125", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_3_x0126_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0126", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_3_x0126_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0126", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_3_x0126_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0126", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0194_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0194", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0194_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0194", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0194_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0194", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_6_3_x0",
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
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U383", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_3_x0 {
		fifo_A_PE_6_3_x077 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_4_x078 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_3_x0125 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_3_x0126 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_3_x0194 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_3_x077 { ap_fifo {  { fifo_A_PE_6_3_x077_dout fifo_data 0 512 }  { fifo_A_PE_6_3_x077_empty_n fifo_status 0 1 }  { fifo_A_PE_6_3_x077_read fifo_update 1 1 } } }
	fifo_A_PE_6_4_x078 { ap_fifo {  { fifo_A_PE_6_4_x078_din fifo_data 1 512 }  { fifo_A_PE_6_4_x078_full_n fifo_status 0 1 }  { fifo_A_PE_6_4_x078_write fifo_update 1 1 } } }
	fifo_B_PE_6_3_x0125 { ap_fifo {  { fifo_B_PE_6_3_x0125_dout fifo_data 0 512 }  { fifo_B_PE_6_3_x0125_empty_n fifo_status 0 1 }  { fifo_B_PE_6_3_x0125_read fifo_update 1 1 } } }
	fifo_B_PE_7_3_x0126 { ap_fifo {  { fifo_B_PE_7_3_x0126_din fifo_data 1 512 }  { fifo_B_PE_7_3_x0126_full_n fifo_status 0 1 }  { fifo_B_PE_7_3_x0126_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_3_x0194 { ap_fifo {  { fifo_C_drain_PE_6_3_x0194_din fifo_data 1 16 }  { fifo_C_drain_PE_6_3_x0194_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_3_x0194_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_6_3_x0
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
set C_modelName {PE_wrapper_6_3_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_6_3_x077 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_6_4_x078 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_6_3_x0125 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_7_3_x0126 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_6_3_x0194 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_6_3_x077", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_6_4_x078", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_6_3_x0125", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_7_3_x0126", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_6_3_x0194", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_6_3_x077_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_6_3_x077_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_3_x077_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_6_4_x078_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_6_4_x078_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_6_4_x078_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_6_3_x0125_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_6_3_x0125_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_6_3_x0125_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_3_x0126_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_7_3_x0126_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_7_3_x0126_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_6_3_x0194_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_6_3_x0194_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_6_3_x0194_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_6_3_x077_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x077", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_6_3_x077_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x077", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_6_3_x077_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_3_x077", "role": "read" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "din" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_6_4_x078_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_6_4_x078", "role": "write" }} , 
 	{ "name": "fifo_B_PE_6_3_x0125_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0125", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_6_3_x0125_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0125", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_6_3_x0125_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_6_3_x0125", "role": "read" }} , 
 	{ "name": "fifo_B_PE_7_3_x0126_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0126", "role": "din" }} , 
 	{ "name": "fifo_B_PE_7_3_x0126_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0126", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_7_3_x0126_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_3_x0126", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0194_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0194", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0194_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0194", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_6_3_x0194_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_6_3_x0194", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "PE_wrapper_6_3_x0",
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
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2009", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2010", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2011", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2012", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2013", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2014", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2015", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2016", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2017", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2018", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2019", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2020", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2021", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2022", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2023", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U2024", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2025", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2026", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2027", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2028", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2029", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2030", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2031", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2032", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2033", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2034", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2035", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2036", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2037", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2038", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2039", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16s_16_4_1_U2040", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_6_3_x0 {
		fifo_A_PE_6_3_x077 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_6_4_x078 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_6_3_x0125 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_7_3_x0126 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_PE_6_3_x0194 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048584", "Max" : "1048584"}
	, {"Name" : "Interval", "Min" : "1048584", "Max" : "1048584"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_6_3_x077 { ap_fifo {  { fifo_A_PE_6_3_x077_dout fifo_data 0 512 }  { fifo_A_PE_6_3_x077_empty_n fifo_status 0 1 }  { fifo_A_PE_6_3_x077_read fifo_update 1 1 } } }
	fifo_A_PE_6_4_x078 { ap_fifo {  { fifo_A_PE_6_4_x078_din fifo_data 1 512 }  { fifo_A_PE_6_4_x078_full_n fifo_status 0 1 }  { fifo_A_PE_6_4_x078_write fifo_update 1 1 } } }
	fifo_B_PE_6_3_x0125 { ap_fifo {  { fifo_B_PE_6_3_x0125_dout fifo_data 0 512 }  { fifo_B_PE_6_3_x0125_empty_n fifo_status 0 1 }  { fifo_B_PE_6_3_x0125_read fifo_update 1 1 } } }
	fifo_B_PE_7_3_x0126 { ap_fifo {  { fifo_B_PE_7_3_x0126_din fifo_data 1 512 }  { fifo_B_PE_7_3_x0126_full_n fifo_status 0 1 }  { fifo_B_PE_7_3_x0126_write fifo_update 1 1 } } }
	fifo_C_drain_PE_6_3_x0194 { ap_fifo {  { fifo_C_drain_PE_6_3_x0194_din fifo_data 1 16 }  { fifo_C_drain_PE_6_3_x0194_full_n fifo_status 0 1 }  { fifo_C_drain_PE_6_3_x0194_write fifo_update 1 1 } } }
}
