set moduleName PE_wrapper_3_4_x1
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
set C_modelName {PE_wrapper_3_4_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_4_x156 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_5_x157 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_4_x184 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_4_x185 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_3_4_x1124 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_4_4_x1125 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_3_4_x1160 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_4_x156", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_5_x157", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_4_x184", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x185", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_3_4_x1124", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_4_4_x1125", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_3_4_x1160", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_4_x156_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_3_4_x156_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_4_x156_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x157_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_3_5_x157_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_5_x157_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_4_x184_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_3_4_x184_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_4_x184_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x185_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_4_4_x185_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_4_x185_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_3_4_x1124_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_3_4_x1124_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_3_4_x1124_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_4_4_x1125_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_4_4_x1125_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_4_4_x1125_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_3_4_x1160_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_3_4_x1160_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_3_4_x1160_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_4_x156_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x156", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_4_x156_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x156", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_4_x156_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x156", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_4_x184_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x184", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_4_x184_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x184", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_4_x184_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x184", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_4_x185_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x185", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_4_x185_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x185", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x185_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x185", "role": "write" }} , 
 	{ "name": "fifo_C_PE_3_4_x1124_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_3_4_x1124", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_3_4_x1124_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_4_x1124", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_3_4_x1124_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_4_x1124", "role": "read" }} , 
 	{ "name": "fifo_C_PE_4_4_x1125_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_4_4_x1125", "role": "din" }} , 
 	{ "name": "fifo_C_PE_4_4_x1125_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_4_4_x1125", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_4_4_x1125_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_4_4_x1125", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_3_4_x1160_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_4_x1160", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_3_4_x1160_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_4_x1160", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_3_4_x1160_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_4_x1160", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_3_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_4_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_4_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x1160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x1160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1244", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1245", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1246", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1247", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_4_x1 {
		fifo_A_PE_3_4_x156 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_5_x157 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_4_x184 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_4_x185 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_4_x1124 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_4_x1125 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_4_x1160 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "4155921873"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "-139045423"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_4_x156 { ap_fifo {  { fifo_A_PE_3_4_x156_dout fifo_data 0 256 }  { fifo_A_PE_3_4_x156_empty_n fifo_status 0 1 }  { fifo_A_PE_3_4_x156_read fifo_update 1 1 } } }
	fifo_A_PE_3_5_x157 { ap_fifo {  { fifo_A_PE_3_5_x157_din fifo_data 1 256 }  { fifo_A_PE_3_5_x157_full_n fifo_status 0 1 }  { fifo_A_PE_3_5_x157_write fifo_update 1 1 } } }
	fifo_B_PE_3_4_x184 { ap_fifo {  { fifo_B_PE_3_4_x184_dout fifo_data 0 32 }  { fifo_B_PE_3_4_x184_empty_n fifo_status 0 1 }  { fifo_B_PE_3_4_x184_read fifo_update 1 1 } } }
	fifo_B_PE_4_4_x185 { ap_fifo {  { fifo_B_PE_4_4_x185_din fifo_data 1 32 }  { fifo_B_PE_4_4_x185_full_n fifo_status 0 1 }  { fifo_B_PE_4_4_x185_write fifo_update 1 1 } } }
	fifo_C_PE_3_4_x1124 { ap_fifo {  { fifo_C_PE_3_4_x1124_dout fifo_data 0 256 }  { fifo_C_PE_3_4_x1124_empty_n fifo_status 0 1 }  { fifo_C_PE_3_4_x1124_read fifo_update 1 1 } } }
	fifo_C_PE_4_4_x1125 { ap_fifo {  { fifo_C_PE_4_4_x1125_din fifo_data 1 256 }  { fifo_C_PE_4_4_x1125_full_n fifo_status 0 1 }  { fifo_C_PE_4_4_x1125_write fifo_update 1 1 } } }
	fifo_D_drain_PE_3_4_x1160 { ap_fifo {  { fifo_D_drain_PE_3_4_x1160_din fifo_data 1 32 }  { fifo_D_drain_PE_3_4_x1160_full_n fifo_status 0 1 }  { fifo_D_drain_PE_3_4_x1160_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_3_4_x1
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
set C_modelName {PE_wrapper_3_4_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_4_x156 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_5_x157 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_4_x184 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_4_x185 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_3_4_x1124 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_4_4_x1125 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_3_4_x1160 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_4_x156", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_5_x157", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_4_x184", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_4_x185", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_3_4_x1124", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_4_4_x1125", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_3_4_x1160", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_4_x156_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_3_4_x156_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_4_x156_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x157_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_3_5_x157_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_5_x157_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_4_x184_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_3_4_x184_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_4_x184_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_4_x185_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_4_4_x185_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_4_x185_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_3_4_x1124_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_3_4_x1124_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_3_4_x1124_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_4_4_x1125_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_4_4_x1125_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_4_4_x1125_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_3_4_x1160_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_3_4_x1160_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_3_4_x1160_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_4_x156_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x156", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_4_x156_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x156", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_4_x156_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_4_x156", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_4_x184_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x184", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_4_x184_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x184", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_4_x184_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_4_x184", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_4_x185_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x185", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_4_x185_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x185", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_4_x185_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_4_x185", "role": "write" }} , 
 	{ "name": "fifo_C_PE_3_4_x1124_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_3_4_x1124", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_3_4_x1124_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_4_x1124", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_3_4_x1124_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_4_x1124", "role": "read" }} , 
 	{ "name": "fifo_C_PE_4_4_x1125_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_4_4_x1125", "role": "din" }} , 
 	{ "name": "fifo_C_PE_4_4_x1125_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_4_4_x1125", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_4_4_x1125_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_4_4_x1125", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_3_4_x1160_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_4_x1160", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_3_4_x1160_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_4_x1160", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_3_4_x1160_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_4_x1160", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_3_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_4_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_4_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x1160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x1160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1217", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1218", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1219", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1220", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_4_x1 {
		fifo_A_PE_3_4_x156 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_5_x157 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_4_x184 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_4_x185 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_4_x1124 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_4_x1125 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_4_x1160 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "4155921873"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "-139045423"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_4_x156 { ap_fifo {  { fifo_A_PE_3_4_x156_dout fifo_data 0 256 }  { fifo_A_PE_3_4_x156_empty_n fifo_status 0 1 }  { fifo_A_PE_3_4_x156_read fifo_update 1 1 } } }
	fifo_A_PE_3_5_x157 { ap_fifo {  { fifo_A_PE_3_5_x157_din fifo_data 1 256 }  { fifo_A_PE_3_5_x157_full_n fifo_status 0 1 }  { fifo_A_PE_3_5_x157_write fifo_update 1 1 } } }
	fifo_B_PE_3_4_x184 { ap_fifo {  { fifo_B_PE_3_4_x184_dout fifo_data 0 32 }  { fifo_B_PE_3_4_x184_empty_n fifo_status 0 1 }  { fifo_B_PE_3_4_x184_read fifo_update 1 1 } } }
	fifo_B_PE_4_4_x185 { ap_fifo {  { fifo_B_PE_4_4_x185_din fifo_data 1 32 }  { fifo_B_PE_4_4_x185_full_n fifo_status 0 1 }  { fifo_B_PE_4_4_x185_write fifo_update 1 1 } } }
	fifo_C_PE_3_4_x1124 { ap_fifo {  { fifo_C_PE_3_4_x1124_dout fifo_data 0 256 }  { fifo_C_PE_3_4_x1124_empty_n fifo_status 0 1 }  { fifo_C_PE_3_4_x1124_read fifo_update 1 1 } } }
	fifo_C_PE_4_4_x1125 { ap_fifo {  { fifo_C_PE_4_4_x1125_din fifo_data 1 256 }  { fifo_C_PE_4_4_x1125_full_n fifo_status 0 1 }  { fifo_C_PE_4_4_x1125_write fifo_update 1 1 } } }
	fifo_D_drain_PE_3_4_x1160 { ap_fifo {  { fifo_D_drain_PE_3_4_x1160_din fifo_data 1 32 }  { fifo_D_drain_PE_3_4_x1160_full_n fifo_status 0 1 }  { fifo_D_drain_PE_3_4_x1160_write fifo_update 1 1 } } }
}
