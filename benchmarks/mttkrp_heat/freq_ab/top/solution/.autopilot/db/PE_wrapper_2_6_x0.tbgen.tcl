set moduleName PE_wrapper_2_6_x0
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
set C_modelName {PE_wrapper_2_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_6_x049 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_7_x050 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_6_x093 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_6_x094 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_2_6_x0133 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_3_6_x0134 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_2_6_x0167 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_6_x049", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_7_x050", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x093", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_6_x094", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_2_6_x0133", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_3_6_x0134", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_2_6_x0167", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_6_x049_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_2_6_x049_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_6_x049_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x050_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_2_7_x050_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_7_x050_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_6_x093_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_2_6_x093_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x093_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_6_x094_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_3_6_x094_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_6_x094_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_2_6_x0133_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_2_6_x0133_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_2_6_x0133_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_3_6_x0134_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_3_6_x0134_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_3_6_x0134_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_2_6_x0167_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_2_6_x0167_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_2_6_x0167_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_6_x049_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x049", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_6_x049_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x049", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_6_x049_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x049", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_7_x050_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x050", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_7_x050_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x050", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x050_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x050", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_6_x093_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x093", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_6_x093_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x093", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x093_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x093", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_6_x094_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x094", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_6_x094_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x094", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_6_x094_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x094", "role": "write" }} , 
 	{ "name": "fifo_C_PE_2_6_x0133_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_2_6_x0133", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_2_6_x0133_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_6_x0133", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_2_6_x0133_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_6_x0133", "role": "read" }} , 
 	{ "name": "fifo_C_PE_3_6_x0134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_3_6_x0134", "role": "din" }} , 
 	{ "name": "fifo_C_PE_3_6_x0134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_6_x0134", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_3_6_x0134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_6_x0134", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_2_6_x0167_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_6_x0167", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_2_6_x0167_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_6_x0167", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_2_6_x0167_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_6_x0167", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "PE_wrapper_2_6_x0",
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
			{"Name" : "fifo_A_PE_2_6_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U288", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U289", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x049 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_7_x050 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_6_x093 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_6_x094 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_6_x0133 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_6_x0134 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_6_x0167 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "4055258577"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "-239708719"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_6_x049 { ap_fifo {  { fifo_A_PE_2_6_x049_dout fifo_data 0 256 }  { fifo_A_PE_2_6_x049_empty_n fifo_status 0 1 }  { fifo_A_PE_2_6_x049_read fifo_update 1 1 } } }
	fifo_A_PE_2_7_x050 { ap_fifo {  { fifo_A_PE_2_7_x050_din fifo_data 1 256 }  { fifo_A_PE_2_7_x050_full_n fifo_status 0 1 }  { fifo_A_PE_2_7_x050_write fifo_update 1 1 } } }
	fifo_B_PE_2_6_x093 { ap_fifo {  { fifo_B_PE_2_6_x093_dout fifo_data 0 32 }  { fifo_B_PE_2_6_x093_empty_n fifo_status 0 1 }  { fifo_B_PE_2_6_x093_read fifo_update 1 1 } } }
	fifo_B_PE_3_6_x094 { ap_fifo {  { fifo_B_PE_3_6_x094_din fifo_data 1 32 }  { fifo_B_PE_3_6_x094_full_n fifo_status 0 1 }  { fifo_B_PE_3_6_x094_write fifo_update 1 1 } } }
	fifo_C_PE_2_6_x0133 { ap_fifo {  { fifo_C_PE_2_6_x0133_dout fifo_data 0 256 }  { fifo_C_PE_2_6_x0133_empty_n fifo_status 0 1 }  { fifo_C_PE_2_6_x0133_read fifo_update 1 1 } } }
	fifo_C_PE_3_6_x0134 { ap_fifo {  { fifo_C_PE_3_6_x0134_din fifo_data 1 256 }  { fifo_C_PE_3_6_x0134_full_n fifo_status 0 1 }  { fifo_C_PE_3_6_x0134_write fifo_update 1 1 } } }
	fifo_D_drain_PE_2_6_x0167 { ap_fifo {  { fifo_D_drain_PE_2_6_x0167_din fifo_data 1 32 }  { fifo_D_drain_PE_2_6_x0167_full_n fifo_status 0 1 }  { fifo_D_drain_PE_2_6_x0167_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_6_x0
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
set C_modelName {PE_wrapper_2_6_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_6_x049 int 256 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_7_x050 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_6_x093 int 32 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_6_x094 int 32 regular {fifo 1 volatile }  }
	{ fifo_C_PE_2_6_x0133 int 256 regular {fifo 0 volatile }  }
	{ fifo_C_PE_3_6_x0134 int 256 regular {fifo 1 volatile }  }
	{ fifo_D_drain_PE_2_6_x0167 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_6_x049", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_7_x050", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_6_x093", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_6_x094", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_PE_2_6_x0133", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_PE_3_6_x0134", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_PE_2_6_x0167", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_6_x049_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_A_PE_2_6_x049_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_6_x049_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_7_x050_din sc_out sc_lv 256 signal 1 } 
	{ fifo_A_PE_2_7_x050_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_7_x050_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_6_x093_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_B_PE_2_6_x093_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_6_x093_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_6_x094_din sc_out sc_lv 32 signal 3 } 
	{ fifo_B_PE_3_6_x094_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_6_x094_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_PE_2_6_x0133_dout sc_in sc_lv 256 signal 4 } 
	{ fifo_C_PE_2_6_x0133_empty_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_PE_2_6_x0133_read sc_out sc_logic 1 signal 4 } 
	{ fifo_C_PE_3_6_x0134_din sc_out sc_lv 256 signal 5 } 
	{ fifo_C_PE_3_6_x0134_full_n sc_in sc_logic 1 signal 5 } 
	{ fifo_C_PE_3_6_x0134_write sc_out sc_logic 1 signal 5 } 
	{ fifo_D_drain_PE_2_6_x0167_din sc_out sc_lv 32 signal 6 } 
	{ fifo_D_drain_PE_2_6_x0167_full_n sc_in sc_logic 1 signal 6 } 
	{ fifo_D_drain_PE_2_6_x0167_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_6_x049_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x049", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_6_x049_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x049", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_6_x049_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_6_x049", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_7_x050_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x050", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_7_x050_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x050", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_7_x050_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_7_x050", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_6_x093_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x093", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_6_x093_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x093", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_6_x093_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_6_x093", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_6_x094_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x094", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_6_x094_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x094", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_6_x094_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_6_x094", "role": "write" }} , 
 	{ "name": "fifo_C_PE_2_6_x0133_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_2_6_x0133", "role": "dout" }} , 
 	{ "name": "fifo_C_PE_2_6_x0133_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_6_x0133", "role": "empty_n" }} , 
 	{ "name": "fifo_C_PE_2_6_x0133_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_2_6_x0133", "role": "read" }} , 
 	{ "name": "fifo_C_PE_3_6_x0134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_C_PE_3_6_x0134", "role": "din" }} , 
 	{ "name": "fifo_C_PE_3_6_x0134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_6_x0134", "role": "full_n" }} , 
 	{ "name": "fifo_C_PE_3_6_x0134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_PE_3_6_x0134", "role": "write" }} , 
 	{ "name": "fifo_D_drain_PE_2_6_x0167_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_6_x0167", "role": "din" }} , 
 	{ "name": "fifo_D_drain_PE_2_6_x0167_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_6_x0167", "role": "full_n" }} , 
 	{ "name": "fifo_D_drain_PE_2_6_x0167_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_PE_2_6_x0167", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "PE_wrapper_2_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_6_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U774", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U775", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U776", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U777", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U778", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U779", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U780", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U781", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U782", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U783", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U784", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U785", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U786", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U787", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U788", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U789", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U790", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U791", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U792", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U793", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U794", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U795", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U796", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U797", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x049 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_7_x050 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_6_x093 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_6_x094 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_6_x0133 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_6_x0134 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_6_x0167 {Type O LastRead -1 FirstWrite 69}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "25170937"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "25170937"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_6_x049 { ap_fifo {  { fifo_A_PE_2_6_x049_dout fifo_data 0 256 }  { fifo_A_PE_2_6_x049_empty_n fifo_status 0 1 }  { fifo_A_PE_2_6_x049_read fifo_update 1 1 } } }
	fifo_A_PE_2_7_x050 { ap_fifo {  { fifo_A_PE_2_7_x050_din fifo_data 1 256 }  { fifo_A_PE_2_7_x050_full_n fifo_status 0 1 }  { fifo_A_PE_2_7_x050_write fifo_update 1 1 } } }
	fifo_B_PE_2_6_x093 { ap_fifo {  { fifo_B_PE_2_6_x093_dout fifo_data 0 32 }  { fifo_B_PE_2_6_x093_empty_n fifo_status 0 1 }  { fifo_B_PE_2_6_x093_read fifo_update 1 1 } } }
	fifo_B_PE_3_6_x094 { ap_fifo {  { fifo_B_PE_3_6_x094_din fifo_data 1 32 }  { fifo_B_PE_3_6_x094_full_n fifo_status 0 1 }  { fifo_B_PE_3_6_x094_write fifo_update 1 1 } } }
	fifo_C_PE_2_6_x0133 { ap_fifo {  { fifo_C_PE_2_6_x0133_dout fifo_data 0 256 }  { fifo_C_PE_2_6_x0133_empty_n fifo_status 0 1 }  { fifo_C_PE_2_6_x0133_read fifo_update 1 1 } } }
	fifo_C_PE_3_6_x0134 { ap_fifo {  { fifo_C_PE_3_6_x0134_din fifo_data 1 256 }  { fifo_C_PE_3_6_x0134_full_n fifo_status 0 1 }  { fifo_C_PE_3_6_x0134_write fifo_update 1 1 } } }
	fifo_D_drain_PE_2_6_x0167 { ap_fifo {  { fifo_D_drain_PE_2_6_x0167_din fifo_data 1 32 }  { fifo_D_drain_PE_2_6_x0167_full_n fifo_status 0 1 }  { fifo_D_drain_PE_2_6_x0167_write fifo_update 1 1 } } }
}
