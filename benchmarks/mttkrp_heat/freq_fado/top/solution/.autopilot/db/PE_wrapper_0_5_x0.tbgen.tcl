set moduleName PE_wrapper_0_5_x0
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
set C_modelName {PE_wrapper_0_5_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_5_x030 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_6_x031 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_5_x086 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_5_x087 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_0_5_x0126 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_1_5_x0127 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_0_5_x0161 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_5_x030", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_6_x031", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_5_x086", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_5_x087", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_0_5_x0126", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_1_5_x0127", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_0_5_x0161", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_5_x030_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_0_5_x030_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_5_x030_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_6_x031_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_0_6_x031_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_6_x031_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_5_x086_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_0_5_x086_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_5_x086_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_5_x087_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_1_5_x087_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_5_x087_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_0_5_x0126_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_0_5_x0126_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_0_5_x0126_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_1_5_x0127_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_1_5_x0127_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_1_5_x0127_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_0_5_x0161_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_0_5_x0161_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_0_5_x0161_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "write" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "read" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "din" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_0_5_x0",
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
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U135", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U136", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x030 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_6_x031 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_5_x086 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_5_x087 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_5_x0126 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_5_x0127 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_5_x0161 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "4055258577"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "-239708719"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_5_x030 { ap_fifo {  { fifo_A_PE_0_5_x030_dout fifo_data 0 256 }  { fifo_A_PE_0_5_x030_empty_n fifo_status 0 1 }  { fifo_A_PE_0_5_x030_read fifo_update 1 1 } } }
	fifo_A_PE_0_6_x031 { ap_fifo {  { fifo_A_PE_0_6_x031_din fifo_data 1 256 }  { fifo_A_PE_0_6_x031_full_n fifo_status 0 1 }  { fifo_A_PE_0_6_x031_write fifo_update 1 1 } } }
	fifo_B_PE_0_5_x086 { ap_fifo {  { fifo_B_PE_0_5_x086_dout fifo_data 0 32 }  { fifo_B_PE_0_5_x086_empty_n fifo_status 0 1 }  { fifo_B_PE_0_5_x086_read fifo_update 1 1 } } }
	fifo_B_PE_1_5_x087 { ap_fifo {  { fifo_B_PE_1_5_x087_din fifo_data 1 32 }  { fifo_B_PE_1_5_x087_full_n fifo_status 0 1 }  { fifo_B_PE_1_5_x087_write fifo_update 1 1 } } }
	fifo_C_PE_0_5_x0126 { ap_fifo {  { fifo_C_PE_0_5_x0126_dout fifo_data 0 256 }  { fifo_C_PE_0_5_x0126_empty_n fifo_status 0 1 }  { fifo_C_PE_0_5_x0126_read fifo_update 1 1 } } }
	fifo_C_PE_1_5_x0127 { ap_fifo {  { fifo_C_PE_1_5_x0127_din fifo_data 1 256 }  { fifo_C_PE_1_5_x0127_full_n fifo_status 0 1 }  { fifo_C_PE_1_5_x0127_write fifo_update 1 1 } } }
	fifo_D_drain_PE_0_5_x0161 { ap_fifo {  { fifo_D_drain_PE_0_5_x0161_din fifo_data 1 32 }  { fifo_D_drain_PE_0_5_x0161_full_n fifo_status 0 1 }  { fifo_D_drain_PE_0_5_x0161_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_5_x0
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
set C_modelName {PE_wrapper_0_5_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_5_x030 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_6_x031 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_5_x086 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_5_x087 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_0_5_x0126 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_1_5_x0127 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_0_5_x0161 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_5_x030", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_6_x031", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_5_x086", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_5_x087", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_0_5_x0126", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_1_5_x0127", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_0_5_x0161", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_5_x030_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_0_5_x030_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_5_x030_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_6_x031_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_0_6_x031_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_6_x031_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_5_x086_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_0_5_x086_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_5_x086_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_5_x087_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_1_5_x087_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_5_x087_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_0_5_x0126_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_0_5_x0126_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_0_5_x0126_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_1_5_x0127_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_1_5_x0127_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_1_5_x0127_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_0_5_x0161_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_0_5_x0161_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_0_5_x0161_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "write" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "read" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "din" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "PE_wrapper_0_5_x0",
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
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U188", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U189", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U190", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U191", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U192", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U193", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U194", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U195", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U196", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U197", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U198", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U199", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x030 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_6_x031 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_5_x086 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_5_x087 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_5_x0126 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_5_x0127 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_5_x0161 {Type O LastRead -1 FirstWrite 69}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "50336737"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "50336737"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_5_x030 { ap_fifo {  { fifo_A_PE_0_5_x030_dout fifo_data 0 256 }  { fifo_A_PE_0_5_x030_empty_n fifo_status 0 1 }  { fifo_A_PE_0_5_x030_read fifo_update 1 1 } } }
	fifo_A_PE_0_6_x031 { ap_fifo {  { fifo_A_PE_0_6_x031_din fifo_data 1 256 }  { fifo_A_PE_0_6_x031_full_n fifo_status 0 1 }  { fifo_A_PE_0_6_x031_write fifo_update 1 1 } } }
	fifo_B_PE_0_5_x086 { ap_fifo {  { fifo_B_PE_0_5_x086_dout fifo_data 0 32 }  { fifo_B_PE_0_5_x086_empty_n fifo_status 0 1 }  { fifo_B_PE_0_5_x086_read fifo_update 1 1 } } }
	fifo_B_PE_1_5_x087 { ap_fifo {  { fifo_B_PE_1_5_x087_din fifo_data 1 32 }  { fifo_B_PE_1_5_x087_full_n fifo_status 0 1 }  { fifo_B_PE_1_5_x087_write fifo_update 1 1 } } }
	fifo_C_PE_0_5_x0126 { ap_fifo {  { fifo_C_PE_0_5_x0126_dout fifo_data 0 256 }  { fifo_C_PE_0_5_x0126_empty_n fifo_status 0 1 }  { fifo_C_PE_0_5_x0126_read fifo_update 1 1 } } }
	fifo_C_PE_1_5_x0127 { ap_fifo {  { fifo_C_PE_1_5_x0127_din fifo_data 1 256 }  { fifo_C_PE_1_5_x0127_full_n fifo_status 0 1 }  { fifo_C_PE_1_5_x0127_write fifo_update 1 1 } } }
	fifo_D_drain_PE_0_5_x0161 { ap_fifo {  { fifo_D_drain_PE_0_5_x0161_din fifo_data 1 32 }  { fifo_D_drain_PE_0_5_x0161_full_n fifo_status 0 1 }  { fifo_D_drain_PE_0_5_x0161_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_0_5_x0
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
set C_modelName {PE_wrapper_0_5_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_5_x030 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_6_x031 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_5_x086 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_5_x087 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_0_5_x0126 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_1_5_x0127 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_0_5_x0161 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_5_x030", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_6_x031", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_5_x086", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_5_x087", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_0_5_x0126", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_1_5_x0127", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_0_5_x0161", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_5_x030_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_0_5_x030_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_5_x030_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_6_x031_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_0_6_x031_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_6_x031_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_5_x086_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_0_5_x086_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_5_x086_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_5_x087_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_1_5_x087_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_5_x087_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_0_5_x0126_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_0_5_x0126_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_0_5_x0126_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_1_5_x0127_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_1_5_x0127_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_1_5_x0127_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_0_5_x0161_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_0_5_x0161_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_0_5_x0161_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_5_x030_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_5_x030", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_6_x031_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_6_x031", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_5_x086_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_5_x086", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_5_x087_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_5_x087", "role": "write" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_0_5_x0126_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_0_5_x0126", "role": "read" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "din" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_1_5_x0127_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_1_5_x0127", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_0_5_x0161_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_0_5_x0161", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "PE_wrapper_0_5_x0",
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
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U188", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U189", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U190", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U191", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U192", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U193", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U194", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U195", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U196", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U197", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U198", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U199", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x030 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_6_x031 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_5_x086 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_5_x087 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_5_x0126 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_5_x0127 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_5_x0161 {Type O LastRead -1 FirstWrite 69}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "50336737"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "50336737"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_5_x030 { ap_fifo {  { fifo_A_PE_0_5_x030_dout fifo_data 0 256 }  { fifo_A_PE_0_5_x030_empty_n fifo_status 0 1 }  { fifo_A_PE_0_5_x030_read fifo_update 1 1 } } }
	fifo_A_PE_0_6_x031 { ap_fifo {  { fifo_A_PE_0_6_x031_din fifo_data 1 256 }  { fifo_A_PE_0_6_x031_full_n fifo_status 0 1 }  { fifo_A_PE_0_6_x031_write fifo_update 1 1 } } }
	fifo_B_PE_0_5_x086 { ap_fifo {  { fifo_B_PE_0_5_x086_dout fifo_data 0 32 }  { fifo_B_PE_0_5_x086_empty_n fifo_status 0 1 }  { fifo_B_PE_0_5_x086_read fifo_update 1 1 } } }
	fifo_B_PE_1_5_x087 { ap_fifo {  { fifo_B_PE_1_5_x087_din fifo_data 1 32 }  { fifo_B_PE_1_5_x087_full_n fifo_status 0 1 }  { fifo_B_PE_1_5_x087_write fifo_update 1 1 } } }
	fifo_C_PE_0_5_x0126 { ap_fifo {  { fifo_C_PE_0_5_x0126_dout fifo_data 0 256 }  { fifo_C_PE_0_5_x0126_empty_n fifo_status 0 1 }  { fifo_C_PE_0_5_x0126_read fifo_update 1 1 } } }
	fifo_C_PE_1_5_x0127 { ap_fifo {  { fifo_C_PE_1_5_x0127_din fifo_data 1 256 }  { fifo_C_PE_1_5_x0127_full_n fifo_status 0 1 }  { fifo_C_PE_1_5_x0127_write fifo_update 1 1 } } }
	fifo_D_drain_PE_0_5_x0161 { ap_fifo {  { fifo_D_drain_PE_0_5_x0161_din fifo_data 1 32 }  { fifo_D_drain_PE_0_5_x0161_full_n fifo_status 0 1 }  { fifo_D_drain_PE_0_5_x0161_write fifo_update 1 1 } } }
}
