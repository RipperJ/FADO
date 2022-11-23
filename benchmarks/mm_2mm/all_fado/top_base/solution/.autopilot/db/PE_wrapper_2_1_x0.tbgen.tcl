set moduleName PE_wrapper_2_1_x0
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
set C_modelName {PE_wrapper_2_1_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_1_x047 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_2_x048 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_1_x0111 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_1_x0112 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_1_x0182 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_1_x047", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_2_x048", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_1_x0111", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_1_x0112", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_1_x0182", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_1_x047_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_1_x047_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_1_x047_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_2_x048_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_2_x048_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_2_x048_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_1_x0111_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_1_x0111_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_1_x0111_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_1_x0112_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_1_x0112_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_1_x0112_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_1_x0182_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_1_x0182_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_1_x0182_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_1_x047_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_1_x047", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_1_x047_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_1_x047", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_1_x047_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_1_x047", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_2_x048_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_2_x048", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_2_x048_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_2_x048", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_2_x048_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_2_x048", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_1_x0111_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x0111", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_1_x0111_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x0111", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_1_x0111_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x0111", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_1_x0112_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x0112", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_1_x0112_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x0112", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_1_x0112_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x0112", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_1_x0182_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_1_x0182", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_1_x0182_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_1_x0182", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_1_x0182_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_1_x0182", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_1_x0",
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
			{"Name" : "fifo_A_PE_2_1_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U179", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x047 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_2_x048 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_1_x0111 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_1_x0112 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_1_x0182 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_1_x047 { ap_fifo {  { fifo_A_PE_2_1_x047_dout fifo_data 0 512 }  { fifo_A_PE_2_1_x047_empty_n fifo_status 0 1 }  { fifo_A_PE_2_1_x047_read fifo_update 1 1 } } }
	fifo_A_PE_2_2_x048 { ap_fifo {  { fifo_A_PE_2_2_x048_din fifo_data 1 512 }  { fifo_A_PE_2_2_x048_full_n fifo_status 0 1 }  { fifo_A_PE_2_2_x048_write fifo_update 1 1 } } }
	fifo_B_PE_2_1_x0111 { ap_fifo {  { fifo_B_PE_2_1_x0111_dout fifo_data 0 512 }  { fifo_B_PE_2_1_x0111_empty_n fifo_status 0 1 }  { fifo_B_PE_2_1_x0111_read fifo_update 1 1 } } }
	fifo_B_PE_3_1_x0112 { ap_fifo {  { fifo_B_PE_3_1_x0112_din fifo_data 1 512 }  { fifo_B_PE_3_1_x0112_full_n fifo_status 0 1 }  { fifo_B_PE_3_1_x0112_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_1_x0182 { ap_fifo {  { fifo_C_drain_PE_2_1_x0182_din fifo_data 1 16 }  { fifo_C_drain_PE_2_1_x0182_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_1_x0182_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_2_1_x0
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
set C_modelName {PE_wrapper_2_1_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_2_1_x039 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_2_2_x040 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_2_1_x0103 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_3_1_x0104 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_2_1_x0174 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_2_1_x039", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_2_2_x040", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_2_1_x0103", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_3_1_x0104", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_2_1_x0174", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_2_1_x039_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_2_1_x039_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_1_x039_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_2_2_x040_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_2_2_x040_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_2_2_x040_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_2_1_x0103_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_2_1_x0103_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_2_1_x0103_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_3_1_x0104_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_3_1_x0104_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_3_1_x0104_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_2_1_x0174_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_2_1_x0174_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_2_1_x0174_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_2_1_x039_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_1_x039", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_2_1_x039_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_1_x039", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_2_1_x039_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_1_x039", "role": "read" }} , 
 	{ "name": "fifo_A_PE_2_2_x040_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_2_2_x040", "role": "din" }} , 
 	{ "name": "fifo_A_PE_2_2_x040_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_2_x040", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_2_2_x040_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_2_2_x040", "role": "write" }} , 
 	{ "name": "fifo_B_PE_2_1_x0103_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x0103", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_2_1_x0103_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x0103", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_2_1_x0103_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_2_1_x0103", "role": "read" }} , 
 	{ "name": "fifo_B_PE_3_1_x0104_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x0104", "role": "din" }} , 
 	{ "name": "fifo_B_PE_3_1_x0104_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x0104", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_3_1_x0104_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_3_1_x0104", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_2_1_x0174_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_1_x0174", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_2_1_x0174_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_1_x0174", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_2_1_x0174_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_2_1_x0174", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_2_1_x0",
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
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U179", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x039 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_2_x040 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_1_x0103 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_1_x0104 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_1_x0174 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_2_1_x039 { ap_fifo {  { fifo_A_PE_2_1_x039_dout fifo_data 0 512 }  { fifo_A_PE_2_1_x039_empty_n fifo_status 0 1 }  { fifo_A_PE_2_1_x039_read fifo_update 1 1 } } }
	fifo_A_PE_2_2_x040 { ap_fifo {  { fifo_A_PE_2_2_x040_din fifo_data 1 512 }  { fifo_A_PE_2_2_x040_full_n fifo_status 0 1 }  { fifo_A_PE_2_2_x040_write fifo_update 1 1 } } }
	fifo_B_PE_2_1_x0103 { ap_fifo {  { fifo_B_PE_2_1_x0103_dout fifo_data 0 512 }  { fifo_B_PE_2_1_x0103_empty_n fifo_status 0 1 }  { fifo_B_PE_2_1_x0103_read fifo_update 1 1 } } }
	fifo_B_PE_3_1_x0104 { ap_fifo {  { fifo_B_PE_3_1_x0104_din fifo_data 1 512 }  { fifo_B_PE_3_1_x0104_full_n fifo_status 0 1 }  { fifo_B_PE_3_1_x0104_write fifo_update 1 1 } } }
	fifo_C_drain_PE_2_1_x0174 { ap_fifo {  { fifo_C_drain_PE_2_1_x0174_din fifo_data 1 16 }  { fifo_C_drain_PE_2_1_x0174_full_n fifo_status 0 1 }  { fifo_C_drain_PE_2_1_x0174_write fifo_update 1 1 } } }
}
