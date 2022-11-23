set moduleName kernel0_x1_Loop_C_drain_IO_L1_out_boundary_wrapper_3_x1_loop_1_proc30
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
set C_modelName {kernel0_x1_Loop_C_drain_IO_L1_out_boundary_wrapper_3_x1_loop_1_proc30}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_3_7_x1 int 128 regular {fifo 1 volatile }  }
	{ data_split_V_3 int 16 regular {array 8 { 2 1 } 1 1 }  }
	{ fifo_C_drain_PE_7_3_x1 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_split_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "fifo_C_drain_PE_7_3_x1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_3_7_x1_din sc_out sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_3_7_x1_full_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_3_7_x1_write sc_out sc_logic 1 signal 0 } 
	{ data_split_V_3_address0 sc_out sc_lv 3 signal 1 } 
	{ data_split_V_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_split_V_3_we0 sc_out sc_logic 1 signal 1 } 
	{ data_split_V_3_d0 sc_out sc_lv 16 signal 1 } 
	{ data_split_V_3_q0 sc_in sc_lv 16 signal 1 } 
	{ data_split_V_3_address1 sc_out sc_lv 3 signal 1 } 
	{ data_split_V_3_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_split_V_3_q1 sc_in sc_lv 16 signal 1 } 
	{ fifo_C_drain_PE_7_3_x1_dout sc_in sc_lv 16 signal 2 } 
	{ fifo_C_drain_PE_7_3_x1_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_7_3_x1_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_3_7_x1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_3_7_x1", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_3_7_x1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_3_7_x1", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_3_7_x1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_3_7_x1", "role": "write" }} , 
 	{ "name": "data_split_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data_split_V_3", "role": "address0" }} , 
 	{ "name": "data_split_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_split_V_3", "role": "ce0" }} , 
 	{ "name": "data_split_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_split_V_3", "role": "we0" }} , 
 	{ "name": "data_split_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_split_V_3", "role": "d0" }} , 
 	{ "name": "data_split_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_split_V_3", "role": "q0" }} , 
 	{ "name": "data_split_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data_split_V_3", "role": "address1" }} , 
 	{ "name": "data_split_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_split_V_3", "role": "ce1" }} , 
 	{ "name": "data_split_V_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_split_V_3", "role": "q1" }} , 
 	{ "name": "fifo_C_drain_PE_7_3_x1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_3_x1", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_7_3_x1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_3_x1", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_3_x1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_3_x1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "kernel0_x1_Loop_C_drain_IO_L1_out_boundary_wrapper_3_x1_loop_1_proc30",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_3_x1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_V_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x1_Loop_C_drain_IO_L1_out_boundary_wrapper_3_x1_loop_1_proc30 {
		fifo_C_drain_C_drain_IO_L1_out_3_7_x1 {Type O LastRead -1 FirstWrite 5}
		data_split_V_3 {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_3_x1 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "271137", "Max" : "271137"}
	, {"Name" : "Interval", "Min" : "271137", "Max" : "271137"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_3_7_x1 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_3_7_x1_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L1_out_3_7_x1_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_3_7_x1_write fifo_update 1 1 } } }
	data_split_V_3 { ap_memory {  { data_split_V_3_address0 mem_address 1 3 }  { data_split_V_3_ce0 mem_ce 1 1 }  { data_split_V_3_we0 mem_we 1 1 }  { data_split_V_3_d0 mem_din 1 16 }  { data_split_V_3_q0 mem_dout 0 16 }  { data_split_V_3_address1 MemPortADDR2 1 3 }  { data_split_V_3_ce1 MemPortCE2 1 1 }  { data_split_V_3_q1 MemPortDOUT2 0 16 } } }
	fifo_C_drain_PE_7_3_x1 { ap_fifo {  { fifo_C_drain_PE_7_3_x1_dout fifo_data 0 16 }  { fifo_C_drain_PE_7_3_x1_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_7_3_x1_read fifo_update 1 1 } } }
}
