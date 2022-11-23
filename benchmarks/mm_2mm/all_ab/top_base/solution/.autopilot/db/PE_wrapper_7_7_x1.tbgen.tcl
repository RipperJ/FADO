set moduleName PE_wrapper_7_7_x1
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
set C_modelName {PE_wrapper_7_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_7_x198 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_8_x199 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_7_x1170 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_7_x1171 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_7_x1235 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_7_x198", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_8_x199", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_7_x1170", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_7_x1171", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_7_x1235", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_7_x198_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_7_x198_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_7_x198_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_8_x199_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_8_x199_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_8_x199_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_7_x1170_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_7_x1170_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_7_x1170_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_7_x1171_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_7_x1171_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_7_x1171_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_7_x1235_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_7_x1235_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_7_x1235_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_7_x198_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x198", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_7_x198_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x198", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_7_x198_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x198", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_8_x199_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x199", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_8_x199_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x199", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_8_x199_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x199", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_7_x1170_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1170", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_7_x1170_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1170", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_7_x1170_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1170", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_7_x1171_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1171", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_7_x1171_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1171", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_7_x1171_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1171", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1235_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1235", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1235_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1235", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1235_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1235", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_7_x1",
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
			{"Name" : "fifo_A_PE_7_7_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x1170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x1170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x1171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x1171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x1235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x1235_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1446", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_7_x1 {
		fifo_A_PE_7_7_x198 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_8_x199 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_7_x1170 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_7_x1171 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_7_x1235 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_7_x198 { ap_fifo {  { fifo_A_PE_7_7_x198_dout fifo_data 0 512 }  { fifo_A_PE_7_7_x198_empty_n fifo_status 0 1 }  { fifo_A_PE_7_7_x198_read fifo_update 1 1 } } }
	fifo_A_PE_7_8_x199 { ap_fifo {  { fifo_A_PE_7_8_x199_din fifo_data 1 512 }  { fifo_A_PE_7_8_x199_full_n fifo_status 0 1 }  { fifo_A_PE_7_8_x199_write fifo_update 1 1 } } }
	fifo_B_PE_7_7_x1170 { ap_fifo {  { fifo_B_PE_7_7_x1170_dout fifo_data 0 512 }  { fifo_B_PE_7_7_x1170_empty_n fifo_status 0 1 }  { fifo_B_PE_7_7_x1170_read fifo_update 1 1 } } }
	fifo_B_PE_8_7_x1171 { ap_fifo {  { fifo_B_PE_8_7_x1171_din fifo_data 1 512 }  { fifo_B_PE_8_7_x1171_full_n fifo_status 0 1 }  { fifo_B_PE_8_7_x1171_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_7_x1235 { ap_fifo {  { fifo_C_drain_PE_7_7_x1235_din fifo_data 1 16 }  { fifo_C_drain_PE_7_7_x1235_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_7_x1235_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_7_7_x1
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
set C_modelName {PE_wrapper_7_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_7_x190 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_8_x191 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_7_x1162 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_7_x1163 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_7_x1227 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_7_x190", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_8_x191", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_7_x1162", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_7_x1163", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_7_x1227", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_7_x190_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_7_x190_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_7_x190_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_8_x191_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_8_x191_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_8_x191_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_7_x1162_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_7_x1162_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_7_x1162_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_7_x1163_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_7_x1163_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_7_x1163_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_7_x1227_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_7_x1227_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_7_x1227_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_7_x1",
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
			{"Name" : "fifo_A_PE_7_7_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x1162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x1162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x1163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x1163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x1227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x1227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U1438", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_7_x1 {
		fifo_A_PE_7_7_x190 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_8_x191 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_7_x1162 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_7_x1163 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_7_x1227 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129122849", "Max" : "129122849"}
	, {"Name" : "Interval", "Min" : "129122849", "Max" : "129122849"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_7_x190 { ap_fifo {  { fifo_A_PE_7_7_x190_dout fifo_data 0 512 }  { fifo_A_PE_7_7_x190_empty_n fifo_status 0 1 }  { fifo_A_PE_7_7_x190_read fifo_update 1 1 } } }
	fifo_A_PE_7_8_x191 { ap_fifo {  { fifo_A_PE_7_8_x191_din fifo_data 1 512 }  { fifo_A_PE_7_8_x191_full_n fifo_status 0 1 }  { fifo_A_PE_7_8_x191_write fifo_update 1 1 } } }
	fifo_B_PE_7_7_x1162 { ap_fifo {  { fifo_B_PE_7_7_x1162_dout fifo_data 0 512 }  { fifo_B_PE_7_7_x1162_empty_n fifo_status 0 1 }  { fifo_B_PE_7_7_x1162_read fifo_update 1 1 } } }
	fifo_B_PE_8_7_x1163 { ap_fifo {  { fifo_B_PE_8_7_x1163_din fifo_data 1 512 }  { fifo_B_PE_8_7_x1163_full_n fifo_status 0 1 }  { fifo_B_PE_8_7_x1163_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_7_x1227 { ap_fifo {  { fifo_C_drain_PE_7_7_x1227_din fifo_data 1 16 }  { fifo_C_drain_PE_7_7_x1227_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_7_x1227_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_7_7_x1
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
set C_modelName {PE_wrapper_7_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_7_x190 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_8_x191 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_7_x1162 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_7_x1163 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_7_x1227 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_7_x190", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_8_x191", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_7_x1162", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_7_x1163", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_7_x1227", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_7_x190_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_7_x190_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_7_x190_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_8_x191_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_8_x191_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_8_x191_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_7_x1162_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_7_x1162_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_7_x1162_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_7_x1163_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_7_x1163_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_7_x1163_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_7_x1227_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_7_x1227_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_7_x1227_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65011713", "EstimateLatencyMax" : "65011713",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_7_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x1162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x1162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x1163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x1163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x1227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x1227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3551", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_7_x1 {
		fifo_A_PE_7_7_x190 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_7_8_x191 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_7_7_x1162 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_8_7_x1163 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_7_7_x1227 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_7_x190 { ap_fifo {  { fifo_A_PE_7_7_x190_dout fifo_data 0 512 }  { fifo_A_PE_7_7_x190_empty_n fifo_status 0 1 }  { fifo_A_PE_7_7_x190_read fifo_update 1 1 } } }
	fifo_A_PE_7_8_x191 { ap_fifo {  { fifo_A_PE_7_8_x191_din fifo_data 1 512 }  { fifo_A_PE_7_8_x191_full_n fifo_status 0 1 }  { fifo_A_PE_7_8_x191_write fifo_update 1 1 } } }
	fifo_B_PE_7_7_x1162 { ap_fifo {  { fifo_B_PE_7_7_x1162_dout fifo_data 0 512 }  { fifo_B_PE_7_7_x1162_empty_n fifo_status 0 1 }  { fifo_B_PE_7_7_x1162_read fifo_update 1 1 } } }
	fifo_B_PE_8_7_x1163 { ap_fifo {  { fifo_B_PE_8_7_x1163_din fifo_data 1 512 }  { fifo_B_PE_8_7_x1163_full_n fifo_status 0 1 }  { fifo_B_PE_8_7_x1163_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_7_x1227 { ap_fifo {  { fifo_C_drain_PE_7_7_x1227_din fifo_data 1 16 }  { fifo_C_drain_PE_7_7_x1227_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_7_x1227_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper_7_7_x1
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
set C_modelName {PE_wrapper_7_7_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_7_7_x190 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_7_8_x191 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_7_7_x1162 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_8_7_x1163 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_7_7_x1227 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_7_7_x190", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_7_8_x191", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_7_7_x1162", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_8_7_x1163", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_7_7_x1227", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_7_7_x190_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_7_7_x190_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_7_x190_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_7_8_x191_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_7_8_x191_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_7_8_x191_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_7_7_x1162_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_7_7_x1162_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_7_7_x1162_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_8_7_x1163_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_8_7_x1163_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_8_7_x1163_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_7_7_x1227_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_7_7_x1227_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_7_7_x1227_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_7_7_x190_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_7_x190", "role": "read" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "din" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_7_8_x191_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_7_8_x191", "role": "write" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_7_7_x1162_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_7_7_x1162", "role": "read" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "din" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_8_7_x1163_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_8_7_x1163", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_7_7_x1227_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_7_7_x1227", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "PE_wrapper_7_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65011713", "EstimateLatencyMax" : "65011713",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_7_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x1162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x1162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x1163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x1163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x1227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x1227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U3551", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper_7_7_x1 {
		fifo_A_PE_7_7_x190 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_7_8_x191 {Type O LastRead -1 FirstWrite 25}
		fifo_B_PE_7_7_x1162 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_8_7_x1163 {Type O LastRead -1 FirstWrite 25}
		fifo_C_drain_PE_7_7_x1227 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65011713", "Max" : "65011713"}
	, {"Name" : "Interval", "Min" : "65011713", "Max" : "65011713"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	fifo_A_PE_7_7_x190 { ap_fifo {  { fifo_A_PE_7_7_x190_dout fifo_data 0 512 }  { fifo_A_PE_7_7_x190_empty_n fifo_status 0 1 }  { fifo_A_PE_7_7_x190_read fifo_update 1 1 } } }
	fifo_A_PE_7_8_x191 { ap_fifo {  { fifo_A_PE_7_8_x191_din fifo_data 1 512 }  { fifo_A_PE_7_8_x191_full_n fifo_status 0 1 }  { fifo_A_PE_7_8_x191_write fifo_update 1 1 } } }
	fifo_B_PE_7_7_x1162 { ap_fifo {  { fifo_B_PE_7_7_x1162_dout fifo_data 0 512 }  { fifo_B_PE_7_7_x1162_empty_n fifo_status 0 1 }  { fifo_B_PE_7_7_x1162_read fifo_update 1 1 } } }
	fifo_B_PE_8_7_x1163 { ap_fifo {  { fifo_B_PE_8_7_x1163_din fifo_data 1 512 }  { fifo_B_PE_8_7_x1163_full_n fifo_status 0 1 }  { fifo_B_PE_8_7_x1163_write fifo_update 1 1 } } }
	fifo_C_drain_PE_7_7_x1227 { ap_fifo {  { fifo_C_drain_PE_7_7_x1227_din fifo_data 1 16 }  { fifo_C_drain_PE_7_7_x1227_full_n fifo_status 0 1 }  { fifo_C_drain_PE_7_7_x1227_write fifo_update 1 1 } } }
}
