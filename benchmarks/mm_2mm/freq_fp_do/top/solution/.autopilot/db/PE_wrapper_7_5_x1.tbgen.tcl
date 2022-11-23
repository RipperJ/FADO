set moduleName PE_wrapper_7_5_x1
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
set C_modelName {PE_wrapper_7_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_5_x196 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_6_x197 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_5_x1152 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_5_x1153 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_5_x1219 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_5_x196", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_6_x197", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_5_x1152", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_5_x1153", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_5_x1219", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_5_x196_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_5_x196_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_5_x196_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_6_x197_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_6_x197_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_6_x197_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_5_x1152_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_5_x1152_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_5_x1152_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_5_x1153_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_5_x1153_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_5_x1153_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_5_x1219_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_5_x1219_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_5_x1219_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_5_x196_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x196", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_5_x196_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x196", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_5_x196_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x196", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_6_x197_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x197", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_6_x197_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x197", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_6_x197_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x197", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_5_x1152_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1152", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_5_x1152_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1152", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_5_x1152_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1152", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_5_x1153_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1153", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_5_x1153_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1153", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_5_x1153_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1153", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1219_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1219", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1219_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1219", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1219_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1219", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_5_x1",
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
			{"Name" : "fifo_A_PE_7_5_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_6_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x1152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x1152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_5_x1153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x1153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x1219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x1219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1434", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_5_x1 {
		fifo_A_PE_7_5_x196 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_6_x197 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_5_x1152 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_5_x1153 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_5_x1219 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_5_x196 { ap_fifo {  { fifo_A_PE_7_5_x196_dout fifo_data 0 512 }  { fifo_A_PE_7_5_x196_empty_n fifo_status 0 1 }  { fifo_A_PE_7_5_x196_read fifo_update 1 1 } } }
	fifo_A_PE_7_6_x197 { ap_fifo {  { fifo_A_PE_7_6_x197_din fifo_data 1 512 }  { fifo_A_PE_7_6_x197_full_n fifo_status 0 1 }  { fifo_A_PE_7_6_x197_write fifo_update 1 1 } } }
	fifo_B_PE_7_5_x1152 { ap_fifo {  { fifo_B_PE_7_5_x1152_dout fifo_data 0 512 }  { fifo_B_PE_7_5_x1152_empty_n fifo_status 0 1 }  { fifo_B_PE_7_5_x1152_read fifo_update 1 1 } } }
	fifo_B_PE_8_5_x1153 { ap_fifo {  { fifo_B_PE_8_5_x1153_din fifo_data 1 512 }  { fifo_B_PE_8_5_x1153_full_n fifo_status 0 1 }  { fifo_B_PE_8_5_x1153_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_5_x1219 { ap_fifo {  { fifo_C_drain_PE_7_5_x1219_din fifo_data 1 16 }  { fifo_C_drain_PE_7_5_x1219_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_5_x1219_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_7_5_x1
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
set C_modelName {PE_wrapper_7_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_5_x188 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_6_x189 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_5_x1144 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_5_x1145 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_5_x1211 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_5_x188", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_6_x189", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_5_x1144", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_5_x1145", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_5_x1211", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_5_x188_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_5_x188_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_5_x188_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_6_x189_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_6_x189_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_6_x189_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_5_x1144_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_5_x1144_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_5_x1144_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_5_x1145_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_5_x1145_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_5_x1145_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_5_x1211_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_5_x1211_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_5_x1211_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_5_x188_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x188", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_5_x188_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x188", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_5_x188_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x188", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_6_x189_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x189", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_6_x189_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x189", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_6_x189_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x189", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_5_x1145_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1145", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_5_x1145_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1145", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_5_x1145_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1145", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1211_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1211", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1211_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1211", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1211_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1211", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_5_x1",
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
			{"Name" : "fifo_A_PE_7_5_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_6_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x1144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x1144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_5_x1145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x1145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x1211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x1211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1426", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_5_x1 {
		fifo_A_PE_7_5_x188 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_6_x189 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_5_x1144 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_5_x1145 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_5_x1211 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_5_x188 { ap_fifo {  { fifo_A_PE_7_5_x188_dout fifo_data 0 512 }  { fifo_A_PE_7_5_x188_empty_n fifo_status 0 1 }  { fifo_A_PE_7_5_x188_read fifo_update 1 1 } } }
	fifo_A_PE_7_6_x189 { ap_fifo {  { fifo_A_PE_7_6_x189_din fifo_data 1 512 }  { fifo_A_PE_7_6_x189_full_n fifo_status 0 1 }  { fifo_A_PE_7_6_x189_write fifo_update 1 1 } } }
	fifo_B_PE_7_5_x1144 { ap_fifo {  { fifo_B_PE_7_5_x1144_dout fifo_data 0 512 }  { fifo_B_PE_7_5_x1144_empty_n fifo_status 0 1 }  { fifo_B_PE_7_5_x1144_read fifo_update 1 1 } } }
	fifo_B_PE_8_5_x1145 { ap_fifo {  { fifo_B_PE_8_5_x1145_din fifo_data 1 512 }  { fifo_B_PE_8_5_x1145_full_n fifo_status 0 1 }  { fifo_B_PE_8_5_x1145_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_5_x1211 { ap_fifo {  { fifo_C_drain_PE_7_5_x1211_din fifo_data 1 16 }  { fifo_C_drain_PE_7_5_x1211_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_5_x1211_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_7_5_x1
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
set C_modelName {PE_wrapper_7_5_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_5_x188 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_6_x189 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_5_x1144 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_5_x1145 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_5_x1211 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_5_x188", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_6_x189", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_5_x1144", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_5_x1145", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_5_x1211", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_5_x188_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_5_x188_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_5_x188_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_6_x189_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_6_x189_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_6_x189_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_5_x1144_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_5_x1144_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_5_x1144_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_5_x1145_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_5_x1145_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_5_x1145_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_5_x1211_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_5_x1211_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_5_x1211_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_5_x188_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x188", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_5_x188_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x188", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_5_x188_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_5_x188", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_6_x189_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x189", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_6_x189_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x189", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_6_x189_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_6_x189", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_5_x1144_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_5_x1144", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_5_x1145_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1145", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_5_x1145_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1145", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_5_x1145_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_5_x1145", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1211_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1211", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1211_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1211", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_5_x1211_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_5_x1211", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_5_x1",
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
			{"Name" : "fifo_A_PE_7_5_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_6_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x1144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x1144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_5_x1145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x1145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x1211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x1211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1437", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_5_x1 {
		fifo_A_PE_7_5_x188 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_6_x189 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_5_x1144 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_5_x1145 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_5_x1211 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_5_x188 { ap_fifo {  { fifo_A_PE_7_5_x188_dout fifo_data 0 512 }  { fifo_A_PE_7_5_x188_empty_n fifo_status 0 1 }  { fifo_A_PE_7_5_x188_read fifo_update 1 1 } } }
	fifo_A_PE_7_6_x189 { ap_fifo {  { fifo_A_PE_7_6_x189_din fifo_data 1 512 }  { fifo_A_PE_7_6_x189_full_n fifo_status 0 1 }  { fifo_A_PE_7_6_x189_write fifo_update 1 1 } } }
	fifo_B_PE_7_5_x1144 { ap_fifo {  { fifo_B_PE_7_5_x1144_dout fifo_data 0 512 }  { fifo_B_PE_7_5_x1144_empty_n fifo_status 0 1 }  { fifo_B_PE_7_5_x1144_read fifo_update 1 1 } } }
	fifo_B_PE_8_5_x1145 { ap_fifo {  { fifo_B_PE_8_5_x1145_din fifo_data 1 512 }  { fifo_B_PE_8_5_x1145_full_n fifo_status 0 1 }  { fifo_B_PE_8_5_x1145_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_5_x1211 { ap_fifo {  { fifo_C_drain_PE_7_5_x1211_din fifo_data 1 16 }  { fifo_C_drain_PE_7_5_x1211_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_5_x1211_write fifo_update 1 1 } } }
}
