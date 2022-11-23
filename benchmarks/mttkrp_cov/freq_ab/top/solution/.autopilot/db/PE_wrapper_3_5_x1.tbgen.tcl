set moduleName PE_wrapper_3_5_x1
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
set C_modelName {PE_wrapper_3_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_5_x157 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_6_x158 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_5_x189 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_5_x190 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_3_5_x1129 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_4_5_x1130 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_3_5_x1164 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_5_x157", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_6_x158", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_5_x189", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_5_x190", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_3_5_x1129", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_4_5_x1130", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_3_5_x1164", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_5_x157_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_3_5_x157_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x157_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_6_x158_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_3_6_x158_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_6_x158_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_5_x189_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_3_5_x189_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_5_x189_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_5_x190_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_4_5_x190_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_5_x190_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_3_5_x1129_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_3_5_x1129_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_3_5_x1129_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_4_5_x1130_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_4_5_x1130_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_4_5_x1130_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_3_5_x1164_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_3_5_x1164_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_3_5_x1164_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_6_x158_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x158", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_6_x158_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x158", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_6_x158_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x158", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_5_x189_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x189", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_5_x189_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x189", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_5_x189_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x189", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_5_x190_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x190", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_5_x190_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x190", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_5_x190_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x190", "role": "write" }} , 
 	{ "name": "fifo_C_PE_3_5_x1129_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_3_5_x1129", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_3_5_x1129_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_5_x1129", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_3_5_x1129_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_5_x1129", "role": "read" }} , 
 	{ "name": "fifo_C_PE_4_5_x1130_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_4_5_x1130", "role": "din" }} , 
 	{ "name": "fifo_C_PE_4_5_x1130_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_4_5_x1130", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_4_5_x1130_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_4_5_x1130", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_3_5_x1164_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_5_x1164", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_3_5_x1164_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_5_x1164", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_3_5_x1164_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_5_x1164", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_3_5_x1",
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
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_5_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x1164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x1164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1255", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1256", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1257", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U1258", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_5_x1 {
		fifo_A_PE_3_5_x157 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_6_x158 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_5_x189 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_5_x190 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_5_x1129 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_5_x1130 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_5_x1164 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "4155921873"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "-139045423"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_5_x157 { ap_fifo {  { fifo_A_PE_3_5_x157_dout fifo_data 0 256 }  { fifo_A_PE_3_5_x157_empty_n fifo_status 0 1 }  { fifo_A_PE_3_5_x157_read fifo_update 1 1 } } }
	fifo_A_PE_3_6_x158 { ap_fifo {  { fifo_A_PE_3_6_x158_din fifo_data 1 256 }  { fifo_A_PE_3_6_x158_full_n fifo_status 0 1 }  { fifo_A_PE_3_6_x158_write fifo_update 1 1 } } }
	fifo_B_PE_3_5_x189 { ap_fifo {  { fifo_B_PE_3_5_x189_dout fifo_data 0 32 }  { fifo_B_PE_3_5_x189_empty_n fifo_status 0 1 }  { fifo_B_PE_3_5_x189_read fifo_update 1 1 } } }
	fifo_B_PE_4_5_x190 { ap_fifo {  { fifo_B_PE_4_5_x190_din fifo_data 1 32 }  { fifo_B_PE_4_5_x190_full_n fifo_status 0 1 }  { fifo_B_PE_4_5_x190_write fifo_update 1 1 } } }
	fifo_C_PE_3_5_x1129 { ap_fifo {  { fifo_C_PE_3_5_x1129_dout fifo_data 0 256 }  { fifo_C_PE_3_5_x1129_empty_n fifo_status 0 1 }  { fifo_C_PE_3_5_x1129_read fifo_update 1 1 } } }
	fifo_C_PE_4_5_x1130 { ap_fifo {  { fifo_C_PE_4_5_x1130_din fifo_data 1 256 }  { fifo_C_PE_4_5_x1130_full_n fifo_status 0 1 }  { fifo_C_PE_4_5_x1130_write fifo_update 1 1 } } }
	fifo_D_drain_PE_3_5_x1164 { ap_fifo {  { fifo_D_drain_PE_3_5_x1164_din fifo_data 1 32 }  { fifo_D_drain_PE_3_5_x1164_full_n fifo_status 0 1 }  { fifo_D_drain_PE_3_5_x1164_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_3_5_x1
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
set C_modelName {PE_wrapper_3_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_3_5_x157 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_3_6_x158 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_3_5_x189 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_4_5_x190 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_3_5_x1129 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_4_5_x1130 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_3_5_x1164 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_3_5_x157", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_3_6_x158", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_3_5_x189", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_4_5_x190", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_3_5_x1129", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_4_5_x1130", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_3_5_x1164", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_3_5_x157_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_3_5_x157_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_5_x157_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_3_6_x158_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_3_6_x158_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_3_6_x158_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_3_5_x189_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_3_5_x189_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_5_x189_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_4_5_x190_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_4_5_x190_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_4_5_x190_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_3_5_x1129_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_3_5_x1129_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_3_5_x1129_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_4_5_x1130_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_4_5_x1130_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_4_5_x1130_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_3_5_x1164_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_3_5_x1164_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_3_5_x1164_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_3_5_x157_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_5_x157", "role": "read" }} , 
 	{ "name": "fifo_A_PE_3_6_x158_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x158", "role": "din" }} , 
 	{ "name": "fifo_A_PE_3_6_x158_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x158", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_3_6_x158_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_3_6_x158", "role": "write" }} , 
 	{ "name": "fifo_B_PE_3_5_x189_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x189", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_3_5_x189_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x189", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_3_5_x189_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_5_x189", "role": "read" }} , 
 	{ "name": "fifo_B_PE_4_5_x190_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x190", "role": "din" }} , 
 	{ "name": "fifo_B_PE_4_5_x190_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x190", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_4_5_x190_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_4_5_x190", "role": "write" }} , 
 	{ "name": "fifo_C_PE_3_5_x1129_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_3_5_x1129", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_3_5_x1129_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_5_x1129", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_3_5_x1129_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_5_x1129", "role": "read" }} , 
 	{ "name": "fifo_C_PE_4_5_x1130_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_4_5_x1130", "role": "din" }} , 
 	{ "name": "fifo_C_PE_4_5_x1130_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_4_5_x1130", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_4_5_x1130_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_4_5_x1130", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_3_5_x1164_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_5_x1164", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_3_5_x1164_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_5_x1164", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_3_5_x1164_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_3_5_x1164", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "PE_wrapper_3_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "50336737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_5_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x1164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x1164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1764", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1765", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1766", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1767", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1768", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1769", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1770", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1771", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1772", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1773", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1774", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U1775", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_3_5_x1 {
		fifo_A_PE_3_5_x157 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_6_x158 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_5_x189 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_5_x190 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_5_x1129 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_5_x1130 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_5_x1164 {Type O LastRead -1 FirstWrite 69}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "50336737"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "50336737"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_3_5_x157 { ap_fifo {  { fifo_A_PE_3_5_x157_dout fifo_data 0 256 }  { fifo_A_PE_3_5_x157_empty_n fifo_status 0 1 }  { fifo_A_PE_3_5_x157_read fifo_update 1 1 } } }
	fifo_A_PE_3_6_x158 { ap_fifo {  { fifo_A_PE_3_6_x158_din fifo_data 1 256 }  { fifo_A_PE_3_6_x158_full_n fifo_status 0 1 }  { fifo_A_PE_3_6_x158_write fifo_update 1 1 } } }
	fifo_B_PE_3_5_x189 { ap_fifo {  { fifo_B_PE_3_5_x189_dout fifo_data 0 32 }  { fifo_B_PE_3_5_x189_empty_n fifo_status 0 1 }  { fifo_B_PE_3_5_x189_read fifo_update 1 1 } } }
	fifo_B_PE_4_5_x190 { ap_fifo {  { fifo_B_PE_4_5_x190_din fifo_data 1 32 }  { fifo_B_PE_4_5_x190_full_n fifo_status 0 1 }  { fifo_B_PE_4_5_x190_write fifo_update 1 1 } } }
	fifo_C_PE_3_5_x1129 { ap_fifo {  { fifo_C_PE_3_5_x1129_dout fifo_data 0 256 }  { fifo_C_PE_3_5_x1129_empty_n fifo_status 0 1 }  { fifo_C_PE_3_5_x1129_read fifo_update 1 1 } } }
	fifo_C_PE_4_5_x1130 { ap_fifo {  { fifo_C_PE_4_5_x1130_din fifo_data 1 256 }  { fifo_C_PE_4_5_x1130_full_n fifo_status 0 1 }  { fifo_C_PE_4_5_x1130_write fifo_update 1 1 } } }
	fifo_D_drain_PE_3_5_x1164 { ap_fifo {  { fifo_D_drain_PE_3_5_x1164_din fifo_data 1 32 }  { fifo_D_drain_PE_3_5_x1164_full_n fifo_status 0 1 }  { fifo_D_drain_PE_3_5_x1164_write fifo_update 1 1 } } }
}
