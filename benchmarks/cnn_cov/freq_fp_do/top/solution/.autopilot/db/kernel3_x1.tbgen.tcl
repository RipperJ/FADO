set moduleName kernel3_x1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {kernel3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ B int 503 regular {array 4096 { 1 1 } 1 1 }  }
	{ C int 512 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "B", "interface" : "memory", "bitwidth" : 503, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ B_address0 sc_out sc_lv 12 signal 0 } 
	{ B_ce0 sc_out sc_logic 1 signal 0 } 
	{ B_d0 sc_out sc_lv 503 signal 0 } 
	{ B_q0 sc_in sc_lv 503 signal 0 } 
	{ B_we0 sc_out sc_logic 1 signal 0 } 
	{ B_address1 sc_out sc_lv 12 signal 0 } 
	{ B_ce1 sc_out sc_logic 1 signal 0 } 
	{ B_d1 sc_out sc_lv 503 signal 0 } 
	{ B_q1 sc_in sc_lv 503 signal 0 } 
	{ B_we1 sc_out sc_logic 1 signal 0 } 
	{ C_address0 sc_out sc_lv 12 signal 1 } 
	{ C_ce0 sc_out sc_logic 1 signal 1 } 
	{ C_d0 sc_out sc_lv 512 signal 1 } 
	{ C_q0 sc_in sc_lv 512 signal 1 } 
	{ C_we0 sc_out sc_logic 1 signal 1 } 
	{ C_address1 sc_out sc_lv 12 signal 1 } 
	{ C_ce1 sc_out sc_logic 1 signal 1 } 
	{ C_d1 sc_out sc_lv 512 signal 1 } 
	{ C_q1 sc_in sc_lv 512 signal 1 } 
	{ C_we1 sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":503, "type": "signal", "bundle":{"name": "B", "role": "d0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":503, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":503, "type": "signal", "bundle":{"name": "B", "role": "d1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":503, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
 	{ "name": "B_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we1" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "d1" }} , 
 	{ "name": "C_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "q1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "31", "33", "35", "41", "47", "53", "59", "65", "71", "77", "83", "89", "95", "101", "107", "113", "119", "125", "131", "137", "143", "149", "155", "161", "167", "173", "179", "185", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "209", "212", "215", "218", "221", "224", "227", "230", "233", "236", "239", "242", "245", "248", "251", "254", "257", "260", "263", "266", "269", "272", "275", "278", "281", "284", "285", "286", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423"],
		"CDFG" : "kernel3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232493", "EstimateLatencyMax" : "4232493",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "A_IO_L3_in_x1_U0"},
			{"ID" : "30", "Name" : "B_IO_L3_in_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "191", "Name" : "A_PE_dummy_0_x1_U0"},
			{"ID" : "192", "Name" : "A_PE_dummy_1_x1_U0"},
			{"ID" : "193", "Name" : "A_PE_dummy_2_x1_U0"},
			{"ID" : "194", "Name" : "A_PE_dummy_3_x1_U0"},
			{"ID" : "195", "Name" : "A_PE_dummy_4_x1_U0"},
			{"ID" : "196", "Name" : "A_PE_dummy_5_x1_U0"},
			{"ID" : "197", "Name" : "A_PE_dummy_6_x1_U0"},
			{"ID" : "198", "Name" : "A_PE_dummy_7_x1_U0"},
			{"ID" : "199", "Name" : "A_PE_dummy_8_x1_U0"},
			{"ID" : "200", "Name" : "A_PE_dummy_9_x1_U0"},
			{"ID" : "201", "Name" : "A_PE_dummy_10_x1_U0"},
			{"ID" : "202", "Name" : "A_PE_dummy_11_x1_U0"},
			{"ID" : "203", "Name" : "A_PE_dummy_12_x1_U0"},
			{"ID" : "204", "Name" : "B_PE_dummy_0_x1_U0"},
			{"ID" : "205", "Name" : "B_PE_dummy_1_x1_U0"},
			{"ID" : "286", "Name" : "C_drain_IO_L3_out_x1_U0"}],
		"Port" : [
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "A_IO_L3_in_x1_U0", "Port" : "A"},
					{"ID" : "30", "SubInstance" : "B_IO_L3_in_x1_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "C_drain_IO_L3_out_x1_U0", "Port" : "C"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "A_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10241", "EstimateLatencyMax" : "10241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0.add_12ns_12ns_12_1_1_U500", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0.add_2ns_2ns_2_1_1_U501", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "A_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83452", "EstimateLatencyMax" : "83452",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "A_IO_L2_in_1_x1",
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "A_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81336", "EstimateLatencyMax" : "81336",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "A_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80278", "EstimateLatencyMax" : "80278",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x1_U0.local_A_pong_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "A_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79220", "EstimateLatencyMax" : "79220",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x1_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "A_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "78162", "EstimateLatencyMax" : "78162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x1_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "A_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "77104", "EstimateLatencyMax" : "77104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x1_U0.local_A_pong_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x1_U0", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "A_IO_L2_in_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "76046", "EstimateLatencyMax" : "76046",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "119", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x1_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x1_U0", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "A_IO_L2_in_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "74988", "EstimateLatencyMax" : "74988",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "131", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x1_U0.local_A_pong_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x1_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "A_IO_L2_in_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73930", "EstimateLatencyMax" : "73930",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x1_U0.local_A_pong_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x1_U0", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "A_IO_L2_in_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72872", "EstimateLatencyMax" : "72872",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x1_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x1_U0", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "A_IO_L2_in_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71814", "EstimateLatencyMax" : "71814",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x1_U0.local_A_pong_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "A_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70754", "EstimateLatencyMax" : "70754",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10241", "EstimateLatencyMax" : "10241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x1_U0", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "B_IO_L2_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47430", "EstimateLatencyMax" : "47430",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x1_U0.local_B_pong_V_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "B_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43202", "EstimateLatencyMax" : "43202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40"],
		"CDFG" : "PE_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_A_0_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_B_0_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_C_U", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U551", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U552", "Parent" : "35"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46"],
		"CDFG" : "PE_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "281", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_A_0_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_B_0_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_C_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U558", "Parent" : "41"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U559", "Parent" : "41"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["48", "49", "50", "51", "52"],
		"CDFG" : "PE_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_A_0_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_B_0_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_C_U", "Parent" : "47"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U565", "Parent" : "47"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U566", "Parent" : "47"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58"],
		"CDFG" : "PE_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_A_0_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_B_0_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_C_U", "Parent" : "53"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U572", "Parent" : "53"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U573", "Parent" : "53"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["60", "61", "62", "63", "64"],
		"CDFG" : "PE_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_A_0_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_B_0_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_C_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U579", "Parent" : "59"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U580", "Parent" : "59"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["66", "67", "68", "69", "70"],
		"CDFG" : "PE_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_A_0_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_B_0_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_C_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U586", "Parent" : "65"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U587", "Parent" : "65"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["72", "73", "74", "75", "76"],
		"CDFG" : "PE_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "233", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_A_0_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_B_0_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_C_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U593", "Parent" : "71"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U594", "Parent" : "71"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["78", "79", "80", "81", "82"],
		"CDFG" : "PE_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_A_0_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_B_0_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_C_U", "Parent" : "77"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U600", "Parent" : "77"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U601", "Parent" : "77"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0", "Parent" : "0", "Child" : ["84", "85", "86", "87", "88"],
		"CDFG" : "PE_wrapper_4_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.local_A_0_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.local_B_0_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.local_C_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U607", "Parent" : "83"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U608", "Parent" : "83"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0", "Parent" : "0", "Child" : ["90", "91", "92", "93", "94"],
		"CDFG" : "PE_wrapper_4_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.local_A_0_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.local_B_0_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.local_C_U", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U614", "Parent" : "89"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U615", "Parent" : "89"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0", "Parent" : "0", "Child" : ["96", "97", "98", "99", "100"],
		"CDFG" : "PE_wrapper_5_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.local_A_0_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.local_B_0_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.local_C_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U621", "Parent" : "95"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U622", "Parent" : "95"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0", "Parent" : "0", "Child" : ["102", "103", "104", "105", "106"],
		"CDFG" : "PE_wrapper_5_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.local_A_0_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.local_B_0_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.local_C_U", "Parent" : "101"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U628", "Parent" : "101"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U629", "Parent" : "101"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0", "Parent" : "0", "Child" : ["108", "109", "110", "111", "112"],
		"CDFG" : "PE_wrapper_6_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "119", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.local_A_0_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.local_B_0_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.local_C_U", "Parent" : "107"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U635", "Parent" : "107"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U636", "Parent" : "107"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0", "Parent" : "0", "Child" : ["114", "115", "116", "117", "118"],
		"CDFG" : "PE_wrapper_6_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "263", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.local_A_0_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.local_B_0_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.local_C_U", "Parent" : "113"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U642", "Parent" : "113"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U643", "Parent" : "113"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0", "Parent" : "0", "Child" : ["120", "121", "122", "123", "124"],
		"CDFG" : "PE_wrapper_7_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "131", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "221", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.local_A_0_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.local_B_0_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.local_C_U", "Parent" : "119"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U649", "Parent" : "119"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U650", "Parent" : "119"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0", "Parent" : "0", "Child" : ["126", "127", "128", "129", "130"],
		"CDFG" : "PE_wrapper_7_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.local_A_0_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.local_B_0_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.local_C_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U656", "Parent" : "125"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U657", "Parent" : "125"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0", "Parent" : "0", "Child" : ["132", "133", "134", "135", "136"],
		"CDFG" : "PE_wrapper_8_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.local_A_0_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.local_B_0_U", "Parent" : "131"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.local_C_U", "Parent" : "131"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U663", "Parent" : "131"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U664", "Parent" : "131"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0", "Parent" : "0", "Child" : ["138", "139", "140", "141", "142"],
		"CDFG" : "PE_wrapper_8_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "257", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.local_A_0_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.local_B_0_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.local_C_U", "Parent" : "137"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U670", "Parent" : "137"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U671", "Parent" : "137"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0", "Parent" : "0", "Child" : ["144", "145", "146", "147", "148"],
		"CDFG" : "PE_wrapper_9_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.local_A_0_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.local_B_0_U", "Parent" : "143"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.local_C_U", "Parent" : "143"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U677", "Parent" : "143"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U678", "Parent" : "143"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0", "Parent" : "0", "Child" : ["150", "151", "152", "153", "154"],
		"CDFG" : "PE_wrapper_9_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.local_A_0_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.local_B_0_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.local_C_U", "Parent" : "149"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U684", "Parent" : "149"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U685", "Parent" : "149"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0", "Parent" : "0", "Child" : ["156", "157", "158", "159", "160"],
		"CDFG" : "PE_wrapper_10_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.local_A_0_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.local_B_0_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.local_C_U", "Parent" : "155"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U691", "Parent" : "155"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U692", "Parent" : "155"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0", "Parent" : "0", "Child" : ["162", "163", "164", "165", "166"],
		"CDFG" : "PE_wrapper_10_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "251", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.local_A_0_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.local_B_0_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.local_C_U", "Parent" : "161"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U698", "Parent" : "161"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U699", "Parent" : "161"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0", "Parent" : "0", "Child" : ["168", "169", "170", "171", "172"],
		"CDFG" : "PE_wrapper_11_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.local_A_0_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.local_B_0_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.local_C_U", "Parent" : "167"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U705", "Parent" : "167"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U706", "Parent" : "167"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0", "Parent" : "0", "Child" : ["174", "175", "176", "177", "178"],
		"CDFG" : "PE_wrapper_11_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.local_A_0_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.local_B_0_U", "Parent" : "173"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.local_C_U", "Parent" : "173"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U712", "Parent" : "173"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U713", "Parent" : "173"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0", "Parent" : "0", "Child" : ["180", "181", "182", "183", "184"],
		"CDFG" : "PE_wrapper_12_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.local_A_0_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.local_B_0_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.local_C_U", "Parent" : "179"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U719", "Parent" : "179"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U720", "Parent" : "179"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0", "Parent" : "0", "Child" : ["186", "187", "188", "189", "190"],
		"CDFG" : "PE_wrapper_12_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232386", "EstimateLatencyMax" : "4232386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.local_A_0_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.local_B_0_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.local_C_U", "Parent" : "185"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U726", "Parent" : "185"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U727", "Parent" : "185"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_0_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_1_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_2_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_3_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_4_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_5_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_6_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_7_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_8_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_9_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_10_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_11_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_12_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_12_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_0_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_1_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36929", "EstimateLatencyMax" : "36929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0", "Parent" : "0", "Child" : ["207", "208"],
		"CDFG" : "C_drain_IO_L1_out_boundary_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8354", "EstimateLatencyMax" : "8354",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0.local_C_V_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0.buf_data_split_V_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0", "Parent" : "0", "Child" : ["210", "211"],
		"CDFG" : "C_drain_IO_L1_out_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10438", "EstimateLatencyMax" : "10438",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "206", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0.local_C_V_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0.buf_data_split_V_U", "Parent" : "209"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0", "Parent" : "0", "Child" : ["213", "214"],
		"CDFG" : "C_drain_IO_L1_out_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12008", "EstimateLatencyMax" : "12008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "209", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0.local_C_V_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0.buf_data_split_V_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0", "Parent" : "0", "Child" : ["216", "217"],
		"CDFG" : "C_drain_IO_L1_out_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13578", "EstimateLatencyMax" : "13578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0.local_C_V_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0.buf_data_split_V_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0", "Parent" : "0", "Child" : ["219", "220"],
		"CDFG" : "C_drain_IO_L1_out_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15148", "EstimateLatencyMax" : "15148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "221", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0.local_C_V_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0.buf_data_split_V_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0", "Parent" : "0", "Child" : ["222", "223"],
		"CDFG" : "C_drain_IO_L1_out_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16718", "EstimateLatencyMax" : "16718",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0.local_C_V_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0.buf_data_split_V_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0", "Parent" : "0", "Child" : ["225", "226"],
		"CDFG" : "C_drain_IO_L1_out_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18288", "EstimateLatencyMax" : "18288",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "221", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0.local_C_V_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0.buf_data_split_V_U", "Parent" : "224"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0", "Parent" : "0", "Child" : ["228", "229"],
		"CDFG" : "C_drain_IO_L1_out_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19858", "EstimateLatencyMax" : "19858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0.local_C_V_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0.buf_data_split_V_U", "Parent" : "227"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0", "Parent" : "0", "Child" : ["231", "232"],
		"CDFG" : "C_drain_IO_L1_out_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21428", "EstimateLatencyMax" : "21428",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "227", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "233", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0.local_C_V_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0.buf_data_split_V_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0", "Parent" : "0", "Child" : ["234", "235"],
		"CDFG" : "C_drain_IO_L1_out_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22998", "EstimateLatencyMax" : "22998",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0.local_C_V_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0.buf_data_split_V_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0", "Parent" : "0", "Child" : ["237", "238"],
		"CDFG" : "C_drain_IO_L1_out_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24568", "EstimateLatencyMax" : "24568",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "233", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0.local_C_V_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0.buf_data_split_V_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0", "Parent" : "0", "Child" : ["240", "241"],
		"CDFG" : "C_drain_IO_L1_out_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26138", "EstimateLatencyMax" : "26138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0.local_C_V_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0.buf_data_split_V_U", "Parent" : "239"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0", "Parent" : "0", "Child" : ["243", "244"],
		"CDFG" : "C_drain_IO_L1_out_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27708", "EstimateLatencyMax" : "27708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "239", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0.local_C_V_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0.buf_data_split_V_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0", "Parent" : "0", "Child" : ["246", "247"],
		"CDFG" : "C_drain_IO_L1_out_boundary_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8354", "EstimateLatencyMax" : "8354",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0.local_C_V_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0.buf_data_split_V_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0", "Parent" : "0", "Child" : ["249", "250"],
		"CDFG" : "C_drain_IO_L1_out_12_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10438", "EstimateLatencyMax" : "10438",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "251", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0.local_C_V_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0.buf_data_split_V_U", "Parent" : "248"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0", "Parent" : "0", "Child" : ["252", "253"],
		"CDFG" : "C_drain_IO_L1_out_13_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12008", "EstimateLatencyMax" : "12008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "248", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0.local_C_V_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0.buf_data_split_V_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0", "Parent" : "0", "Child" : ["255", "256"],
		"CDFG" : "C_drain_IO_L1_out_14_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13578", "EstimateLatencyMax" : "13578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "257", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0.local_C_V_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0.buf_data_split_V_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0", "Parent" : "0", "Child" : ["258", "259"],
		"CDFG" : "C_drain_IO_L1_out_15_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15148", "EstimateLatencyMax" : "15148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0.local_C_V_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0.buf_data_split_V_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0", "Parent" : "0", "Child" : ["261", "262"],
		"CDFG" : "C_drain_IO_L1_out_16_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16718", "EstimateLatencyMax" : "16718",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "257", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "263", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0.local_C_V_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0.buf_data_split_V_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0", "Parent" : "0", "Child" : ["264", "265"],
		"CDFG" : "C_drain_IO_L1_out_17_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18288", "EstimateLatencyMax" : "18288",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0.local_C_V_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0.buf_data_split_V_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0", "Parent" : "0", "Child" : ["267", "268"],
		"CDFG" : "C_drain_IO_L1_out_18_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19858", "EstimateLatencyMax" : "19858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "263", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0.local_C_V_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0.buf_data_split_V_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0", "Parent" : "0", "Child" : ["270", "271"],
		"CDFG" : "C_drain_IO_L1_out_19_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21428", "EstimateLatencyMax" : "21428",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0.local_C_V_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0.buf_data_split_V_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0", "Parent" : "0", "Child" : ["273", "274"],
		"CDFG" : "C_drain_IO_L1_out_20_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22998", "EstimateLatencyMax" : "22998",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0.local_C_V_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0.buf_data_split_V_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0", "Parent" : "0", "Child" : ["276", "277"],
		"CDFG" : "C_drain_IO_L1_out_21_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24568", "EstimateLatencyMax" : "24568",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0.local_C_V_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0.buf_data_split_V_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0", "Parent" : "0", "Child" : ["279", "280"],
		"CDFG" : "C_drain_IO_L1_out_22_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26138", "EstimateLatencyMax" : "26138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "281", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0.local_C_V_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0.buf_data_split_V_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0", "Parent" : "0", "Child" : ["282", "283"],
		"CDFG" : "C_drain_IO_L1_out_23_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27708", "EstimateLatencyMax" : "27708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "278", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0.local_C_V_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0.buf_data_split_V_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x1_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13755", "EstimateLatencyMax" : "13755",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "281", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_x1_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27513", "EstimateLatencyMax" : "27513",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x1_U0", "Parent" : "0", "Child" : ["287"],
		"CDFG" : "C_drain_IO_L3_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45057", "EstimateLatencyMax" : "45057",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "285", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x1_U0.mem_data_split_V_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_8_x1_U", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_9_x1_U", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_10_x1_U", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_11_x1_U", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_12_x1_U", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x1_U", "Parent" : "0"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x1_U", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x1_U", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_2_x1_U", "Parent" : "0"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_2_x1_U", "Parent" : "0"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_2_x1_U", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_2_x1_U", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_0_x1_U", "Parent" : "0"},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_2_x1_U", "Parent" : "0"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_1_x1_U", "Parent" : "0"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U", "Parent" : "0"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_11_x1_U", "Parent" : "0"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_10_x1_U", "Parent" : "0"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U", "Parent" : "0"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_8_x1_U", "Parent" : "0"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U", "Parent" : "0"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x1_U", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x1_U", "Parent" : "0"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x1_U", "Parent" : "0"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U", "Parent" : "0"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U", "Parent" : "0"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U", "Parent" : "0"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U", "Parent" : "0"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_10_x1_U", "Parent" : "0"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_9_x1_U", "Parent" : "0"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_8_x1_U", "Parent" : "0"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x1_U", "Parent" : "0"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x1_U", "Parent" : "0"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x1_U", "Parent" : "0"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x1_U", "Parent" : "0"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x1_U", "Parent" : "0"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x1_U", "Parent" : "0"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x1_U", "Parent" : "0"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U", "Parent" : "0"},
	{"ID" : "422", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x1_U", "Parent" : "0"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel3_x1 {
		B {Type I LastRead 1 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 6}}
	A_IO_L3_in_x1 {
		fifo_A_A_IO_L2_in_0_x11 {Type O LastRead -1 FirstWrite 3}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L2_in_0_x1 {
		fifo_A_A_IO_L2_in_0_x11 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x12 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_0_0_x116 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x12 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x13 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x119 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_2_x1 {
		fifo_A_A_IO_L2_in_2_x13 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x14 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_2_0_x122 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_3_x1 {
		fifo_A_A_IO_L2_in_3_x14 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x15 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_3_0_x125 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_4_x1 {
		fifo_A_A_IO_L2_in_4_x15 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x16 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_4_0_x128 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_5_x1 {
		fifo_A_A_IO_L2_in_5_x16 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x17 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_5_0_x131 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_6_x1 {
		fifo_A_A_IO_L2_in_6_x17 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x18 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_6_0_x134 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_7_x1 {
		fifo_A_A_IO_L2_in_7_x18 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_8_x19 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_7_0_x137 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_8_x1 {
		fifo_A_A_IO_L2_in_8_x19 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_9_x110 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_8_0_x140 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_9_x1 {
		fifo_A_A_IO_L2_in_9_x110 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_10_x111 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_9_0_x143 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_10_x1 {
		fifo_A_A_IO_L2_in_10_x111 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_11_x112 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_10_0_x146 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_11_x1 {
		fifo_A_A_IO_L2_in_11_x112 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_12_x113 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_11_0_x149 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_boundary_x1 {
		fifo_A_A_IO_L2_in_12_x113 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_12_0_x152 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L3_in_x1 {
		fifo_B_B_IO_L2_in_0_x114 {Type O LastRead -1 FirstWrite 3}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L2_in_x1 {
		fifo_B_B_IO_L2_in_0_x114 {Type I LastRead 4 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x115 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_0_x155 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_boundary_x1 {
		fifo_B_B_IO_L2_in_1_x115 {Type I LastRead 3 FirstWrite -1}
		fifo_B_PE_0_1_x169 {Type O LastRead -1 FirstWrite 5}}
	PE_wrapper_0_0_x1 {
		fifo_A_PE_0_0_x116 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_1_x117 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_0_x155 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_0_x156 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_0_0_x183 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_0_1_x1 {
		fifo_A_PE_0_1_x117 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x118 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_1_x169 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_1_x170 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_0_1_x196 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_1_0_x1 {
		fifo_A_PE_1_0_x119 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x120 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_0_x156 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_0_x157 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_1_0_x184 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_1_1_x1 {
		fifo_A_PE_1_1_x120 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_2_x121 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_1_x170 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_1_x171 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_1_1_x197 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_2_0_x1 {
		fifo_A_PE_2_0_x122 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_1_x123 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_0_x157 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_3_0_x158 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_2_0_x185 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_2_1_x1 {
		fifo_A_PE_2_1_x123 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_2_x124 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_1_x171 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_3_1_x172 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_2_1_x198 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_3_0_x1 {
		fifo_A_PE_3_0_x125 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_1_x126 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_0_x158 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_4_0_x159 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_3_0_x186 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_3_1_x1 {
		fifo_A_PE_3_1_x126 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_2_x127 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_1_x172 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_4_1_x173 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_3_1_x199 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_4_0_x1 {
		fifo_A_PE_4_0_x128 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_1_x129 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_4_0_x159 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_5_0_x160 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_4_0_x187 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_4_1_x1 {
		fifo_A_PE_4_1_x129 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_2_x130 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_4_1_x173 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_5_1_x174 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_4_1_x1100 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_5_0_x1 {
		fifo_A_PE_5_0_x131 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_1_x132 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_5_0_x160 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_6_0_x161 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_5_0_x188 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_5_1_x1 {
		fifo_A_PE_5_1_x132 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_2_x133 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_5_1_x174 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_6_1_x175 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_5_1_x1101 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_6_0_x1 {
		fifo_A_PE_6_0_x134 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_1_x135 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_6_0_x161 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_7_0_x162 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_6_0_x189 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_6_1_x1 {
		fifo_A_PE_6_1_x135 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_2_x136 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_6_1_x175 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_7_1_x176 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_6_1_x1102 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_7_0_x1 {
		fifo_A_PE_7_0_x137 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_1_x138 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_7_0_x162 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_8_0_x163 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_7_0_x190 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_7_1_x1 {
		fifo_A_PE_7_1_x138 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_2_x139 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_7_1_x176 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_8_1_x177 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_7_1_x1103 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_8_0_x1 {
		fifo_A_PE_8_0_x140 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_1_x141 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_8_0_x163 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_9_0_x164 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_8_0_x191 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_8_1_x1 {
		fifo_A_PE_8_1_x141 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_2_x142 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_8_1_x177 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_9_1_x178 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_8_1_x1104 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_9_0_x1 {
		fifo_A_PE_9_0_x143 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_1_x144 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_9_0_x164 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_10_0_x165 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_9_0_x192 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_9_1_x1 {
		fifo_A_PE_9_1_x144 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_2_x145 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_9_1_x178 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_10_1_x179 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_9_1_x1105 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_10_0_x1 {
		fifo_A_PE_10_0_x146 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_1_x147 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_10_0_x165 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_11_0_x166 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_10_0_x193 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_10_1_x1 {
		fifo_A_PE_10_1_x147 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_2_x148 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_10_1_x179 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_11_1_x180 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_10_1_x1106 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_11_0_x1 {
		fifo_A_PE_11_0_x149 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_1_x150 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_11_0_x166 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_0_x167 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_11_0_x194 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_11_1_x1 {
		fifo_A_PE_11_1_x150 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_2_x151 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_11_1_x180 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_1_x181 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_11_1_x1107 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_12_0_x1 {
		fifo_A_PE_12_0_x152 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_1_x153 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_12_0_x167 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_0_x168 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_12_0_x195 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_12_1_x1 {
		fifo_A_PE_12_1_x153 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_2_x154 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_12_1_x181 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_1_x182 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_12_1_x1108 {Type O LastRead -1 FirstWrite 8}}
	A_PE_dummy_0_x1 {
		fifo_A_PE_0_2_x118 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_1_x1 {
		fifo_A_PE_1_2_x121 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_2_x1 {
		fifo_A_PE_2_2_x124 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_3_x1 {
		fifo_A_PE_3_2_x127 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_4_x1 {
		fifo_A_PE_4_2_x130 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_5_x1 {
		fifo_A_PE_5_2_x133 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_6_x1 {
		fifo_A_PE_6_2_x136 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_7_x1 {
		fifo_A_PE_7_2_x139 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_8_x1 {
		fifo_A_PE_8_2_x142 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_9_x1 {
		fifo_A_PE_9_2_x145 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_10_x1 {
		fifo_A_PE_10_2_x148 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_11_x1 {
		fifo_A_PE_11_2_x151 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_12_x1 {
		fifo_A_PE_12_2_x154 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_0_x1 {
		fifo_B_PE_13_0_x168 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_1_x1 {
		fifo_B_PE_13_1_x182 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_0_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x1121 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_0_x195 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_0_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x1121 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_11_x1120 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_0_x194 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_1_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_11_x1120 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_10_x1119 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_0_x193 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_2_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_10_x1119 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_9_x1118 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_0_x192 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_3_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_9_x1118 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_8_x1117 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_0_x191 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_4_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_8_x1117 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_7_x1116 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_0_x190 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_5_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x1116 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x1115 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_0_x189 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_6_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x1115 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x1114 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_0_x188 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_7_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x1114 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1113 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_0_x187 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_8_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1113 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1112 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x186 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_9_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1112 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x1111 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x185 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_10_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x1111 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x1110 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_0_x184 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_11_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x1110 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x1109 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_0_x183 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_1_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x1134 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_1_x1108 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_12_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x1134 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_11_x1133 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_1_x1107 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_13_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_11_x1133 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_10_x1132 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_1_x1106 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_14_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_10_x1132 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_9_x1131 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_1_x1105 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_15_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_9_x1131 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_8_x1130 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_1_x1104 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_16_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_8_x1130 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_1_x1103 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_17_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x1102 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_18_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x1127 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_1_x1101 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_19_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x1127 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x1126 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_1_x1100 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_20_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x1126 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x1125 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_1_x199 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_21_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x1125 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x1124 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_1_x198 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_22_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x1124 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x1123 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_1_x197 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_23_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x1123 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1122 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_1_x196 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x1 {
		fifo_C_drain_C_drain_IO_L2_out_1_x1136 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1122 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_x1 {
		fifo_C_drain_C_drain_IO_L2_out_1_x1136 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x1135 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x1109 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L3_out_x1 {
		fifo_C_drain_C_drain_IO_L2_out_0_x1135 {Type I LastRead 3 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4232493", "Max" : "4232493"}
	, {"Name" : "Interval", "Min" : "4232387", "Max" : "4232387"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 503 }  { B_q0 mem_dout 0 503 }  { B_we0 mem_we 1 1 }  { B_address1 MemPortADDR2 1 12 }  { B_ce1 MemPortCE2 1 1 }  { B_d1 mem_din 1 503 }  { B_q1 MemPortDOUT2 0 503 }  { B_we1 mem_we 1 1 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_d0 mem_din 1 512 }  { C_q0 mem_dout 0 512 }  { C_we0 mem_we 1 1 }  { C_address1 mem_address 1 12 }  { C_ce1 mem_ce 1 1 }  { C_d1 mem_din 1 512 }  { C_q1 mem_dout 0 512 }  { C_we1 mem_we 1 1 } } }
}
set moduleName kernel3_x1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {kernel3_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ B int 503 regular {array 4096 { 1 1 } 1 1 }  }
	{ C int 512 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "B", "interface" : "memory", "bitwidth" : 503, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ B_address0 sc_out sc_lv 12 signal 0 } 
	{ B_ce0 sc_out sc_logic 1 signal 0 } 
	{ B_d0 sc_out sc_lv 503 signal 0 } 
	{ B_q0 sc_in sc_lv 503 signal 0 } 
	{ B_we0 sc_out sc_logic 1 signal 0 } 
	{ B_address1 sc_out sc_lv 12 signal 0 } 
	{ B_ce1 sc_out sc_logic 1 signal 0 } 
	{ B_d1 sc_out sc_lv 503 signal 0 } 
	{ B_q1 sc_in sc_lv 503 signal 0 } 
	{ B_we1 sc_out sc_logic 1 signal 0 } 
	{ C_address0 sc_out sc_lv 12 signal 1 } 
	{ C_ce0 sc_out sc_logic 1 signal 1 } 
	{ C_d0 sc_out sc_lv 512 signal 1 } 
	{ C_q0 sc_in sc_lv 512 signal 1 } 
	{ C_we0 sc_out sc_logic 1 signal 1 } 
	{ C_address1 sc_out sc_lv 12 signal 1 } 
	{ C_ce1 sc_out sc_logic 1 signal 1 } 
	{ C_d1 sc_out sc_lv 512 signal 1 } 
	{ C_q1 sc_in sc_lv 512 signal 1 } 
	{ C_we1 sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":503, "type": "signal", "bundle":{"name": "B", "role": "d0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":503, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":503, "type": "signal", "bundle":{"name": "B", "role": "d1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":503, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
 	{ "name": "B_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we1" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "d1" }} , 
 	{ "name": "C_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "q1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "11", "13", "15", "17", "19", "21", "23", "25", "27", "29", "30", "32", "34", "40", "46", "52", "58", "64", "70", "76", "82", "88", "94", "100", "106", "112", "118", "124", "130", "136", "142", "148", "154", "160", "166", "172", "178", "184", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "208", "211", "214", "217", "220", "223", "226", "229", "232", "235", "238", "241", "244", "247", "250", "253", "256", "259", "262", "265", "268", "271", "274", "277", "280", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421"],
		"CDFG" : "kernel3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "151663", "EstimateLatencyMax" : "151663",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "A_IO_L3_in_x1_U0"},
			{"ID" : "29", "Name" : "B_IO_L3_in_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "190", "Name" : "A_PE_dummy_0_x1_U0"},
			{"ID" : "191", "Name" : "A_PE_dummy_1_x1_U0"},
			{"ID" : "192", "Name" : "A_PE_dummy_2_x1_U0"},
			{"ID" : "193", "Name" : "A_PE_dummy_3_x1_U0"},
			{"ID" : "194", "Name" : "A_PE_dummy_4_x1_U0"},
			{"ID" : "195", "Name" : "A_PE_dummy_5_x1_U0"},
			{"ID" : "196", "Name" : "A_PE_dummy_6_x1_U0"},
			{"ID" : "197", "Name" : "A_PE_dummy_7_x1_U0"},
			{"ID" : "198", "Name" : "A_PE_dummy_8_x1_U0"},
			{"ID" : "199", "Name" : "A_PE_dummy_9_x1_U0"},
			{"ID" : "200", "Name" : "A_PE_dummy_10_x1_U0"},
			{"ID" : "201", "Name" : "A_PE_dummy_11_x1_U0"},
			{"ID" : "202", "Name" : "A_PE_dummy_12_x1_U0"},
			{"ID" : "203", "Name" : "B_PE_dummy_0_x1_U0"},
			{"ID" : "204", "Name" : "B_PE_dummy_1_x1_U0"},
			{"ID" : "285", "Name" : "C_drain_IO_L3_out_x1_U0"}],
		"Port" : [
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "B_IO_L3_in_x1_U0", "Port" : "B"},
					{"ID" : "1", "SubInstance" : "A_IO_L3_in_x1_U0", "Port" : "A"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "C_drain_IO_L3_out_x1_U0", "Port" : "C"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "A_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "286", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0.add_12ns_12ns_12_1_1_U655", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "A_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39431", "EstimateLatencyMax" : "39431",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "286", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "287", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "A_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38919", "EstimateLatencyMax" : "38919",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "287", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "A_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38407", "EstimateLatencyMax" : "38407",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "A_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37895", "EstimateLatencyMax" : "37895",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x1_U0.local_A_pong_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "A_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37383", "EstimateLatencyMax" : "37383",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x1_U0.local_A_pong_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "A_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36871", "EstimateLatencyMax" : "36871",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x1_U0.local_A_pong_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "A_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36359", "EstimateLatencyMax" : "36359",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x1_U0.local_A_pong_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x1_U0", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "A_IO_L2_in_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35847", "EstimateLatencyMax" : "35847",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x1_U0.local_A_pong_V_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x1_U0", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "A_IO_L2_in_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35335", "EstimateLatencyMax" : "35335",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x1_U0.local_A_pong_V_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x1_U0", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "A_IO_L2_in_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34823", "EstimateLatencyMax" : "34823",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x1_U0.local_A_pong_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x1_U0", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "A_IO_L2_in_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34311", "EstimateLatencyMax" : "34311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x1_U0.local_A_pong_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x1_U0", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "A_IO_L2_in_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33799", "EstimateLatencyMax" : "33799",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x1_U0.local_A_pong_V_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "A_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33284", "EstimateLatencyMax" : "33284",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x1_U0", "Parent" : "0", "Child" : ["31"],
		"CDFG" : "B_IO_L2_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36869", "EstimateLatencyMax" : "36869",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x1_U0.local_B_pong_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "B_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34821", "EstimateLatencyMax" : "34821",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["35", "36", "37", "38", "39"],
		"CDFG" : "PE_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_C_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U705", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U706", "Parent" : "34"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U707", "Parent" : "34"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U708", "Parent" : "34"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["41", "42", "43", "44", "45"],
		"CDFG" : "PE_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U714", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U715", "Parent" : "40"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U716", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U717", "Parent" : "40"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["47", "48", "49", "50", "51"],
		"CDFG" : "PE_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_C_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U723", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U724", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U725", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U726", "Parent" : "46"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["53", "54", "55", "56", "57"],
		"CDFG" : "PE_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_C_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U732", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U733", "Parent" : "52"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U734", "Parent" : "52"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U735", "Parent" : "52"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["59", "60", "61", "62", "63"],
		"CDFG" : "PE_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_C_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U741", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U742", "Parent" : "58"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U743", "Parent" : "58"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U744", "Parent" : "58"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["65", "66", "67", "68", "69"],
		"CDFG" : "PE_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_C_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U750", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U751", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U752", "Parent" : "64"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U753", "Parent" : "64"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["71", "72", "73", "74", "75"],
		"CDFG" : "PE_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_C_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U759", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U760", "Parent" : "70"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U761", "Parent" : "70"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U762", "Parent" : "70"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["77", "78", "79", "80", "81"],
		"CDFG" : "PE_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U768", "Parent" : "76"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U769", "Parent" : "76"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U770", "Parent" : "76"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U771", "Parent" : "76"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0", "Parent" : "0", "Child" : ["83", "84", "85", "86", "87"],
		"CDFG" : "PE_wrapper_4_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.local_C_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U777", "Parent" : "82"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U778", "Parent" : "82"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U779", "Parent" : "82"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U780", "Parent" : "82"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0", "Parent" : "0", "Child" : ["89", "90", "91", "92", "93"],
		"CDFG" : "PE_wrapper_4_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.local_C_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U786", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U787", "Parent" : "88"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U788", "Parent" : "88"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U789", "Parent" : "88"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0", "Parent" : "0", "Child" : ["95", "96", "97", "98", "99"],
		"CDFG" : "PE_wrapper_5_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.local_C_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U795", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U796", "Parent" : "94"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U797", "Parent" : "94"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U798", "Parent" : "94"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0", "Parent" : "0", "Child" : ["101", "102", "103", "104", "105"],
		"CDFG" : "PE_wrapper_5_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "112", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.local_C_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U804", "Parent" : "100"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U805", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U806", "Parent" : "100"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U807", "Parent" : "100"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0", "Parent" : "0", "Child" : ["107", "108", "109", "110", "111"],
		"CDFG" : "PE_wrapper_6_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "112", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.local_C_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U813", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U814", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U815", "Parent" : "106"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U816", "Parent" : "106"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0", "Parent" : "0", "Child" : ["113", "114", "115", "116", "117"],
		"CDFG" : "PE_wrapper_6_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "124", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.local_C_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U822", "Parent" : "112"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U823", "Parent" : "112"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U824", "Parent" : "112"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U825", "Parent" : "112"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0", "Parent" : "0", "Child" : ["119", "120", "121", "122", "123"],
		"CDFG" : "PE_wrapper_7_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "124", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.local_C_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U831", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U832", "Parent" : "118"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U833", "Parent" : "118"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U834", "Parent" : "118"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0", "Parent" : "0", "Child" : ["125", "126", "127", "128", "129"],
		"CDFG" : "PE_wrapper_7_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.local_C_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U840", "Parent" : "124"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U841", "Parent" : "124"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U842", "Parent" : "124"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U843", "Parent" : "124"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0", "Parent" : "0", "Child" : ["131", "132", "133", "134", "135"],
		"CDFG" : "PE_wrapper_8_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.local_C_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U849", "Parent" : "130"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U850", "Parent" : "130"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U851", "Parent" : "130"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U852", "Parent" : "130"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0", "Parent" : "0", "Child" : ["137", "138", "139", "140", "141"],
		"CDFG" : "PE_wrapper_8_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "124", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.local_C_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U858", "Parent" : "136"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U859", "Parent" : "136"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U860", "Parent" : "136"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U861", "Parent" : "136"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0", "Parent" : "0", "Child" : ["143", "144", "145", "146", "147"],
		"CDFG" : "PE_wrapper_9_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.local_C_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U867", "Parent" : "142"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U868", "Parent" : "142"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U869", "Parent" : "142"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U870", "Parent" : "142"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0", "Parent" : "0", "Child" : ["149", "150", "151", "152", "153"],
		"CDFG" : "PE_wrapper_9_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.local_C_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U876", "Parent" : "148"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U877", "Parent" : "148"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U878", "Parent" : "148"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U879", "Parent" : "148"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0", "Parent" : "0", "Child" : ["155", "156", "157", "158", "159"],
		"CDFG" : "PE_wrapper_10_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.local_C_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U885", "Parent" : "154"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U886", "Parent" : "154"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U887", "Parent" : "154"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U888", "Parent" : "154"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0", "Parent" : "0", "Child" : ["161", "162", "163", "164", "165"],
		"CDFG" : "PE_wrapper_10_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.local_C_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U894", "Parent" : "160"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U895", "Parent" : "160"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U896", "Parent" : "160"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U897", "Parent" : "160"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0", "Parent" : "0", "Child" : ["167", "168", "169", "170", "171"],
		"CDFG" : "PE_wrapper_11_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.local_C_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U903", "Parent" : "166"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U904", "Parent" : "166"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U905", "Parent" : "166"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U906", "Parent" : "166"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0", "Parent" : "0", "Child" : ["173", "174", "175", "176", "177"],
		"CDFG" : "PE_wrapper_11_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "247", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.local_C_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U912", "Parent" : "172"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U913", "Parent" : "172"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U914", "Parent" : "172"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U915", "Parent" : "172"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0", "Parent" : "0", "Child" : ["179", "180", "181", "182", "183"],
		"CDFG" : "PE_wrapper_12_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.local_C_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U921", "Parent" : "178"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U922", "Parent" : "178"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U923", "Parent" : "178"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U924", "Parent" : "178"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0", "Parent" : "0", "Child" : ["185", "186", "187", "188", "189"],
		"CDFG" : "PE_wrapper_12_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133182", "EstimateLatencyMax" : "133182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.local_C_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U930", "Parent" : "184"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U931", "Parent" : "184"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U932", "Parent" : "184"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U933", "Parent" : "184"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_0_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_1_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_2_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_3_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_4_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_5_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_6_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_7_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "124", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_8_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_9_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_10_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_11_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_12_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_12_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_0_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_1_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0", "Parent" : "0", "Child" : ["206", "207"],
		"CDFG" : "C_drain_IO_L1_out_boundary_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4645", "EstimateLatencyMax" : "4645",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0.local_C_V_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0.buf_data_split_V_U", "Parent" : "205"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0", "Parent" : "0", "Child" : ["209", "210"],
		"CDFG" : "C_drain_IO_L1_out_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10438", "EstimateLatencyMax" : "10438",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0.local_C_V_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0.buf_data_split_V_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0", "Parent" : "0", "Child" : ["212", "213"],
		"CDFG" : "C_drain_IO_L1_out_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12008", "EstimateLatencyMax" : "12008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0.local_C_V_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0.buf_data_split_V_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0", "Parent" : "0", "Child" : ["215", "216"],
		"CDFG" : "C_drain_IO_L1_out_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13578", "EstimateLatencyMax" : "13578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "211", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0.local_C_V_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0.buf_data_split_V_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0", "Parent" : "0", "Child" : ["218", "219"],
		"CDFG" : "C_drain_IO_L1_out_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15148", "EstimateLatencyMax" : "15148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0.local_C_V_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0.buf_data_split_V_U", "Parent" : "217"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0", "Parent" : "0", "Child" : ["221", "222"],
		"CDFG" : "C_drain_IO_L1_out_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16718", "EstimateLatencyMax" : "16718",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0.local_C_V_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0.buf_data_split_V_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0", "Parent" : "0", "Child" : ["224", "225"],
		"CDFG" : "C_drain_IO_L1_out_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18288", "EstimateLatencyMax" : "18288",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0.local_C_V_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0.buf_data_split_V_U", "Parent" : "223"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0", "Parent" : "0", "Child" : ["227", "228"],
		"CDFG" : "C_drain_IO_L1_out_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19858", "EstimateLatencyMax" : "19858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0.local_C_V_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0.buf_data_split_V_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0", "Parent" : "0", "Child" : ["230", "231"],
		"CDFG" : "C_drain_IO_L1_out_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21428", "EstimateLatencyMax" : "21428",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0.local_C_V_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0.buf_data_split_V_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0", "Parent" : "0", "Child" : ["233", "234"],
		"CDFG" : "C_drain_IO_L1_out_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22998", "EstimateLatencyMax" : "22998",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "229", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0.local_C_V_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0.buf_data_split_V_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0", "Parent" : "0", "Child" : ["236", "237"],
		"CDFG" : "C_drain_IO_L1_out_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24568", "EstimateLatencyMax" : "24568",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0.local_C_V_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0.buf_data_split_V_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0", "Parent" : "0", "Child" : ["239", "240"],
		"CDFG" : "C_drain_IO_L1_out_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26138", "EstimateLatencyMax" : "26138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0.local_C_V_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0.buf_data_split_V_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0", "Parent" : "0", "Child" : ["242", "243"],
		"CDFG" : "C_drain_IO_L1_out_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27708", "EstimateLatencyMax" : "27708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0.local_C_V_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0.buf_data_split_V_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0", "Parent" : "0", "Child" : ["245", "246"],
		"CDFG" : "C_drain_IO_L1_out_boundary_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4645", "EstimateLatencyMax" : "4645",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "247", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0.local_C_V_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0.buf_data_split_V_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0", "Parent" : "0", "Child" : ["248", "249"],
		"CDFG" : "C_drain_IO_L1_out_12_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10438", "EstimateLatencyMax" : "10438",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0.local_C_V_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0.buf_data_split_V_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0", "Parent" : "0", "Child" : ["251", "252"],
		"CDFG" : "C_drain_IO_L1_out_13_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12008", "EstimateLatencyMax" : "12008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "247", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0.local_C_V_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0.buf_data_split_V_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0", "Parent" : "0", "Child" : ["254", "255"],
		"CDFG" : "C_drain_IO_L1_out_14_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13578", "EstimateLatencyMax" : "13578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0.local_C_V_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0.buf_data_split_V_U", "Parent" : "253"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0", "Parent" : "0", "Child" : ["257", "258"],
		"CDFG" : "C_drain_IO_L1_out_15_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15148", "EstimateLatencyMax" : "15148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "253", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0.local_C_V_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0.buf_data_split_V_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0", "Parent" : "0", "Child" : ["260", "261"],
		"CDFG" : "C_drain_IO_L1_out_16_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16718", "EstimateLatencyMax" : "16718",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "124", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0.local_C_V_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0.buf_data_split_V_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0", "Parent" : "0", "Child" : ["263", "264"],
		"CDFG" : "C_drain_IO_L1_out_17_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18288", "EstimateLatencyMax" : "18288",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "259", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0.local_C_V_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0.buf_data_split_V_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0", "Parent" : "0", "Child" : ["266", "267"],
		"CDFG" : "C_drain_IO_L1_out_18_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19858", "EstimateLatencyMax" : "19858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0.local_C_V_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0.buf_data_split_V_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0", "Parent" : "0", "Child" : ["269", "270"],
		"CDFG" : "C_drain_IO_L1_out_19_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21428", "EstimateLatencyMax" : "21428",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0.local_C_V_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0.buf_data_split_V_U", "Parent" : "268"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0", "Parent" : "0", "Child" : ["272", "273"],
		"CDFG" : "C_drain_IO_L1_out_20_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22998", "EstimateLatencyMax" : "22998",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0.local_C_V_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0.buf_data_split_V_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0", "Parent" : "0", "Child" : ["275", "276"],
		"CDFG" : "C_drain_IO_L1_out_21_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24568", "EstimateLatencyMax" : "24568",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "271", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0.local_C_V_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0.buf_data_split_V_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0", "Parent" : "0", "Child" : ["278", "279"],
		"CDFG" : "C_drain_IO_L1_out_22_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26138", "EstimateLatencyMax" : "26138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0.local_C_V_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0.buf_data_split_V_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0", "Parent" : "0", "Child" : ["281", "282"],
		"CDFG" : "C_drain_IO_L1_out_23_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27708", "EstimateLatencyMax" : "27708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "277", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0.local_C_V_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0.buf_data_split_V_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x1_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6658", "EstimateLatencyMax" : "6658",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_x1_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13315", "EstimateLatencyMax" : "13315",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "283", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "241", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x1_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L3_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16393", "EstimateLatencyMax" : "16393",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_8_x1_U", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_9_x1_U", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_10_x1_U", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_11_x1_U", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_12_x1_U", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x1_U", "Parent" : "0"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x1_U", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x1_U", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_2_x1_U", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_2_x1_U", "Parent" : "0"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_2_x1_U", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_2_x1_U", "Parent" : "0"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_0_x1_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_2_x1_U", "Parent" : "0"},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_1_x1_U", "Parent" : "0"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U", "Parent" : "0"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_11_x1_U", "Parent" : "0"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_10_x1_U", "Parent" : "0"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U", "Parent" : "0"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_8_x1_U", "Parent" : "0"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U", "Parent" : "0"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U", "Parent" : "0"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U", "Parent" : "0"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x1_U", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x1_U", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x1_U", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U", "Parent" : "0"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U", "Parent" : "0"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U", "Parent" : "0"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U", "Parent" : "0"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_10_x1_U", "Parent" : "0"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_9_x1_U", "Parent" : "0"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_8_x1_U", "Parent" : "0"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x1_U", "Parent" : "0"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x1_U", "Parent" : "0"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x1_U", "Parent" : "0"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x1_U", "Parent" : "0"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x1_U", "Parent" : "0"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x1_U", "Parent" : "0"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x1_U", "Parent" : "0"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U", "Parent" : "0"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x1_U", "Parent" : "0"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel3_x1 {
		B {Type I LastRead 1 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 10}}
	A_IO_L3_in_x1 {
		fifo_A_A_IO_L2_in_0_x11 {Type O LastRead -1 FirstWrite 3}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L2_in_0_x1 {
		fifo_A_A_IO_L2_in_0_x11 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x12 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_0_0_x116 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x12 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x13 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_1_0_x119 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_2_x1 {
		fifo_A_A_IO_L2_in_2_x13 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x14 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_2_0_x122 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_3_x1 {
		fifo_A_A_IO_L2_in_3_x14 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x15 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_3_0_x125 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_4_x1 {
		fifo_A_A_IO_L2_in_4_x15 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x16 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_4_0_x128 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_5_x1 {
		fifo_A_A_IO_L2_in_5_x16 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x17 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_5_0_x131 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_6_x1 {
		fifo_A_A_IO_L2_in_6_x17 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x18 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_6_0_x134 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_7_x1 {
		fifo_A_A_IO_L2_in_7_x18 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_8_x19 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_7_0_x137 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_8_x1 {
		fifo_A_A_IO_L2_in_8_x19 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_9_x110 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_8_0_x140 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_9_x1 {
		fifo_A_A_IO_L2_in_9_x110 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_10_x111 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_9_0_x143 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_10_x1 {
		fifo_A_A_IO_L2_in_10_x111 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_11_x112 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_10_0_x146 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_11_x1 {
		fifo_A_A_IO_L2_in_11_x112 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_12_x113 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_11_0_x149 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_boundary_x1 {
		fifo_A_A_IO_L2_in_12_x113 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_12_0_x152 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L3_in_x1 {
		fifo_B_B_IO_L2_in_0_x114 {Type O LastRead -1 FirstWrite 3}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L2_in_x1 {
		fifo_B_B_IO_L2_in_0_x114 {Type I LastRead 2 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x115 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_0_0_x155 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_boundary_x1 {
		fifo_B_B_IO_L2_in_1_x115 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_0_1_x169 {Type O LastRead -1 FirstWrite 5}}
	PE_wrapper_0_0_x1 {
		fifo_A_PE_0_0_x116 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_1_x117 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_0_x155 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_0_x156 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_0_0_x183 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_0_1_x1 {
		fifo_A_PE_0_1_x117 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x118 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_1_x169 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_1_x170 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_0_1_x196 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_1_0_x1 {
		fifo_A_PE_1_0_x119 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x120 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_0_x156 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_0_x157 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_1_0_x184 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_1_1_x1 {
		fifo_A_PE_1_1_x120 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_2_x121 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_1_x170 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_1_x171 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_1_1_x197 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_2_0_x1 {
		fifo_A_PE_2_0_x122 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_1_x123 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_0_x157 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_0_x158 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_2_0_x185 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_2_1_x1 {
		fifo_A_PE_2_1_x123 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_2_x124 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_1_x171 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_1_x172 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_2_1_x198 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_3_0_x1 {
		fifo_A_PE_3_0_x125 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_1_x126 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_0_x158 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_0_x159 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_3_0_x186 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_3_1_x1 {
		fifo_A_PE_3_1_x126 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_2_x127 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_1_x172 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_1_x173 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_3_1_x199 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_4_0_x1 {
		fifo_A_PE_4_0_x128 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_1_x129 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_4_0_x159 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_5_0_x160 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_4_0_x187 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_4_1_x1 {
		fifo_A_PE_4_1_x129 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_2_x130 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_4_1_x173 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_5_1_x174 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_4_1_x1100 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_5_0_x1 {
		fifo_A_PE_5_0_x131 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_1_x132 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_5_0_x160 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_6_0_x161 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_5_0_x188 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_5_1_x1 {
		fifo_A_PE_5_1_x132 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_2_x133 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_5_1_x174 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_6_1_x175 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_5_1_x1101 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_6_0_x1 {
		fifo_A_PE_6_0_x134 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_1_x135 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_6_0_x161 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_7_0_x162 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_6_0_x189 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_6_1_x1 {
		fifo_A_PE_6_1_x135 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_2_x136 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_6_1_x175 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_7_1_x176 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_6_1_x1102 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_7_0_x1 {
		fifo_A_PE_7_0_x137 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_1_x138 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_7_0_x162 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_8_0_x163 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_7_0_x190 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_7_1_x1 {
		fifo_A_PE_7_1_x138 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_2_x139 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_7_1_x176 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_8_1_x177 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_7_1_x1103 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_8_0_x1 {
		fifo_A_PE_8_0_x140 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_1_x141 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_8_0_x163 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_9_0_x164 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_8_0_x191 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_8_1_x1 {
		fifo_A_PE_8_1_x141 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_2_x142 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_8_1_x177 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_9_1_x178 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_8_1_x1104 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_9_0_x1 {
		fifo_A_PE_9_0_x143 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_1_x144 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_9_0_x164 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_10_0_x165 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_9_0_x192 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_9_1_x1 {
		fifo_A_PE_9_1_x144 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_2_x145 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_9_1_x178 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_10_1_x179 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_9_1_x1105 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_10_0_x1 {
		fifo_A_PE_10_0_x146 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_1_x147 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_10_0_x165 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_11_0_x166 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_10_0_x193 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_10_1_x1 {
		fifo_A_PE_10_1_x147 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_2_x148 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_10_1_x179 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_11_1_x180 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_10_1_x1106 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_11_0_x1 {
		fifo_A_PE_11_0_x149 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_1_x150 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_11_0_x166 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_12_0_x167 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_11_0_x194 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_11_1_x1 {
		fifo_A_PE_11_1_x150 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_2_x151 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_11_1_x180 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_12_1_x181 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_11_1_x1107 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_12_0_x1 {
		fifo_A_PE_12_0_x152 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_1_x153 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_12_0_x167 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_13_0_x168 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_0_x195 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_12_1_x1 {
		fifo_A_PE_12_1_x153 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_2_x154 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_12_1_x181 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_13_1_x182 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_1_x1108 {Type O LastRead -1 FirstWrite 65}}
	A_PE_dummy_0_x1 {
		fifo_A_PE_0_2_x118 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_1_x1 {
		fifo_A_PE_1_2_x121 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_2_x1 {
		fifo_A_PE_2_2_x124 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_3_x1 {
		fifo_A_PE_3_2_x127 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_4_x1 {
		fifo_A_PE_4_2_x130 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_5_x1 {
		fifo_A_PE_5_2_x133 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_6_x1 {
		fifo_A_PE_6_2_x136 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_7_x1 {
		fifo_A_PE_7_2_x139 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_8_x1 {
		fifo_A_PE_8_2_x142 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_9_x1 {
		fifo_A_PE_9_2_x145 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_10_x1 {
		fifo_A_PE_10_2_x148 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_11_x1 {
		fifo_A_PE_11_2_x151 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_12_x1 {
		fifo_A_PE_12_2_x154 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_0_x1 {
		fifo_B_PE_13_0_x168 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_1_x1 {
		fifo_B_PE_13_1_x182 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_0_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x1121 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_12_0_x195 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_0_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x1121 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_11_x1120 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_0_x194 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_1_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_11_x1120 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_10_x1119 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_0_x193 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_2_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_10_x1119 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_9_x1118 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_0_x192 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_3_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_9_x1118 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_8_x1117 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_0_x191 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_4_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_8_x1117 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_7_x1116 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_0_x190 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_5_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x1116 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x1115 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_0_x189 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_6_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x1115 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x1114 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_0_x188 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_7_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x1114 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1113 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_0_x187 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_8_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1113 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1112 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x186 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_9_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1112 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x1111 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x185 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_10_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x1111 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x1110 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_0_x184 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_11_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x1110 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x1109 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_0_x183 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_1_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x1134 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_12_1_x1108 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_12_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x1134 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_11_x1133 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_1_x1107 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_13_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_11_x1133 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_10_x1132 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_1_x1106 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_14_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_10_x1132 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_9_x1131 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_1_x1105 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_15_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_9_x1131 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_8_x1130 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_1_x1104 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_16_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_8_x1130 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_1_x1103 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_17_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x1102 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_18_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x1127 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_1_x1101 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_19_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x1127 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x1126 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_1_x1100 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_20_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x1126 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x1125 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_1_x199 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_21_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x1125 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x1124 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_1_x198 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_22_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x1124 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x1123 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_1_x197 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_23_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x1123 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1122 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_1_x196 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x1 {
		fifo_C_drain_C_drain_IO_L2_out_1_x1136 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1122 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L2_out_x1 {
		fifo_C_drain_C_drain_IO_L2_out_1_x1136 {Type I LastRead 2 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x1135 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x1109 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L3_out_x1 {
		fifo_C_drain_C_drain_IO_L2_out_0_x1135 {Type I LastRead 9 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "151663", "Max" : "151663"}
	, {"Name" : "Interval", "Min" : "133183", "Max" : "133183"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 503 }  { B_q0 mem_dout 0 503 }  { B_we0 mem_we 1 1 }  { B_address1 MemPortADDR2 1 12 }  { B_ce1 MemPortCE2 1 1 }  { B_d1 mem_din 1 503 }  { B_q1 MemPortDOUT2 0 503 }  { B_we1 mem_we 1 1 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_d0 mem_din 1 512 }  { C_q0 mem_dout 0 512 }  { C_we0 mem_we 1 1 }  { C_address1 mem_address 1 12 }  { C_ce1 mem_ce 1 1 }  { C_d1 mem_din 1 512 }  { C_q1 mem_dout 0 512 }  { C_we1 mem_we 1 1 } } }
}
