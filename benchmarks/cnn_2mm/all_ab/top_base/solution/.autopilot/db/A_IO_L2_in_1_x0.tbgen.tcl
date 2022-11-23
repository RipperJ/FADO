set moduleName A_IO_L2_in_1_x0
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
set C_modelName {A_IO_L2_in_1_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_A_IO_L2_in_1_x02 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_A_IO_L2_in_2_x03 int 256 regular {fifo 1 volatile }  }
	{ fifo_A_PE_1_0_x019 int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_A_IO_L2_in_1_x02", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_A_IO_L2_in_2_x03", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_A_PE_1_0_x019", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_A_IO_L2_in_1_x02_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_A_IO_L2_in_1_x02_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_1_x02_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_A_IO_L2_in_2_x03_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_A_IO_L2_in_2_x03_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_A_IO_L2_in_2_x03_write sc_out sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_0_x019_din sc_out sc_lv 256 signal 2 } 
	{ fifo_A_PE_1_0_x019_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_A_PE_1_0_x019_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x02_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x02", "role": "dout" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x02_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x02", "role": "empty_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_1_x02_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_1_x02", "role": "read" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x03_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x03", "role": "din" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x03_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x03", "role": "full_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_2_x03_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_2_x03", "role": "write" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_0_x019_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_0_x019", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "A_IO_L2_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82394", "EstimateLatencyMax" : "82394",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x03", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_pong_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x02 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x03 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x019 {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "82394", "Max" : "82394"}
	, {"Name" : "Interval", "Min" : "82394", "Max" : "82394"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_A_IO_L2_in_1_x02 { ap_fifo {  { fifo_A_A_IO_L2_in_1_x02_dout fifo_data 0 256 }  { fifo_A_A_IO_L2_in_1_x02_empty_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_1_x02_read fifo_update 1 1 } } }
	fifo_A_A_IO_L2_in_2_x03 { ap_fifo {  { fifo_A_A_IO_L2_in_2_x03_din fifo_data 1 256 }  { fifo_A_A_IO_L2_in_2_x03_full_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_2_x03_write fifo_update 1 1 } } }
	fifo_A_PE_1_0_x019 { ap_fifo {  { fifo_A_PE_1_0_x019_din fifo_data 1 256 }  { fifo_A_PE_1_0_x019_full_n fifo_status 0 1 }  { fifo_A_PE_1_0_x019_write fifo_update 1 1 } } }
}
