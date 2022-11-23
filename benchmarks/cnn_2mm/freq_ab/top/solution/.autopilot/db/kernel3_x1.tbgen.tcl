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
	{ gmem_C int 512 regular {axi_master 1}  }
	{ B int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ C int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ m_axi_gmem_C_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_C_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_C_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_C_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_C_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_C_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_C_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_C_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_C_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_C_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_C_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_C_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_BUSER sc_in sc_lv 1 signal 0 } 
	{ B_address0 sc_out sc_lv 10 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_d0 sc_out sc_lv 32 signal 1 } 
	{ B_q0 sc_in sc_lv 32 signal 1 } 
	{ B_we0 sc_out sc_logic 1 signal 1 } 
	{ B_address1 sc_out sc_lv 10 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_d1 sc_out sc_lv 32 signal 1 } 
	{ B_q1 sc_in sc_lv 32 signal 1 } 
	{ B_we1 sc_out sc_logic 1 signal 1 } 
	{ C sc_in sc_lv 64 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ C_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem_C_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_C_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_C_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_C_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_C_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_C_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_C_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_C_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_C_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_C_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_C_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_C_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_C_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_C_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_C_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_C_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_C", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_C_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_C", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_C_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_C_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_C_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_C_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_C_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_C_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_C_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_C_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_C_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_C_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_C_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_C_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_C_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_C_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_C_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_C_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_C_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_C_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_C_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_C", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_C_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_C_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_C_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_C_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_C_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_C_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_C_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_C_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_C_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BUSER" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "d0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "d1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
 	{ "name": "B_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we1" }} , 
 	{ "name": "C", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "C_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "C", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "32", "33", "35", "37", "43", "49", "55", "61", "67", "73", "79", "85", "91", "97", "103", "109", "115", "121", "127", "133", "139", "145", "151", "157", "163", "169", "175", "181", "187", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "211", "214", "217", "220", "223", "226", "229", "232", "235", "238", "241", "244", "247", "250", "253", "256", "259", "262", "265", "268", "271", "274", "277", "280", "283", "286", "287", "288", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427"],
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
			{"ID" : "1", "Name" : "kernel3_x1_entry31_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_x1_U0"},
			{"ID" : "32", "Name" : "B_IO_L3_in_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "193", "Name" : "A_PE_dummy_0_x1_U0"},
			{"ID" : "194", "Name" : "A_PE_dummy_1_x1_U0"},
			{"ID" : "195", "Name" : "A_PE_dummy_2_x1_U0"},
			{"ID" : "196", "Name" : "A_PE_dummy_3_x1_U0"},
			{"ID" : "197", "Name" : "A_PE_dummy_4_x1_U0"},
			{"ID" : "198", "Name" : "A_PE_dummy_5_x1_U0"},
			{"ID" : "199", "Name" : "A_PE_dummy_6_x1_U0"},
			{"ID" : "200", "Name" : "A_PE_dummy_7_x1_U0"},
			{"ID" : "201", "Name" : "A_PE_dummy_8_x1_U0"},
			{"ID" : "202", "Name" : "A_PE_dummy_9_x1_U0"},
			{"ID" : "203", "Name" : "A_PE_dummy_10_x1_U0"},
			{"ID" : "204", "Name" : "A_PE_dummy_11_x1_U0"},
			{"ID" : "205", "Name" : "A_PE_dummy_12_x1_U0"},
			{"ID" : "206", "Name" : "B_PE_dummy_0_x1_U0"},
			{"ID" : "207", "Name" : "B_PE_dummy_1_x1_U0"},
			{"ID" : "288", "Name" : "C_drain_IO_L3_out_x1_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "288", "SubInstance" : "C_drain_IO_L3_out_x1_U0", "Port" : "gmem_C"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "B_IO_L3_in_x1_U0", "Port" : "B"},
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_x1_U0", "Port" : "A"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel3_x1_entry31_U0", "Parent" : "0",
		"CDFG" : "kernel3_x1_entry31",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel3_x1_entry42_U0", "Parent" : "0",
		"CDFG" : "kernel3_x1_entry42",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "288", "DependentChan" : "291", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "A_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5121", "EstimateLatencyMax" : "5121",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0.add_11ns_11ns_11_1_1_U500", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0.add_2ns_2ns_2_1_1_U501", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["7"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["9"],
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["11"],
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["13"],
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x1_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["15"],
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x1_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["17"],
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x1_U0.local_A_pong_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["19"],
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x1_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x1_U0", "Parent" : "0", "Child" : ["21"],
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x1_U0.local_A_pong_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x1_U0", "Parent" : "0", "Child" : ["23"],
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "133", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x1_U0.local_A_pong_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x1_U0", "Parent" : "0", "Child" : ["25"],
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x1_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x1_U0", "Parent" : "0", "Child" : ["27"],
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x1_U0.local_A_pong_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x1_U0", "Parent" : "0", "Child" : ["29"],
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x1_U0.local_A_pong_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["31"],
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5121", "EstimateLatencyMax" : "5121",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x1_U0", "Parent" : "0", "Child" : ["34"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x1_U0.local_B_pong_V_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["36"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["38", "39", "40", "41", "42"],
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
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_A_0_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_B_0_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_C_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U551", "Parent" : "37"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U552", "Parent" : "37"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["44", "45", "46", "47", "48"],
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
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_A_0_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_B_0_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_C_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U558", "Parent" : "43"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U559", "Parent" : "43"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54"],
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
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_A_0_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_B_0_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_C_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U565", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U566", "Parent" : "49"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["56", "57", "58", "59", "60"],
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
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_A_0_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_B_0_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_C_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U572", "Parent" : "55"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U573", "Parent" : "55"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["62", "63", "64", "65", "66"],
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
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_A_0_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_B_0_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_C_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U579", "Parent" : "61"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U580", "Parent" : "61"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["68", "69", "70", "71", "72"],
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
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_A_0_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_B_0_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_C_U", "Parent" : "67"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U586", "Parent" : "67"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U587", "Parent" : "67"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["74", "75", "76", "77", "78"],
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
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_A_0_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_B_0_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_C_U", "Parent" : "73"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U593", "Parent" : "73"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U594", "Parent" : "73"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["80", "81", "82", "83", "84"],
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
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_A_0_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_B_0_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_C_U", "Parent" : "79"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U600", "Parent" : "79"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U601", "Parent" : "79"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0", "Parent" : "0", "Child" : ["86", "87", "88", "89", "90"],
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
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.local_A_0_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.local_B_0_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.local_C_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U607", "Parent" : "85"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U608", "Parent" : "85"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0", "Parent" : "0", "Child" : ["92", "93", "94", "95", "96"],
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
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.local_A_0_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.local_B_0_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.local_C_U", "Parent" : "91"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U614", "Parent" : "91"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U615", "Parent" : "91"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0", "Parent" : "0", "Child" : ["98", "99", "100", "101", "102"],
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
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.local_A_0_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.local_B_0_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.local_C_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U621", "Parent" : "97"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U622", "Parent" : "97"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0", "Parent" : "0", "Child" : ["104", "105", "106", "107", "108"],
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
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.local_A_0_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.local_B_0_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.local_C_U", "Parent" : "103"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U628", "Parent" : "103"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U629", "Parent" : "103"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0", "Parent" : "0", "Child" : ["110", "111", "112", "113", "114"],
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
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.local_A_0_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.local_B_0_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.local_C_U", "Parent" : "109"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U635", "Parent" : "109"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U636", "Parent" : "109"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0", "Parent" : "0", "Child" : ["116", "117", "118", "119", "120"],
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
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.local_A_0_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.local_B_0_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.local_C_U", "Parent" : "115"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U642", "Parent" : "115"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U643", "Parent" : "115"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0", "Parent" : "0", "Child" : ["122", "123", "124", "125", "126"],
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
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "133", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.local_A_0_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.local_B_0_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.local_C_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U649", "Parent" : "121"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U650", "Parent" : "121"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0", "Parent" : "0", "Child" : ["128", "129", "130", "131", "132"],
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
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.local_A_0_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.local_B_0_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.local_C_U", "Parent" : "127"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U656", "Parent" : "127"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U657", "Parent" : "127"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0", "Parent" : "0", "Child" : ["134", "135", "136", "137", "138"],
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
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.local_A_0_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.local_B_0_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.local_C_U", "Parent" : "133"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U663", "Parent" : "133"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U664", "Parent" : "133"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0", "Parent" : "0", "Child" : ["140", "141", "142", "143", "144"],
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
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.local_A_0_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.local_B_0_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.local_C_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U670", "Parent" : "139"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U671", "Parent" : "139"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0", "Parent" : "0", "Child" : ["146", "147", "148", "149", "150"],
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
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.local_A_0_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.local_B_0_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.local_C_U", "Parent" : "145"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U677", "Parent" : "145"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U678", "Parent" : "145"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0", "Parent" : "0", "Child" : ["152", "153", "154", "155", "156"],
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
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.local_A_0_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.local_B_0_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.local_C_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U684", "Parent" : "151"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U685", "Parent" : "151"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0", "Parent" : "0", "Child" : ["158", "159", "160", "161", "162"],
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
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.local_A_0_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.local_B_0_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.local_C_U", "Parent" : "157"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U691", "Parent" : "157"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U692", "Parent" : "157"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0", "Parent" : "0", "Child" : ["164", "165", "166", "167", "168"],
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
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.local_A_0_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.local_B_0_U", "Parent" : "163"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.local_C_U", "Parent" : "163"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U698", "Parent" : "163"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U699", "Parent" : "163"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0", "Parent" : "0", "Child" : ["170", "171", "172", "173", "174"],
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
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.local_A_0_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.local_B_0_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.local_C_U", "Parent" : "169"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U705", "Parent" : "169"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U706", "Parent" : "169"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0", "Parent" : "0", "Child" : ["176", "177", "178", "179", "180"],
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
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.local_A_0_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.local_B_0_U", "Parent" : "175"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.local_C_U", "Parent" : "175"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U712", "Parent" : "175"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U713", "Parent" : "175"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0", "Parent" : "0", "Child" : ["182", "183", "184", "185", "186"],
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
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.local_A_0_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.local_B_0_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.local_C_U", "Parent" : "181"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U719", "Parent" : "181"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U720", "Parent" : "181"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0", "Parent" : "0", "Child" : ["188", "189", "190", "191", "192"],
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
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "247", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.local_A_0_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.local_B_0_U", "Parent" : "187"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.local_C_U", "Parent" : "187"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U726", "Parent" : "187"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U727", "Parent" : "187"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_0_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_1_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_2_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_3_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_4_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_5_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_6_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_7_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_8_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_9_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_10_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_11_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_12_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_0_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_1_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0", "Parent" : "0", "Child" : ["209", "210"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0.local_C_V_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0.buf_data_split_V_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0", "Parent" : "0", "Child" : ["212", "213"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0.local_C_V_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0.buf_data_split_V_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0", "Parent" : "0", "Child" : ["215", "216"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "211", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0.local_C_V_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0.buf_data_split_V_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0", "Parent" : "0", "Child" : ["218", "219"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0.local_C_V_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0.buf_data_split_V_U", "Parent" : "217"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0", "Parent" : "0", "Child" : ["221", "222"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0.local_C_V_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0.buf_data_split_V_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0", "Parent" : "0", "Child" : ["224", "225"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0.local_C_V_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0.buf_data_split_V_U", "Parent" : "223"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0", "Parent" : "0", "Child" : ["227", "228"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0.local_C_V_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0.buf_data_split_V_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0", "Parent" : "0", "Child" : ["230", "231"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0.local_C_V_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0.buf_data_split_V_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0", "Parent" : "0", "Child" : ["233", "234"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "229", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0.local_C_V_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0.buf_data_split_V_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0", "Parent" : "0", "Child" : ["236", "237"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0.local_C_V_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0.buf_data_split_V_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0", "Parent" : "0", "Child" : ["239", "240"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0.local_C_V_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0.buf_data_split_V_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0", "Parent" : "0", "Child" : ["242", "243"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0.local_C_V_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0.buf_data_split_V_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0", "Parent" : "0", "Child" : ["245", "246"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "241", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0.local_C_V_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0.buf_data_split_V_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0", "Parent" : "0", "Child" : ["248", "249"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0.local_C_V_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0.buf_data_split_V_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0", "Parent" : "0", "Child" : ["251", "252"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "247", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0.local_C_V_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0.buf_data_split_V_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0", "Parent" : "0", "Child" : ["254", "255"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0.local_C_V_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0.buf_data_split_V_U", "Parent" : "253"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0", "Parent" : "0", "Child" : ["257", "258"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "253", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0.local_C_V_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0.buf_data_split_V_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0", "Parent" : "0", "Child" : ["260", "261"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0.local_C_V_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0.buf_data_split_V_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0", "Parent" : "0", "Child" : ["263", "264"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "259", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0.local_C_V_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0.buf_data_split_V_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0", "Parent" : "0", "Child" : ["266", "267"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0.local_C_V_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0.buf_data_split_V_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0", "Parent" : "0", "Child" : ["269", "270"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0.local_C_V_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0.buf_data_split_V_U", "Parent" : "268"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0", "Parent" : "0", "Child" : ["272", "273"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0.local_C_V_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0.buf_data_split_V_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0", "Parent" : "0", "Child" : ["275", "276"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "271", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0.local_C_V_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0.buf_data_split_V_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0", "Parent" : "0", "Child" : ["278", "279"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0.local_C_V_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0.buf_data_split_V_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0", "Parent" : "0", "Child" : ["281", "282"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "277", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0.local_C_V_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0.buf_data_split_V_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0", "Parent" : "0", "Child" : ["284", "285"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0.local_C_V_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0.buf_data_split_V_U", "Parent" : "283"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "283", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "288", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x1_U0", "Parent" : "0", "Child" : ["289"],
		"CDFG" : "C_drain_IO_L3_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23622", "EstimateLatencyMax" : "23622",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_C_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_C_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_C_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "291", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x1_U0.mem_data_split_V_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_8_x1_U", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_9_x1_U", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_10_x1_U", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_11_x1_U", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_12_x1_U", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x1_U", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x1_U", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x1_U", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_2_x1_U", "Parent" : "0"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_2_x1_U", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_2_x1_U", "Parent" : "0"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_2_x1_U", "Parent" : "0"},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_0_x1_U", "Parent" : "0"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_2_x1_U", "Parent" : "0"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_1_x1_U", "Parent" : "0"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U", "Parent" : "0"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_11_x1_U", "Parent" : "0"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_10_x1_U", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_8_x1_U", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U", "Parent" : "0"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U", "Parent" : "0"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U", "Parent" : "0"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x1_U", "Parent" : "0"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x1_U", "Parent" : "0"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x1_U", "Parent" : "0"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U", "Parent" : "0"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U", "Parent" : "0"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U", "Parent" : "0"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U", "Parent" : "0"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_10_x1_U", "Parent" : "0"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_9_x1_U", "Parent" : "0"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_8_x1_U", "Parent" : "0"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x1_U", "Parent" : "0"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x1_U", "Parent" : "0"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x1_U", "Parent" : "0"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x1_U", "Parent" : "0"},
	{"ID" : "422", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x1_U", "Parent" : "0"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x1_U", "Parent" : "0"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x1_U", "Parent" : "0"},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U", "Parent" : "0"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x1_U", "Parent" : "0"},
	{"ID" : "427", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel3_x1 {
		gmem_C {Type O LastRead 3 FirstWrite 8}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 62 FirstWrite -1}}
	kernel3_x1_entry31 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	kernel3_x1_entry42 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
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
		gmem_C {Type O LastRead 3 FirstWrite 8}
		fifo_C_drain_local_in {Type I LastRead 4 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4232493", "Max" : "4232493"}
	, {"Name" : "Interval", "Min" : "4232387", "Max" : "4232387"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 32 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 32 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
	B { ap_memory {  { B_address0 mem_address 1 10 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 32 }  { B_q0 mem_dout 0 32 }  { B_we0 mem_we 1 1 }  { B_address1 MemPortADDR2 1 10 }  { B_ce1 MemPortCE2 1 1 }  { B_d1 mem_din 1 32 }  { B_q1 MemPortDOUT2 0 32 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
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
	{ gmem_C int 512 regular {axi_master 1}  }
	{ B int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ C int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ m_axi_gmem_C_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_C_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_C_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_C_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_C_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_C_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_C_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_C_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_C_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_C_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_C_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_C_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_C_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_C_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_C_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_C_BUSER sc_in sc_lv 1 signal 0 } 
	{ B_address0 sc_out sc_lv 10 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_d0 sc_out sc_lv 32 signal 1 } 
	{ B_q0 sc_in sc_lv 32 signal 1 } 
	{ B_we0 sc_out sc_logic 1 signal 1 } 
	{ B_address1 sc_out sc_lv 10 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_d1 sc_out sc_lv 32 signal 1 } 
	{ B_q1 sc_in sc_lv 32 signal 1 } 
	{ B_we1 sc_out sc_logic 1 signal 1 } 
	{ C sc_in sc_lv 64 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ C_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem_C_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_C_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_C_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_C_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_C_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_C_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_C_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_C_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_C_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_C_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_C_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_C_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_C_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_C_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_C_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_C_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_C", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_C_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_C", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_C_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_C_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_C_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_C_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_C_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_C_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_C_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_C_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_C_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_C_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_C_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_C_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_C_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_C_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_C_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_C_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_C_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_C_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_C_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_C", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_C_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_C_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_C_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_C_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_C_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_C_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_C_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_C", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_C_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_C_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BUSER" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "d0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "d1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
 	{ "name": "B_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we1" }} , 
 	{ "name": "C", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "C_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "C", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "31", "33", "35", "53", "71", "89", "107", "125", "143", "161", "179", "197", "215", "233", "251", "269", "287", "305", "323", "341", "359", "377", "395", "413", "431", "449", "467", "485", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "521", "524", "527", "530", "533", "536", "539", "542", "545", "548", "551", "554", "557", "560", "563", "566", "569", "572", "575", "578", "581", "584", "587", "590", "593", "596", "597", "598", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737"],
		"CDFG" : "kernel3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59754", "EstimateLatencyMax" : "59754",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel3_x1_entry31_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_x1_U0"},
			{"ID" : "30", "Name" : "B_IO_L3_in_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "503", "Name" : "A_PE_dummy_0_x1_U0"},
			{"ID" : "504", "Name" : "A_PE_dummy_1_x1_U0"},
			{"ID" : "505", "Name" : "A_PE_dummy_2_x1_U0"},
			{"ID" : "506", "Name" : "A_PE_dummy_3_x1_U0"},
			{"ID" : "507", "Name" : "A_PE_dummy_4_x1_U0"},
			{"ID" : "508", "Name" : "A_PE_dummy_5_x1_U0"},
			{"ID" : "509", "Name" : "A_PE_dummy_6_x1_U0"},
			{"ID" : "510", "Name" : "A_PE_dummy_7_x1_U0"},
			{"ID" : "511", "Name" : "A_PE_dummy_8_x1_U0"},
			{"ID" : "512", "Name" : "A_PE_dummy_9_x1_U0"},
			{"ID" : "513", "Name" : "A_PE_dummy_10_x1_U0"},
			{"ID" : "514", "Name" : "A_PE_dummy_11_x1_U0"},
			{"ID" : "515", "Name" : "A_PE_dummy_12_x1_U0"},
			{"ID" : "516", "Name" : "B_PE_dummy_0_x1_U0"},
			{"ID" : "517", "Name" : "B_PE_dummy_1_x1_U0"},
			{"ID" : "598", "Name" : "C_drain_IO_L3_out_x1_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "598", "SubInstance" : "C_drain_IO_L3_out_x1_U0", "Port" : "gmem_C"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_x1_U0", "Port" : "A"},
					{"ID" : "30", "SubInstance" : "B_IO_L3_in_x1_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel3_x1_entry31_U0", "Parent" : "0",
		"CDFG" : "kernel3_x1_entry31",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel3_x1_entry42_U0", "Parent" : "0",
		"CDFG" : "kernel3_x1_entry42",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "598", "DependentChan" : "601", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5121", "EstimateLatencyMax" : "5121",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "A_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39428", "EstimateLatencyMax" : "39428",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "A_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38916", "EstimateLatencyMax" : "38916",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "A_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38404", "EstimateLatencyMax" : "38404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "A_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37892", "EstimateLatencyMax" : "37892",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x1_U0.local_A_pong_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "A_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37380", "EstimateLatencyMax" : "37380",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x1_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "A_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36868", "EstimateLatencyMax" : "36868",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x1_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "A_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36356", "EstimateLatencyMax" : "36356",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "251", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x1_U0.local_A_pong_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x1_U0", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "A_IO_L2_in_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35844", "EstimateLatencyMax" : "35844",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x1_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x1_U0", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "A_IO_L2_in_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35332", "EstimateLatencyMax" : "35332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "323", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x1_U0.local_A_pong_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x1_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "A_IO_L2_in_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34820", "EstimateLatencyMax" : "34820",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x1_U0.local_A_pong_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x1_U0", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "A_IO_L2_in_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34308", "EstimateLatencyMax" : "34308",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "395", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x1_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x1_U0", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "A_IO_L2_in_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33796", "EstimateLatencyMax" : "33796",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x1_U0.local_A_pong_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["29"],
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5121", "EstimateLatencyMax" : "5121",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x1_U0", "Parent" : "0", "Child" : ["32"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x1_U0.local_B_pong_V_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["34"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "PE_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "554", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_C_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1963", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1964", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1965", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1966", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1967", "Parent" : "35"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1968", "Parent" : "35"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1969", "Parent" : "35"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1970", "Parent" : "35"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1971", "Parent" : "35"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1972", "Parent" : "35"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1973", "Parent" : "35"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1974", "Parent" : "35"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1975", "Parent" : "35"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1976", "Parent" : "35"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1977", "Parent" : "35"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1978", "Parent" : "35"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
		"CDFG" : "PE_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "593", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1984", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1985", "Parent" : "53"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1986", "Parent" : "53"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1987", "Parent" : "53"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1988", "Parent" : "53"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1989", "Parent" : "53"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1990", "Parent" : "53"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1991", "Parent" : "53"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1992", "Parent" : "53"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1993", "Parent" : "53"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1994", "Parent" : "53"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1995", "Parent" : "53"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1996", "Parent" : "53"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1997", "Parent" : "53"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1998", "Parent" : "53"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1999", "Parent" : "53"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "PE_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "551", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_C_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2005", "Parent" : "71"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2006", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2007", "Parent" : "71"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2008", "Parent" : "71"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2009", "Parent" : "71"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2010", "Parent" : "71"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2011", "Parent" : "71"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2012", "Parent" : "71"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2013", "Parent" : "71"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2014", "Parent" : "71"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2015", "Parent" : "71"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2016", "Parent" : "71"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2017", "Parent" : "71"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2018", "Parent" : "71"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2019", "Parent" : "71"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2020", "Parent" : "71"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106"],
		"CDFG" : "PE_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "504", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2026", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2027", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2028", "Parent" : "89"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2029", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2030", "Parent" : "89"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2031", "Parent" : "89"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2032", "Parent" : "89"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2033", "Parent" : "89"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2034", "Parent" : "89"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2035", "Parent" : "89"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2036", "Parent" : "89"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2037", "Parent" : "89"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2038", "Parent" : "89"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2039", "Parent" : "89"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2040", "Parent" : "89"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2041", "Parent" : "89"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "PE_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "548", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_C_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2047", "Parent" : "107"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2048", "Parent" : "107"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2049", "Parent" : "107"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2050", "Parent" : "107"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2051", "Parent" : "107"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2052", "Parent" : "107"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2053", "Parent" : "107"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2054", "Parent" : "107"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2055", "Parent" : "107"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2056", "Parent" : "107"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2057", "Parent" : "107"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2058", "Parent" : "107"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2059", "Parent" : "107"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2060", "Parent" : "107"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2061", "Parent" : "107"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2062", "Parent" : "107"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142"],
		"CDFG" : "PE_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "505", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_C_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2068", "Parent" : "125"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2069", "Parent" : "125"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2070", "Parent" : "125"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2071", "Parent" : "125"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2072", "Parent" : "125"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2073", "Parent" : "125"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2074", "Parent" : "125"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2075", "Parent" : "125"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2076", "Parent" : "125"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2077", "Parent" : "125"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2078", "Parent" : "125"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2079", "Parent" : "125"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2080", "Parent" : "125"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2081", "Parent" : "125"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2082", "Parent" : "125"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2083", "Parent" : "125"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160"],
		"CDFG" : "PE_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_C_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2089", "Parent" : "143"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2090", "Parent" : "143"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2091", "Parent" : "143"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2092", "Parent" : "143"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2093", "Parent" : "143"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2094", "Parent" : "143"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2095", "Parent" : "143"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2096", "Parent" : "143"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2097", "Parent" : "143"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2098", "Parent" : "143"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2099", "Parent" : "143"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2100", "Parent" : "143"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2101", "Parent" : "143"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2102", "Parent" : "143"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2103", "Parent" : "143"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2104", "Parent" : "143"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178"],
		"CDFG" : "PE_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_C_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2110", "Parent" : "161"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2111", "Parent" : "161"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2112", "Parent" : "161"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2113", "Parent" : "161"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2114", "Parent" : "161"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2115", "Parent" : "161"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2116", "Parent" : "161"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2117", "Parent" : "161"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2118", "Parent" : "161"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2119", "Parent" : "161"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2120", "Parent" : "161"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2121", "Parent" : "161"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2122", "Parent" : "161"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2123", "Parent" : "161"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2124", "Parent" : "161"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2125", "Parent" : "161"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0", "Parent" : "0", "Child" : ["180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196"],
		"CDFG" : "PE_wrapper_4_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "542", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.local_C_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2131", "Parent" : "179"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2132", "Parent" : "179"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2133", "Parent" : "179"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2134", "Parent" : "179"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2135", "Parent" : "179"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2136", "Parent" : "179"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2137", "Parent" : "179"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2138", "Parent" : "179"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2139", "Parent" : "179"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2140", "Parent" : "179"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2141", "Parent" : "179"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2142", "Parent" : "179"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2143", "Parent" : "179"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2144", "Parent" : "179"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2145", "Parent" : "179"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2146", "Parent" : "179"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0", "Parent" : "0", "Child" : ["198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214"],
		"CDFG" : "PE_wrapper_4_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "507", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "233", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.local_C_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2152", "Parent" : "197"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2153", "Parent" : "197"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2154", "Parent" : "197"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2155", "Parent" : "197"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2156", "Parent" : "197"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2157", "Parent" : "197"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2158", "Parent" : "197"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2159", "Parent" : "197"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2160", "Parent" : "197"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2161", "Parent" : "197"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2162", "Parent" : "197"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2163", "Parent" : "197"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2164", "Parent" : "197"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2165", "Parent" : "197"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2166", "Parent" : "197"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2167", "Parent" : "197"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0", "Parent" : "0", "Child" : ["216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232"],
		"CDFG" : "PE_wrapper_5_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "233", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "251", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.local_C_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2173", "Parent" : "215"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2174", "Parent" : "215"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2175", "Parent" : "215"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2176", "Parent" : "215"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2177", "Parent" : "215"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2178", "Parent" : "215"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2179", "Parent" : "215"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2180", "Parent" : "215"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2181", "Parent" : "215"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2182", "Parent" : "215"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2183", "Parent" : "215"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2184", "Parent" : "215"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2185", "Parent" : "215"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2186", "Parent" : "215"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2187", "Parent" : "215"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2188", "Parent" : "215"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0", "Parent" : "0", "Child" : ["234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250"],
		"CDFG" : "PE_wrapper_5_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "508", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.local_C_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2194", "Parent" : "233"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2195", "Parent" : "233"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2196", "Parent" : "233"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2197", "Parent" : "233"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2198", "Parent" : "233"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2199", "Parent" : "233"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2200", "Parent" : "233"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2201", "Parent" : "233"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2202", "Parent" : "233"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2203", "Parent" : "233"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2204", "Parent" : "233"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2205", "Parent" : "233"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2206", "Parent" : "233"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2207", "Parent" : "233"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2208", "Parent" : "233"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2209", "Parent" : "233"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0", "Parent" : "0", "Child" : ["252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268"],
		"CDFG" : "PE_wrapper_6_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "536", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.local_C_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2215", "Parent" : "251"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2216", "Parent" : "251"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2217", "Parent" : "251"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2218", "Parent" : "251"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2219", "Parent" : "251"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2220", "Parent" : "251"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2221", "Parent" : "251"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2222", "Parent" : "251"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2223", "Parent" : "251"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2224", "Parent" : "251"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2225", "Parent" : "251"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2226", "Parent" : "251"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2227", "Parent" : "251"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2228", "Parent" : "251"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2229", "Parent" : "251"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2230", "Parent" : "251"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0", "Parent" : "0", "Child" : ["270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286"],
		"CDFG" : "PE_wrapper_6_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "233", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "305", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.local_C_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2236", "Parent" : "269"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2237", "Parent" : "269"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2238", "Parent" : "269"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2239", "Parent" : "269"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2240", "Parent" : "269"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2241", "Parent" : "269"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2242", "Parent" : "269"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2243", "Parent" : "269"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2244", "Parent" : "269"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2245", "Parent" : "269"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2246", "Parent" : "269"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2247", "Parent" : "269"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2248", "Parent" : "269"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2249", "Parent" : "269"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2250", "Parent" : "269"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2251", "Parent" : "269"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0", "Parent" : "0", "Child" : ["288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304"],
		"CDFG" : "PE_wrapper_7_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "305", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "323", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.local_C_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2257", "Parent" : "287"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2258", "Parent" : "287"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2259", "Parent" : "287"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2260", "Parent" : "287"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2261", "Parent" : "287"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2262", "Parent" : "287"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2263", "Parent" : "287"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2264", "Parent" : "287"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2265", "Parent" : "287"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2266", "Parent" : "287"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2267", "Parent" : "287"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2268", "Parent" : "287"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2269", "Parent" : "287"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2270", "Parent" : "287"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2271", "Parent" : "287"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2272", "Parent" : "287"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0", "Parent" : "0", "Child" : ["306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322"],
		"CDFG" : "PE_wrapper_7_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "510", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.local_C_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2278", "Parent" : "305"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2279", "Parent" : "305"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2280", "Parent" : "305"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2281", "Parent" : "305"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2282", "Parent" : "305"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2283", "Parent" : "305"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2284", "Parent" : "305"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2285", "Parent" : "305"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2286", "Parent" : "305"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2287", "Parent" : "305"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2288", "Parent" : "305"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2289", "Parent" : "305"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2290", "Parent" : "305"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2291", "Parent" : "305"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2292", "Parent" : "305"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2293", "Parent" : "305"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0", "Parent" : "0", "Child" : ["324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340"],
		"CDFG" : "PE_wrapper_8_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.local_C_U", "Parent" : "323"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2299", "Parent" : "323"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2300", "Parent" : "323"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2301", "Parent" : "323"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2302", "Parent" : "323"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2303", "Parent" : "323"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2304", "Parent" : "323"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2305", "Parent" : "323"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2306", "Parent" : "323"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2307", "Parent" : "323"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2308", "Parent" : "323"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2309", "Parent" : "323"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2310", "Parent" : "323"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2311", "Parent" : "323"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2312", "Parent" : "323"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2313", "Parent" : "323"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2314", "Parent" : "323"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0", "Parent" : "0", "Child" : ["342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358"],
		"CDFG" : "PE_wrapper_8_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "323", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "511", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "377", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.local_C_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2320", "Parent" : "341"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2321", "Parent" : "341"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2322", "Parent" : "341"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2323", "Parent" : "341"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2324", "Parent" : "341"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2325", "Parent" : "341"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2326", "Parent" : "341"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2327", "Parent" : "341"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2328", "Parent" : "341"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2329", "Parent" : "341"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2330", "Parent" : "341"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2331", "Parent" : "341"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2332", "Parent" : "341"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2333", "Parent" : "341"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2334", "Parent" : "341"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2335", "Parent" : "341"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0", "Parent" : "0", "Child" : ["360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376"],
		"CDFG" : "PE_wrapper_9_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "377", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "323", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "395", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.local_C_U", "Parent" : "359"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2341", "Parent" : "359"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2342", "Parent" : "359"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2343", "Parent" : "359"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2344", "Parent" : "359"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2345", "Parent" : "359"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2346", "Parent" : "359"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2347", "Parent" : "359"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2348", "Parent" : "359"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2349", "Parent" : "359"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2350", "Parent" : "359"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2351", "Parent" : "359"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2352", "Parent" : "359"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2353", "Parent" : "359"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2354", "Parent" : "359"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2355", "Parent" : "359"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2356", "Parent" : "359"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0", "Parent" : "0", "Child" : ["378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394"],
		"CDFG" : "PE_wrapper_9_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "359", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "512", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "566", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.local_C_U", "Parent" : "377"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2362", "Parent" : "377"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2363", "Parent" : "377"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2364", "Parent" : "377"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2365", "Parent" : "377"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2366", "Parent" : "377"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2367", "Parent" : "377"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2368", "Parent" : "377"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2369", "Parent" : "377"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2370", "Parent" : "377"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2371", "Parent" : "377"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2372", "Parent" : "377"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2373", "Parent" : "377"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2374", "Parent" : "377"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2375", "Parent" : "377"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2376", "Parent" : "377"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2377", "Parent" : "377"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0", "Parent" : "0", "Child" : ["396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412"],
		"CDFG" : "PE_wrapper_10_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "359", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "524", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.local_C_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2383", "Parent" : "395"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2384", "Parent" : "395"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2385", "Parent" : "395"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2386", "Parent" : "395"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2387", "Parent" : "395"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2388", "Parent" : "395"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2389", "Parent" : "395"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2390", "Parent" : "395"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2391", "Parent" : "395"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2392", "Parent" : "395"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2393", "Parent" : "395"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2394", "Parent" : "395"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2395", "Parent" : "395"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2396", "Parent" : "395"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2397", "Parent" : "395"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2398", "Parent" : "395"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0", "Parent" : "0", "Child" : ["414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430"],
		"CDFG" : "PE_wrapper_10_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "395", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "513", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "377", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "449", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.local_C_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2404", "Parent" : "413"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2405", "Parent" : "413"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2406", "Parent" : "413"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2407", "Parent" : "413"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2408", "Parent" : "413"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2409", "Parent" : "413"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2410", "Parent" : "413"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2411", "Parent" : "413"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2412", "Parent" : "413"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2413", "Parent" : "413"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2414", "Parent" : "413"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2415", "Parent" : "413"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2416", "Parent" : "413"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2417", "Parent" : "413"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2418", "Parent" : "413"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2419", "Parent" : "413"},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0", "Parent" : "0", "Child" : ["432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448"],
		"CDFG" : "PE_wrapper_11_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "449", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "395", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.local_C_U", "Parent" : "431"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2425", "Parent" : "431"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2426", "Parent" : "431"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2427", "Parent" : "431"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2428", "Parent" : "431"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2429", "Parent" : "431"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2430", "Parent" : "431"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2431", "Parent" : "431"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2432", "Parent" : "431"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2433", "Parent" : "431"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2434", "Parent" : "431"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2435", "Parent" : "431"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2436", "Parent" : "431"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2437", "Parent" : "431"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2438", "Parent" : "431"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2439", "Parent" : "431"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2440", "Parent" : "431"},
	{"ID" : "449", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0", "Parent" : "0", "Child" : ["450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466"],
		"CDFG" : "PE_wrapper_11_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "431", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "514", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "560", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.local_C_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2446", "Parent" : "449"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2447", "Parent" : "449"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2448", "Parent" : "449"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2449", "Parent" : "449"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2450", "Parent" : "449"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2451", "Parent" : "449"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2452", "Parent" : "449"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2453", "Parent" : "449"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2454", "Parent" : "449"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2455", "Parent" : "449"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2456", "Parent" : "449"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2457", "Parent" : "449"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2458", "Parent" : "449"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2459", "Parent" : "449"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2460", "Parent" : "449"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2461", "Parent" : "449"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0", "Parent" : "0", "Child" : ["468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484"],
		"CDFG" : "PE_wrapper_12_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "431", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "516", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "518", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.local_C_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2467", "Parent" : "467"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2468", "Parent" : "467"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2469", "Parent" : "467"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2470", "Parent" : "467"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2471", "Parent" : "467"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2472", "Parent" : "467"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2473", "Parent" : "467"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2474", "Parent" : "467"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2475", "Parent" : "467"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2476", "Parent" : "467"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2477", "Parent" : "467"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2478", "Parent" : "467"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2479", "Parent" : "467"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2480", "Parent" : "467"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2481", "Parent" : "467"},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2482", "Parent" : "467"},
	{"ID" : "485", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0", "Parent" : "0", "Child" : ["486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502"],
		"CDFG" : "PE_wrapper_12_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33857", "EstimateLatencyMax" : "33857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "449", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "557", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.local_C_U", "Parent" : "485"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2488", "Parent" : "485"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2489", "Parent" : "485"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2490", "Parent" : "485"},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2491", "Parent" : "485"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2492", "Parent" : "485"},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2493", "Parent" : "485"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2494", "Parent" : "485"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U2495", "Parent" : "485"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2496", "Parent" : "485"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2497", "Parent" : "485"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2498", "Parent" : "485"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2499", "Parent" : "485"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2500", "Parent" : "485"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2501", "Parent" : "485"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2502", "Parent" : "485"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U2503", "Parent" : "485"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_0_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "504", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_1_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "505", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_2_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "506", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_3_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "507", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_4_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "508", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_5_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "233", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_6_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "510", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_7_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "511", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_8_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "512", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_9_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "377", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "513", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_10_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "514", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_11_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "449", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "515", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_12_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "516", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_0_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_1_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "518", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0", "Parent" : "0", "Child" : ["519", "520"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0.local_C_V_U", "Parent" : "518"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x1_U0.buf_data_split_V_U", "Parent" : "518"},
	{"ID" : "521", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0", "Parent" : "0", "Child" : ["522", "523"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "518", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "524", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "431", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0.local_C_V_U", "Parent" : "521"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x1_U0.buf_data_split_V_U", "Parent" : "521"},
	{"ID" : "524", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0", "Parent" : "0", "Child" : ["525", "526"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "521", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "395", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0.local_C_V_U", "Parent" : "524"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x1_U0.buf_data_split_V_U", "Parent" : "524"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0", "Parent" : "0", "Child" : ["528", "529"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "524", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "359", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0.local_C_V_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x1_U0.buf_data_split_V_U", "Parent" : "527"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0", "Parent" : "0", "Child" : ["531", "532"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "527", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "323", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0.local_C_V_U", "Parent" : "530"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x1_U0.buf_data_split_V_U", "Parent" : "530"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0", "Parent" : "0", "Child" : ["534", "535"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "530", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "536", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0.local_C_V_U", "Parent" : "533"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x1_U0.buf_data_split_V_U", "Parent" : "533"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0", "Parent" : "0", "Child" : ["537", "538"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "533", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0.local_C_V_U", "Parent" : "536"},
	{"ID" : "538", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x1_U0.buf_data_split_V_U", "Parent" : "536"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0", "Parent" : "0", "Child" : ["540", "541"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "536", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "542", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0.local_C_V_U", "Parent" : "539"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x1_U0.buf_data_split_V_U", "Parent" : "539"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0", "Parent" : "0", "Child" : ["543", "544"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "539", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0.local_C_V_U", "Parent" : "542"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x1_U0.buf_data_split_V_U", "Parent" : "542"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0", "Parent" : "0", "Child" : ["546", "547"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "542", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "548", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0.local_C_V_U", "Parent" : "545"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x1_U0.buf_data_split_V_U", "Parent" : "545"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0", "Parent" : "0", "Child" : ["549", "550"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "545", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "551", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0.local_C_V_U", "Parent" : "548"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x1_U0.buf_data_split_V_U", "Parent" : "548"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0", "Parent" : "0", "Child" : ["552", "553"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "548", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "554", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0.local_C_V_U", "Parent" : "551"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x1_U0.buf_data_split_V_U", "Parent" : "551"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0", "Parent" : "0", "Child" : ["555", "556"],
		"CDFG" : "C_drain_IO_L1_out_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16901", "EstimateLatencyMax" : "16901",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "551", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "597", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0.local_C_V_U", "Parent" : "554"},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x1_U0.buf_data_split_V_U", "Parent" : "554"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0", "Parent" : "0", "Child" : ["558", "559"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "560", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0.local_C_V_U", "Parent" : "557"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x1_U0.buf_data_split_V_U", "Parent" : "557"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0", "Parent" : "0", "Child" : ["561", "562"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "557", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "449", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0.local_C_V_U", "Parent" : "560"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x1_U0.buf_data_split_V_U", "Parent" : "560"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0", "Parent" : "0", "Child" : ["564", "565"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "560", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "566", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0.local_C_V_U", "Parent" : "563"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x1_U0.buf_data_split_V_U", "Parent" : "563"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0", "Parent" : "0", "Child" : ["567", "568"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "563", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "377", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0.local_C_V_U", "Parent" : "566"},
	{"ID" : "568", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x1_U0.buf_data_split_V_U", "Parent" : "566"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0", "Parent" : "0", "Child" : ["570", "571"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "566", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0.local_C_V_U", "Parent" : "569"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x1_U0.buf_data_split_V_U", "Parent" : "569"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0", "Parent" : "0", "Child" : ["573", "574"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "569", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0.local_C_V_U", "Parent" : "572"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x1_U0.buf_data_split_V_U", "Parent" : "572"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0", "Parent" : "0", "Child" : ["576", "577"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "572", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0.local_C_V_U", "Parent" : "575"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x1_U0.buf_data_split_V_U", "Parent" : "575"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0", "Parent" : "0", "Child" : ["579", "580"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "575", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "233", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0.local_C_V_U", "Parent" : "578"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x1_U0.buf_data_split_V_U", "Parent" : "578"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0", "Parent" : "0", "Child" : ["582", "583"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "578", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "582", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0.local_C_V_U", "Parent" : "581"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x1_U0.buf_data_split_V_U", "Parent" : "581"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0", "Parent" : "0", "Child" : ["585", "586"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0.local_C_V_U", "Parent" : "584"},
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x1_U0.buf_data_split_V_U", "Parent" : "584"},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0", "Parent" : "0", "Child" : ["588", "589"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "584", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0.local_C_V_U", "Parent" : "587"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x1_U0.buf_data_split_V_U", "Parent" : "587"},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0", "Parent" : "0", "Child" : ["591", "592"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "587", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "593", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0.local_C_V_U", "Parent" : "590"},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x1_U0.buf_data_split_V_U", "Parent" : "590"},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0", "Parent" : "0", "Child" : ["594", "595"],
		"CDFG" : "C_drain_IO_L1_out_23_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16901", "EstimateLatencyMax" : "16901",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "590", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "596", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0.local_C_V_U", "Parent" : "593"},
	{"ID" : "595", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x1_U0.buf_data_split_V_U", "Parent" : "593"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "597", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "593", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "596", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "598", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "554", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x1_U0", "Parent" : "0", "Child" : ["599"],
		"CDFG" : "C_drain_IO_L3_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23622", "EstimateLatencyMax" : "23622",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_C_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_C_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_C_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "597", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "601", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x1_U0.mem_data_split_V_U", "Parent" : "598"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_8_x1_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_9_x1_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_10_x1_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_11_x1_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_12_x1_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "650", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "651", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "653", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "654", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x1_U", "Parent" : "0"},
	{"ID" : "665", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x1_U", "Parent" : "0"},
	{"ID" : "666", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "667", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x1_U", "Parent" : "0"},
	{"ID" : "668", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "669", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "670", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x1_U", "Parent" : "0"},
	{"ID" : "671", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x1_U", "Parent" : "0"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "673", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x1_U", "Parent" : "0"},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "675", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x1_U", "Parent" : "0"},
	{"ID" : "677", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x1_U", "Parent" : "0"},
	{"ID" : "678", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x1_U", "Parent" : "0"},
	{"ID" : "680", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "681", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "682", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_0_x1_U", "Parent" : "0"},
	{"ID" : "683", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_2_x1_U", "Parent" : "0"},
	{"ID" : "684", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "685", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_1_x1_U", "Parent" : "0"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "687", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_0_x1_U", "Parent" : "0"},
	{"ID" : "689", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_2_x1_U", "Parent" : "0"},
	{"ID" : "690", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "691", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_1_x1_U", "Parent" : "0"},
	{"ID" : "692", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "693", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "694", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_0_x1_U", "Parent" : "0"},
	{"ID" : "695", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_2_x1_U", "Parent" : "0"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "697", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_1_x1_U", "Parent" : "0"},
	{"ID" : "698", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "699", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "700", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_0_x1_U", "Parent" : "0"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_2_x1_U", "Parent" : "0"},
	{"ID" : "702", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_1_x1_U", "Parent" : "0"},
	{"ID" : "704", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_0_x1_U", "Parent" : "0"},
	{"ID" : "706", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_0_x1_U", "Parent" : "0"},
	{"ID" : "707", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_2_x1_U", "Parent" : "0"},
	{"ID" : "708", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_1_x1_U", "Parent" : "0"},
	{"ID" : "709", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_1_x1_U", "Parent" : "0"},
	{"ID" : "710", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U", "Parent" : "0"},
	{"ID" : "711", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_11_x1_U", "Parent" : "0"},
	{"ID" : "712", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_10_x1_U", "Parent" : "0"},
	{"ID" : "713", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U", "Parent" : "0"},
	{"ID" : "714", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_8_x1_U", "Parent" : "0"},
	{"ID" : "715", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U", "Parent" : "0"},
	{"ID" : "716", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U", "Parent" : "0"},
	{"ID" : "717", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U", "Parent" : "0"},
	{"ID" : "718", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x1_U", "Parent" : "0"},
	{"ID" : "719", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x1_U", "Parent" : "0"},
	{"ID" : "720", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x1_U", "Parent" : "0"},
	{"ID" : "721", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U", "Parent" : "0"},
	{"ID" : "722", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U", "Parent" : "0"},
	{"ID" : "723", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U", "Parent" : "0"},
	{"ID" : "724", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U", "Parent" : "0"},
	{"ID" : "725", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_10_x1_U", "Parent" : "0"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_9_x1_U", "Parent" : "0"},
	{"ID" : "727", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_8_x1_U", "Parent" : "0"},
	{"ID" : "728", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x1_U", "Parent" : "0"},
	{"ID" : "729", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x1_U", "Parent" : "0"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x1_U", "Parent" : "0"},
	{"ID" : "731", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x1_U", "Parent" : "0"},
	{"ID" : "732", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x1_U", "Parent" : "0"},
	{"ID" : "733", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x1_U", "Parent" : "0"},
	{"ID" : "734", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x1_U", "Parent" : "0"},
	{"ID" : "735", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U", "Parent" : "0"},
	{"ID" : "736", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x1_U", "Parent" : "0"},
	{"ID" : "737", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel3_x1 {
		gmem_C {Type O LastRead 3 FirstWrite 8}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 62 FirstWrite -1}}
	kernel3_x1_entry31 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	kernel3_x1_entry42 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_x1 {
		fifo_A_A_IO_L2_in_0_x11 {Type O LastRead -1 FirstWrite 3}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L2_in_0_x1 {
		fifo_A_A_IO_L2_in_0_x11 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x12 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_0_0_x116 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x12 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x13 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_1_0_x119 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_2_x1 {
		fifo_A_A_IO_L2_in_2_x13 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x14 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_2_0_x122 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_3_x1 {
		fifo_A_A_IO_L2_in_3_x14 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x15 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_3_0_x125 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_4_x1 {
		fifo_A_A_IO_L2_in_4_x15 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x16 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_4_0_x128 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_5_x1 {
		fifo_A_A_IO_L2_in_5_x16 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x17 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_5_0_x131 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_6_x1 {
		fifo_A_A_IO_L2_in_6_x17 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x18 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_6_0_x134 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_7_x1 {
		fifo_A_A_IO_L2_in_7_x18 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_8_x19 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_7_0_x137 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_8_x1 {
		fifo_A_A_IO_L2_in_8_x19 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_9_x110 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_8_0_x140 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_9_x1 {
		fifo_A_A_IO_L2_in_9_x110 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_10_x111 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_9_0_x143 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_10_x1 {
		fifo_A_A_IO_L2_in_10_x111 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_11_x112 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_10_0_x146 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_11_x1 {
		fifo_A_A_IO_L2_in_11_x112 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_12_x113 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_11_0_x149 {Type O LastRead -1 FirstWrite 4}}
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
		fifo_C_drain_C_drain_IO_L1_out_0_1_x1110 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x1109 {Type O LastRead -1 FirstWrite 5}
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
		fifo_C_drain_C_drain_IO_L1_out_1_1_x1123 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1122 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_0_1_x196 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x1 {
		fifo_C_drain_C_drain_IO_L2_out_1_x1136 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1122 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_x1 {
		fifo_C_drain_C_drain_IO_L2_out_1_x1136 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x1135 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x1109 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L3_out_x1 {
		gmem_C {Type O LastRead 3 FirstWrite 8}
		fifo_C_drain_local_in {Type I LastRead 4 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "59754", "Max" : "59754"}
	, {"Name" : "Interval", "Min" : "39429", "Max" : "39429"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 32 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 32 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
	B { ap_memory {  { B_address0 mem_address 1 10 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 32 }  { B_q0 mem_dout 0 32 }  { B_we0 mem_we 1 1 }  { B_address1 MemPortADDR2 1 10 }  { B_ce1 MemPortCE2 1 1 }  { B_d1 mem_din 1 32 }  { B_q1 MemPortDOUT2 0 32 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
}
