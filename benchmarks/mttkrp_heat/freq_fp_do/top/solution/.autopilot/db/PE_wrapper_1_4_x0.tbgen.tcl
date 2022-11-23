set moduleName PE_wrapper_1_4_x0
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
set C_modelName {PE_wrapper_1_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_4_x038 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_5_x039 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_4_x082 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_4_x083 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_1_4_x0122 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_2_4_x0123 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_1_4_x0158 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_4_x038", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_5_x039", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_4_x082", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_4_x083", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_1_4_x0122", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_2_4_x0123", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_1_4_x0158", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_PE_1_4_x038_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_1_4_x038_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_4_x038_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_5_x039_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_1_5_x039_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_5_x039_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_4_x082_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_1_4_x082_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_4_x082_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_4_x083_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_2_4_x083_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_4_x083_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_1_4_x0122_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_1_4_x0122_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_1_4_x0122_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_2_4_x0123_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_2_4_x0123_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_2_4_x0123_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_1_4_x0158_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_1_4_x0158_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_1_4_x0158_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_4_x038_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x038", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_4_x038_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x038", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_4_x038_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x038", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_5_x039_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x039", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_5_x039_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x039", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_5_x039_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x039", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_4_x082_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x082", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_4_x082_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x082", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_4_x082_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x082", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_4_x083_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x083", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_4_x083_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x083", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_4_x083_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x083", "role": "write" }} , 
 	{ "name": "fifo_C_PE_1_4_x0122_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_1_4_x0122", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_1_4_x0122_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_4_x0122", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_1_4_x0122_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_4_x0122", "role": "read" }} , 
 	{ "name": "fifo_C_PE_2_4_x0123_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_2_4_x0123", "role": "din" }} , 
 	{ "name": "fifo_C_PE_2_4_x0123_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_4_x0123", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_2_4_x0123_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_4_x0123", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_1_4_x0158_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_4_x0158", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_1_4_x0158_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_4_x0158", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_1_4_x0158_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_4_x0158", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x0158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U198", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U199", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x038 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_5_x039 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_4_x082 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_4_x083 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_4_x0122 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_4_x0123 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_4_x0158 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "4055258577"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "-239708719"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_4_x038 { ap_fifo {  { fifo_A_PE_1_4_x038_dout fifo_data 0 256 }  { fifo_A_PE_1_4_x038_empty_n fifo_status 0 1 }  { fifo_A_PE_1_4_x038_read fifo_update 1 1 } } }
	fifo_A_PE_1_5_x039 { ap_fifo {  { fifo_A_PE_1_5_x039_din fifo_data 1 256 }  { fifo_A_PE_1_5_x039_full_n fifo_status 0 1 }  { fifo_A_PE_1_5_x039_write fifo_update 1 1 } } }
	fifo_B_PE_1_4_x082 { ap_fifo {  { fifo_B_PE_1_4_x082_dout fifo_data 0 32 }  { fifo_B_PE_1_4_x082_empty_n fifo_status 0 1 }  { fifo_B_PE_1_4_x082_read fifo_update 1 1 } } }
	fifo_B_PE_2_4_x083 { ap_fifo {  { fifo_B_PE_2_4_x083_din fifo_data 1 32 }  { fifo_B_PE_2_4_x083_full_n fifo_status 0 1 }  { fifo_B_PE_2_4_x083_write fifo_update 1 1 } } }
	fifo_C_PE_1_4_x0122 { ap_fifo {  { fifo_C_PE_1_4_x0122_dout fifo_data 0 256 }  { fifo_C_PE_1_4_x0122_empty_n fifo_status 0 1 }  { fifo_C_PE_1_4_x0122_read fifo_update 1 1 } } }
	fifo_C_PE_2_4_x0123 { ap_fifo {  { fifo_C_PE_2_4_x0123_din fifo_data 1 256 }  { fifo_C_PE_2_4_x0123_full_n fifo_status 0 1 }  { fifo_C_PE_2_4_x0123_write fifo_update 1 1 } } }
	fifo_D_drain_PE_1_4_x0158 { ap_fifo {  { fifo_D_drain_PE_1_4_x0158_din fifo_data 1 32 }  { fifo_D_drain_PE_1_4_x0158_full_n fifo_status 0 1 }  { fifo_D_drain_PE_1_4_x0158_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_1_4_x0
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
set C_modelName {PE_wrapper_1_4_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_1_4_x038 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_1_5_x039 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_1_4_x082 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_2_4_x083 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_1_4_x0122 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_2_4_x0123 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_1_4_x0158 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_1_4_x038", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_5_x039", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_1_4_x082", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_2_4_x083", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_1_4_x0122", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_2_4_x0123", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_1_4_x0158", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_A_PE_1_4_x038_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_1_4_x038_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_4_x038_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_1_5_x039_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_1_5_x039_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_5_x039_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_1_4_x082_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_1_4_x082_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_4_x082_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_4_x083_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_2_4_x083_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_2_4_x083_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_1_4_x0122_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_1_4_x0122_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_1_4_x0122_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_2_4_x0123_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_2_4_x0123_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_2_4_x0123_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_1_4_x0158_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_1_4_x0158_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_1_4_x0158_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_1_4_x038_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x038", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_1_4_x038_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x038", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_1_4_x038_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_4_x038", "role": "read" }} , 
 	{ "name": "fifo_A_PE_1_5_x039_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x039", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_5_x039_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x039", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_5_x039_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_5_x039", "role": "write" }} , 
 	{ "name": "fifo_B_PE_1_4_x082_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x082", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_1_4_x082_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x082", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_1_4_x082_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_4_x082", "role": "read" }} , 
 	{ "name": "fifo_B_PE_2_4_x083_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x083", "role": "din" }} , 
 	{ "name": "fifo_B_PE_2_4_x083_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x083", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_2_4_x083_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_4_x083", "role": "write" }} , 
 	{ "name": "fifo_C_PE_1_4_x0122_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_1_4_x0122", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_1_4_x0122_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_4_x0122", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_1_4_x0122_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_4_x0122", "role": "read" }} , 
 	{ "name": "fifo_C_PE_2_4_x0123_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_2_4_x0123", "role": "din" }} , 
 	{ "name": "fifo_C_PE_2_4_x0123_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_4_x0123", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_2_4_x0123_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_4_x0123", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_1_4_x0158_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_4_x0158", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_1_4_x0158_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_4_x0158", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_1_4_x0158_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_1_4_x0158", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x0158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U203", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U204", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x038 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_5_x039 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_4_x082 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_4_x083 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_4_x0122 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_4_x0123 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_4_x0158 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "4055258577"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "-239708719"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_1_4_x038 { ap_fifo {  { fifo_A_PE_1_4_x038_dout fifo_data 0 256 }  { fifo_A_PE_1_4_x038_empty_n fifo_status 0 1 }  { fifo_A_PE_1_4_x038_read fifo_update 1 1 } } }
	fifo_A_PE_1_5_x039 { ap_fifo {  { fifo_A_PE_1_5_x039_din fifo_data 1 256 }  { fifo_A_PE_1_5_x039_full_n fifo_status 0 1 }  { fifo_A_PE_1_5_x039_write fifo_update 1 1 } } }
	fifo_B_PE_1_4_x082 { ap_fifo {  { fifo_B_PE_1_4_x082_dout fifo_data 0 32 }  { fifo_B_PE_1_4_x082_empty_n fifo_status 0 1 }  { fifo_B_PE_1_4_x082_read fifo_update 1 1 } } }
	fifo_B_PE_2_4_x083 { ap_fifo {  { fifo_B_PE_2_4_x083_din fifo_data 1 32 }  { fifo_B_PE_2_4_x083_full_n fifo_status 0 1 }  { fifo_B_PE_2_4_x083_write fifo_update 1 1 } } }
	fifo_C_PE_1_4_x0122 { ap_fifo {  { fifo_C_PE_1_4_x0122_dout fifo_data 0 256 }  { fifo_C_PE_1_4_x0122_empty_n fifo_status 0 1 }  { fifo_C_PE_1_4_x0122_read fifo_update 1 1 } } }
	fifo_C_PE_2_4_x0123 { ap_fifo {  { fifo_C_PE_2_4_x0123_din fifo_data 1 256 }  { fifo_C_PE_2_4_x0123_full_n fifo_status 0 1 }  { fifo_C_PE_2_4_x0123_write fifo_update 1 1 } } }
	fifo_D_drain_PE_1_4_x0158 { ap_fifo {  { fifo_D_drain_PE_1_4_x0158_din fifo_data 1 32 }  { fifo_D_drain_PE_1_4_x0158_full_n fifo_status 0 1 }  { fifo_D_drain_PE_1_4_x0158_write fifo_update 1 1 } } }
}
