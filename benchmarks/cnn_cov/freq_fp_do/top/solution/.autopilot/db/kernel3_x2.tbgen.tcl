set moduleName kernel3_x2
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
set C_modelName {kernel3_x2}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_C int 512 regular {axi_master 1}  }
	{ B int 503 regular {array 4096 { 1 1 } 1 1 }  }
	{ C int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 503, "direction" : "READONLY"} , 
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
	{ B_address0 sc_out sc_lv 12 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_d0 sc_out sc_lv 503 signal 1 } 
	{ B_q0 sc_in sc_lv 503 signal 1 } 
	{ B_we0 sc_out sc_logic 1 signal 1 } 
	{ B_address1 sc_out sc_lv 12 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_d1 sc_out sc_lv 503 signal 1 } 
	{ B_q1 sc_in sc_lv 503 signal 1 } 
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
		"CDFG" : "kernel3_x2",
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
			{"ID" : "1", "Name" : "kernel3_x2_entry48_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_x2_U0"},
			{"ID" : "32", "Name" : "B_IO_L3_in_x2_U0"}],
		"OutputProcess" : [
			{"ID" : "193", "Name" : "A_PE_dummy_0_x2_U0"},
			{"ID" : "194", "Name" : "A_PE_dummy_1_x2_U0"},
			{"ID" : "195", "Name" : "A_PE_dummy_2_x2_U0"},
			{"ID" : "196", "Name" : "A_PE_dummy_3_x2_U0"},
			{"ID" : "197", "Name" : "A_PE_dummy_4_x2_U0"},
			{"ID" : "198", "Name" : "A_PE_dummy_5_x2_U0"},
			{"ID" : "199", "Name" : "A_PE_dummy_6_x2_U0"},
			{"ID" : "200", "Name" : "A_PE_dummy_7_x2_U0"},
			{"ID" : "201", "Name" : "A_PE_dummy_8_x2_U0"},
			{"ID" : "202", "Name" : "A_PE_dummy_9_x2_U0"},
			{"ID" : "203", "Name" : "A_PE_dummy_10_x2_U0"},
			{"ID" : "204", "Name" : "A_PE_dummy_11_x2_U0"},
			{"ID" : "205", "Name" : "A_PE_dummy_12_x2_U0"},
			{"ID" : "206", "Name" : "B_PE_dummy_0_x2_U0"},
			{"ID" : "207", "Name" : "B_PE_dummy_1_x2_U0"},
			{"ID" : "288", "Name" : "C_drain_IO_L3_out_x2_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "288", "SubInstance" : "C_drain_IO_L3_out_x2_U0", "Port" : "gmem_C"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "B_IO_L3_in_x2_U0", "Port" : "B"},
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_x2_U0", "Port" : "A"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel3_x2_entry48_U0", "Parent" : "0",
		"CDFG" : "kernel3_x2_entry48",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel3_x2_entry65_U0", "Parent" : "0",
		"CDFG" : "kernel3_x2_entry65",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x2_U0", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "A_IO_L3_in_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x2_U0.add_12ns_12ns_12_1_1_U980", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x2_U0.add_2ns_2ns_2_1_1_U981", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x2_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "A_IO_L2_in_0_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x2_U0.local_A_pong_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x2_U0", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "A_IO_L2_in_1_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x2_U0.local_A_pong_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x2_U0", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "A_IO_L2_in_2_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x2_U0.local_A_pong_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x2_U0", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "A_IO_L2_in_3_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x2_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x2_U0", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "A_IO_L2_in_4_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x2_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x2_U0", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "A_IO_L2_in_5_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x231_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x2_U0.local_A_pong_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x2_U0", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "A_IO_L2_in_6_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x27", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x234", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x234_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x2_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x2_U0", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "A_IO_L2_in_7_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x28", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x237", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x237_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x2_U0.local_A_pong_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x2_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "A_IO_L2_in_8_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x29", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x240", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "133", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x240_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x2_U0.local_A_pong_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x2_U0", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "A_IO_L2_in_9_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x243", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x243_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x2_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x2_U0", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "A_IO_L2_in_10_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x246", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x246_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x2_U0.local_A_pong_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x2_U0", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "A_IO_L2_in_11_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x213_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x249", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x249_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x2_U0.local_A_pong_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x2_U0", "Parent" : "0", "Child" : ["31"],
		"CDFG" : "A_IO_L2_in_boundary_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x213_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x252", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x252_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x2_U0.local_A_pong_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x2_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x2",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x2_U0", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "B_IO_L2_in_x2",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x215_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x255", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x255_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x2_U0.local_B_pong_V_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x2_U0", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "B_IO_L2_in_boundary_x2",
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x215_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x269", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x269_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x2_U0.local_B_pong_V_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0", "Parent" : "0", "Child" : ["38", "39", "40", "41", "42"],
		"CDFG" : "PE_wrapper_0_0_x2",
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
			{"Name" : "fifo_A_PE_0_0_x216", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x216_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x217_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x255", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x256", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x283", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x283_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.local_A_0_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.local_B_0_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.local_C_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1029", "Parent" : "37"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1030", "Parent" : "37"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0", "Parent" : "0", "Child" : ["44", "45", "46", "47", "48"],
		"CDFG" : "PE_wrapper_0_1_x2",
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
			{"Name" : "fifo_A_PE_0_1_x217", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x217_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x218_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x269", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x270", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x296", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x296_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.local_A_0_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.local_B_0_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.local_C_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1036", "Parent" : "43"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1037", "Parent" : "43"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54"],
		"CDFG" : "PE_wrapper_1_0_x2",
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
			{"Name" : "fifo_A_PE_1_0_x219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x219_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x220_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x256", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x257", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x284", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.local_A_0_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.local_B_0_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.local_C_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1043", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1044", "Parent" : "49"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0", "Parent" : "0", "Child" : ["56", "57", "58", "59", "60"],
		"CDFG" : "PE_wrapper_1_1_x2",
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
			{"Name" : "fifo_A_PE_1_1_x220", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x220_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x221_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x270", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x271", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x297", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x297_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.local_A_0_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.local_B_0_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.local_C_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1050", "Parent" : "55"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1051", "Parent" : "55"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0", "Parent" : "0", "Child" : ["62", "63", "64", "65", "66"],
		"CDFG" : "PE_wrapper_2_0_x2",
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
			{"Name" : "fifo_A_PE_2_0_x222", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x222_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x223", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x223_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x257", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x258", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x285", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x285_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.local_A_0_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.local_B_0_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.local_C_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1057", "Parent" : "61"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1058", "Parent" : "61"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0", "Parent" : "0", "Child" : ["68", "69", "70", "71", "72"],
		"CDFG" : "PE_wrapper_2_1_x2",
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
			{"Name" : "fifo_A_PE_2_1_x223", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x223_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x224_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x271", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x272", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x298_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.local_A_0_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.local_B_0_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.local_C_U", "Parent" : "67"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1064", "Parent" : "67"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1065", "Parent" : "67"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0", "Parent" : "0", "Child" : ["74", "75", "76", "77", "78"],
		"CDFG" : "PE_wrapper_3_0_x2",
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
			{"Name" : "fifo_A_PE_3_0_x225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x225_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x226_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x258", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x259", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x286", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x286_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.local_A_0_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.local_B_0_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.local_C_U", "Parent" : "73"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1071", "Parent" : "73"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1072", "Parent" : "73"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0", "Parent" : "0", "Child" : ["80", "81", "82", "83", "84"],
		"CDFG" : "PE_wrapper_3_1_x2",
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
			{"Name" : "fifo_A_PE_3_1_x226", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x226_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x227_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x272", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x273", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x299", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x299_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.local_A_0_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.local_B_0_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.local_C_U", "Parent" : "79"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1078", "Parent" : "79"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1079", "Parent" : "79"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0", "Parent" : "0", "Child" : ["86", "87", "88", "89", "90"],
		"CDFG" : "PE_wrapper_4_0_x2",
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
			{"Name" : "fifo_A_PE_4_0_x228", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x228_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x229", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x259", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x260", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x287", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x287_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.local_A_0_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.local_B_0_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.local_C_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1085", "Parent" : "85"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1086", "Parent" : "85"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0", "Parent" : "0", "Child" : ["92", "93", "94", "95", "96"],
		"CDFG" : "PE_wrapper_4_1_x2",
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
			{"Name" : "fifo_A_PE_4_1_x229", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x273", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x2100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x2100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.local_A_0_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.local_B_0_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.local_C_U", "Parent" : "91"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1092", "Parent" : "91"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1093", "Parent" : "91"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0", "Parent" : "0", "Child" : ["98", "99", "100", "101", "102"],
		"CDFG" : "PE_wrapper_5_0_x2",
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
			{"Name" : "fifo_A_PE_5_0_x231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x260", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x261", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x288", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x288_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.local_A_0_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.local_B_0_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.local_C_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1099", "Parent" : "97"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1100", "Parent" : "97"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0", "Parent" : "0", "Child" : ["104", "105", "106", "107", "108"],
		"CDFG" : "PE_wrapper_5_1_x2",
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
			{"Name" : "fifo_A_PE_5_1_x232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x233", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x274", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x275", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x2101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x2101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.local_A_0_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.local_B_0_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.local_C_U", "Parent" : "103"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1106", "Parent" : "103"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1107", "Parent" : "103"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0", "Parent" : "0", "Child" : ["110", "111", "112", "113", "114"],
		"CDFG" : "PE_wrapper_6_0_x2",
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
			{"Name" : "fifo_A_PE_6_0_x234", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x261", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x262", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x289", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x289_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.local_A_0_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.local_B_0_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.local_C_U", "Parent" : "109"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1113", "Parent" : "109"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1114", "Parent" : "109"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0", "Parent" : "0", "Child" : ["116", "117", "118", "119", "120"],
		"CDFG" : "PE_wrapper_6_1_x2",
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
			{"Name" : "fifo_A_PE_6_1_x235", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x236", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x236_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x275", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x276", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x2102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x2102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.local_A_0_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.local_B_0_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.local_C_U", "Parent" : "115"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1120", "Parent" : "115"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1121", "Parent" : "115"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0", "Parent" : "0", "Child" : ["122", "123", "124", "125", "126"],
		"CDFG" : "PE_wrapper_7_0_x2",
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
			{"Name" : "fifo_A_PE_7_0_x237", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x262", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x263", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "133", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x290", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x290_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.local_A_0_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.local_B_0_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.local_C_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1127", "Parent" : "121"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1128", "Parent" : "121"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0", "Parent" : "0", "Child" : ["128", "129", "130", "131", "132"],
		"CDFG" : "PE_wrapper_7_1_x2",
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
			{"Name" : "fifo_A_PE_7_1_x238", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x2103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x2103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.local_A_0_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.local_B_0_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.local_C_U", "Parent" : "127"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1134", "Parent" : "127"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1135", "Parent" : "127"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0", "Parent" : "0", "Child" : ["134", "135", "136", "137", "138"],
		"CDFG" : "PE_wrapper_8_0_x2",
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
			{"Name" : "fifo_A_PE_8_0_x240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x241", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x263", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x264", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x291", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x291_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.local_A_0_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.local_B_0_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.local_C_U", "Parent" : "133"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1141", "Parent" : "133"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1142", "Parent" : "133"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0", "Parent" : "0", "Child" : ["140", "141", "142", "143", "144"],
		"CDFG" : "PE_wrapper_8_1_x2",
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
			{"Name" : "fifo_A_PE_8_1_x241", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x242", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x277", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x278", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x2104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x2104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.local_A_0_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.local_B_0_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.local_C_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1148", "Parent" : "139"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1149", "Parent" : "139"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0", "Parent" : "0", "Child" : ["146", "147", "148", "149", "150"],
		"CDFG" : "PE_wrapper_9_0_x2",
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
			{"Name" : "fifo_A_PE_9_0_x243", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x244", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x264", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x265", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x292", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x292_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.local_A_0_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.local_B_0_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.local_C_U", "Parent" : "145"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1155", "Parent" : "145"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1156", "Parent" : "145"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0", "Parent" : "0", "Child" : ["152", "153", "154", "155", "156"],
		"CDFG" : "PE_wrapper_9_1_x2",
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
			{"Name" : "fifo_A_PE_9_1_x244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x245", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x2105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x2105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.local_A_0_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.local_B_0_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.local_C_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1162", "Parent" : "151"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1163", "Parent" : "151"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0", "Parent" : "0", "Child" : ["158", "159", "160", "161", "162"],
		"CDFG" : "PE_wrapper_10_0_x2",
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
			{"Name" : "fifo_A_PE_10_0_x246", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x247", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x265", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x266", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x293_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.local_A_0_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.local_B_0_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.local_C_U", "Parent" : "157"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1169", "Parent" : "157"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1170", "Parent" : "157"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0", "Parent" : "0", "Child" : ["164", "165", "166", "167", "168"],
		"CDFG" : "PE_wrapper_10_1_x2",
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
			{"Name" : "fifo_A_PE_10_1_x247", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x248", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x279", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x2106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x2106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.local_A_0_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.local_B_0_U", "Parent" : "163"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.local_C_U", "Parent" : "163"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1176", "Parent" : "163"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1177", "Parent" : "163"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0", "Parent" : "0", "Child" : ["170", "171", "172", "173", "174"],
		"CDFG" : "PE_wrapper_11_0_x2",
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
			{"Name" : "fifo_A_PE_11_0_x249", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x266", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x267", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x294_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.local_A_0_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.local_B_0_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.local_C_U", "Parent" : "169"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1183", "Parent" : "169"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1184", "Parent" : "169"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0", "Parent" : "0", "Child" : ["176", "177", "178", "179", "180"],
		"CDFG" : "PE_wrapper_11_1_x2",
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
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.local_A_0_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.local_B_0_U", "Parent" : "175"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.local_C_U", "Parent" : "175"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1190", "Parent" : "175"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1191", "Parent" : "175"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0", "Parent" : "0", "Child" : ["182", "183", "184", "185", "186"],
		"CDFG" : "PE_wrapper_12_0_x2",
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
			{"Name" : "fifo_A_PE_12_0_x252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x252_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x253", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x267", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x268", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x268_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x295_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.local_A_0_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.local_B_0_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.local_C_U", "Parent" : "181"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1197", "Parent" : "181"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1198", "Parent" : "181"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0", "Parent" : "0", "Child" : ["188", "189", "190", "191", "192"],
		"CDFG" : "PE_wrapper_12_1_x2",
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
			{"Name" : "fifo_A_PE_12_1_x253", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x254", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x282", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x2108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "247", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x2108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.local_A_0_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.local_B_0_U", "Parent" : "187"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.local_C_U", "Parent" : "187"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1204", "Parent" : "187"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1205", "Parent" : "187"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_0_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_0_x2",
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
			{"Name" : "fifo_A_PE_0_2_x218", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_1_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_1_x2",
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
			{"Name" : "fifo_A_PE_1_2_x221", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_2_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_2_x2",
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
			{"Name" : "fifo_A_PE_2_2_x224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_3_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_3_x2",
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
			{"Name" : "fifo_A_PE_3_2_x227", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_4_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_4_x2",
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
			{"Name" : "fifo_A_PE_4_2_x230", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x230_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_5_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_5_x2",
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
			{"Name" : "fifo_A_PE_5_2_x233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x233_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_6_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_6_x2",
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
			{"Name" : "fifo_A_PE_6_2_x236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x236_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_7_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_7_x2",
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
			{"Name" : "fifo_A_PE_7_2_x239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x239_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_8_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_8_x2",
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
			{"Name" : "fifo_A_PE_8_2_x242", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x242_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_9_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_9_x2",
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
			{"Name" : "fifo_A_PE_9_2_x245", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x245_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_10_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_10_x2",
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
			{"Name" : "fifo_A_PE_10_2_x248", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x248_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_11_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_11_x2",
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
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_12_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_12_x2",
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
			{"Name" : "fifo_A_PE_12_2_x254", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x254_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_0_x2_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_0_x2",
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
			{"Name" : "fifo_B_PE_13_0_x268", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x268_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_1_x2_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_1_x2",
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
			{"Name" : "fifo_B_PE_13_1_x282", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x282_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x2_U0", "Parent" : "0", "Child" : ["209", "210"],
		"CDFG" : "C_drain_IO_L1_out_boundary_0_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x295_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x2_U0.local_C_V_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x2_U0.buf_data_split_V_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x2_U0", "Parent" : "0", "Child" : ["212", "213"],
		"CDFG" : "C_drain_IO_L1_out_0_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x294_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x2_U0.local_C_V_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x2_U0.buf_data_split_V_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x2_U0", "Parent" : "0", "Child" : ["215", "216"],
		"CDFG" : "C_drain_IO_L1_out_1_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "211", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x293", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x293_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x2_U0.local_C_V_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x2_U0.buf_data_split_V_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x2_U0", "Parent" : "0", "Child" : ["218", "219"],
		"CDFG" : "C_drain_IO_L1_out_2_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x292", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x292_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x2_U0.local_C_V_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x2_U0.buf_data_split_V_U", "Parent" : "217"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x2_U0", "Parent" : "0", "Child" : ["221", "222"],
		"CDFG" : "C_drain_IO_L1_out_3_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x291", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x291_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x2_U0.local_C_V_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x2_U0.buf_data_split_V_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x2_U0", "Parent" : "0", "Child" : ["224", "225"],
		"CDFG" : "C_drain_IO_L1_out_4_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x290", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x290_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x2_U0.local_C_V_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x2_U0.buf_data_split_V_U", "Parent" : "223"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x2_U0", "Parent" : "0", "Child" : ["227", "228"],
		"CDFG" : "C_drain_IO_L1_out_5_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x289", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x289_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x2_U0.local_C_V_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x2_U0.buf_data_split_V_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x2_U0", "Parent" : "0", "Child" : ["230", "231"],
		"CDFG" : "C_drain_IO_L1_out_6_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x288", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x288_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x2_U0.local_C_V_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x2_U0.buf_data_split_V_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x2_U0", "Parent" : "0", "Child" : ["233", "234"],
		"CDFG" : "C_drain_IO_L1_out_7_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "229", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x287", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x287_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x2_U0.local_C_V_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x2_U0.buf_data_split_V_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x2_U0", "Parent" : "0", "Child" : ["236", "237"],
		"CDFG" : "C_drain_IO_L1_out_8_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x286", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x286_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x2_U0.local_C_V_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x2_U0.buf_data_split_V_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x2_U0", "Parent" : "0", "Child" : ["239", "240"],
		"CDFG" : "C_drain_IO_L1_out_9_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x285", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x285_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x2_U0.local_C_V_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x2_U0.buf_data_split_V_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x2_U0", "Parent" : "0", "Child" : ["242", "243"],
		"CDFG" : "C_drain_IO_L1_out_10_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x2_U0.local_C_V_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x2_U0.buf_data_split_V_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x2_U0", "Parent" : "0", "Child" : ["245", "246"],
		"CDFG" : "C_drain_IO_L1_out_11_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "241", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x283", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x283_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x2_U0.local_C_V_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x2_U0.buf_data_split_V_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x2_U0", "Parent" : "0", "Child" : ["248", "249"],
		"CDFG" : "C_drain_IO_L1_out_boundary_1_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x2108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x2108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x2_U0.local_C_V_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x2_U0.buf_data_split_V_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x2_U0", "Parent" : "0", "Child" : ["251", "252"],
		"CDFG" : "C_drain_IO_L1_out_12_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "247", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x2_U0.local_C_V_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x2_U0.buf_data_split_V_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x2_U0", "Parent" : "0", "Child" : ["254", "255"],
		"CDFG" : "C_drain_IO_L1_out_13_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x2106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x2106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x2_U0.local_C_V_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x2_U0.buf_data_split_V_U", "Parent" : "253"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x2_U0", "Parent" : "0", "Child" : ["257", "258"],
		"CDFG" : "C_drain_IO_L1_out_14_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "253", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x2105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x2105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x2_U0.local_C_V_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x2_U0.buf_data_split_V_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x2_U0", "Parent" : "0", "Child" : ["260", "261"],
		"CDFG" : "C_drain_IO_L1_out_15_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x2104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x2104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x2_U0.local_C_V_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x2_U0.buf_data_split_V_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x2_U0", "Parent" : "0", "Child" : ["263", "264"],
		"CDFG" : "C_drain_IO_L1_out_16_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "259", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x2103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x2103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x2_U0.local_C_V_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x2_U0.buf_data_split_V_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x2_U0", "Parent" : "0", "Child" : ["266", "267"],
		"CDFG" : "C_drain_IO_L1_out_17_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x2102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x2102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x2_U0.local_C_V_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x2_U0.buf_data_split_V_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x2_U0", "Parent" : "0", "Child" : ["269", "270"],
		"CDFG" : "C_drain_IO_L1_out_18_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x2101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x2101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x2_U0.local_C_V_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x2_U0.buf_data_split_V_U", "Parent" : "268"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x2_U0", "Parent" : "0", "Child" : ["272", "273"],
		"CDFG" : "C_drain_IO_L1_out_19_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x2100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x2100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x2_U0.local_C_V_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x2_U0.buf_data_split_V_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x2_U0", "Parent" : "0", "Child" : ["275", "276"],
		"CDFG" : "C_drain_IO_L1_out_20_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "271", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x299_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x2_U0.local_C_V_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x2_U0.buf_data_split_V_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x2_U0", "Parent" : "0", "Child" : ["278", "279"],
		"CDFG" : "C_drain_IO_L1_out_21_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x298", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x298_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x2_U0.local_C_V_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x2_U0.buf_data_split_V_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x2_U0", "Parent" : "0", "Child" : ["281", "282"],
		"CDFG" : "C_drain_IO_L1_out_22_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "277", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x297", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x297_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x2_U0.local_C_V_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x2_U0.buf_data_split_V_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x2_U0", "Parent" : "0", "Child" : ["284", "285"],
		"CDFG" : "C_drain_IO_L1_out_23_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x296", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x296_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x2_U0.local_C_V_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x2_U0.buf_data_split_V_U", "Parent" : "283"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x2_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_boundary_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "283", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_x2_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x2135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "288", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x2135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x2_U0", "Parent" : "0", "Child" : ["289"],
		"CDFG" : "C_drain_IO_L3_out_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47174", "EstimateLatencyMax" : "47174",
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
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x2_U0.mem_data_split_V_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x2_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x2_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x2_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x2_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x2_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x2_U", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x2_U", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x2_U", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x2_U", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x2_U", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x2_U", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x2_U", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x2_U", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x2_U", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x2_U", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_8_x2_U", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x2_U", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_9_x2_U", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_0_x2_U", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_10_x2_U", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_0_x2_U", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_11_x2_U", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_0_x2_U", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_12_x2_U", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_0_x2_U", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_0_x2_U", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x2_U", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x2_U", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x2_U", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x2_U", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x2_U", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x2_U", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x2_U", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x2_U", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x2_U", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x2_U", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x2_U", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x2_U", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x2_U", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x2_U", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x2_U", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x2_U", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x2_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x2_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x2_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x2_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x2_U", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x2_U", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x2_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x2_U", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x2_U", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x2_U", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x2_U", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x2_U", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x2_U", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x2_U", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x2_U", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x2_U", "Parent" : "0"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x2_U", "Parent" : "0"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x2_U", "Parent" : "0"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x2_U", "Parent" : "0"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x2_U", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x2_U", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x2_U", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x2_U", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x2_U", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x2_U", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x2_U", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x2_U", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x2_U", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x2_U", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x2_U", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x2_U", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x2_U", "Parent" : "0"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x2_U", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x2_U", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x2_U", "Parent" : "0"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x2_U", "Parent" : "0"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_1_x2_U", "Parent" : "0"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_0_x2_U", "Parent" : "0"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_0_x2_U", "Parent" : "0"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_2_x2_U", "Parent" : "0"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_1_x2_U", "Parent" : "0"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_1_x2_U", "Parent" : "0"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_1_x2_U", "Parent" : "0"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_0_x2_U", "Parent" : "0"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_0_x2_U", "Parent" : "0"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_2_x2_U", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_1_x2_U", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_1_x2_U", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_1_x2_U", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_0_x2_U", "Parent" : "0"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_0_x2_U", "Parent" : "0"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_2_x2_U", "Parent" : "0"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_1_x2_U", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_1_x2_U", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_1_x2_U", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_0_x2_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_0_x2_U", "Parent" : "0"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_2_x2_U", "Parent" : "0"},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_1_x2_U", "Parent" : "0"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_1_x2_U", "Parent" : "0"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_1_x2_U", "Parent" : "0"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_0_x2_U", "Parent" : "0"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_0_x2_U", "Parent" : "0"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_2_x2_U", "Parent" : "0"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_1_x2_U", "Parent" : "0"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_1_x2_U", "Parent" : "0"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_12_x2_U", "Parent" : "0"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_11_x2_U", "Parent" : "0"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_10_x2_U", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_9_x2_U", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_8_x2_U", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x2_U", "Parent" : "0"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x2_U", "Parent" : "0"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x2_U", "Parent" : "0"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x2_U", "Parent" : "0"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x2_U", "Parent" : "0"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x2_U", "Parent" : "0"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x2_U", "Parent" : "0"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x2_U", "Parent" : "0"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_12_x2_U", "Parent" : "0"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_11_x2_U", "Parent" : "0"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_10_x2_U", "Parent" : "0"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_9_x2_U", "Parent" : "0"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_8_x2_U", "Parent" : "0"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x2_U", "Parent" : "0"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x2_U", "Parent" : "0"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x2_U", "Parent" : "0"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x2_U", "Parent" : "0"},
	{"ID" : "422", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x2_U", "Parent" : "0"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x2_U", "Parent" : "0"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x2_U", "Parent" : "0"},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x2_U", "Parent" : "0"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x2_U", "Parent" : "0"},
	{"ID" : "427", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x2_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel3_x2 {
		gmem_C {Type O LastRead 3 FirstWrite 8}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 62 FirstWrite -1}}
	kernel3_x2_entry48 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	kernel3_x2_entry65 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_x2 {
		fifo_A_A_IO_L2_in_0_x21 {Type O LastRead -1 FirstWrite 3}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L2_in_0_x2 {
		fifo_A_A_IO_L2_in_0_x21 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x22 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_0_0_x216 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_1_x2 {
		fifo_A_A_IO_L2_in_1_x22 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x23 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x219 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_2_x2 {
		fifo_A_A_IO_L2_in_2_x23 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x24 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_2_0_x222 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_3_x2 {
		fifo_A_A_IO_L2_in_3_x24 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x25 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_3_0_x225 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_4_x2 {
		fifo_A_A_IO_L2_in_4_x25 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x26 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_4_0_x228 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_5_x2 {
		fifo_A_A_IO_L2_in_5_x26 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x27 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_5_0_x231 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_6_x2 {
		fifo_A_A_IO_L2_in_6_x27 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x28 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_6_0_x234 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_7_x2 {
		fifo_A_A_IO_L2_in_7_x28 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_8_x29 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_7_0_x237 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_8_x2 {
		fifo_A_A_IO_L2_in_8_x29 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_9_x210 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_8_0_x240 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_9_x2 {
		fifo_A_A_IO_L2_in_9_x210 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_10_x211 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_9_0_x243 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_10_x2 {
		fifo_A_A_IO_L2_in_10_x211 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_11_x212 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_10_0_x246 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_11_x2 {
		fifo_A_A_IO_L2_in_11_x212 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_12_x213 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_11_0_x249 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_boundary_x2 {
		fifo_A_A_IO_L2_in_12_x213 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_12_0_x252 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L3_in_x2 {
		fifo_B_B_IO_L2_in_0_x214 {Type O LastRead -1 FirstWrite 3}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L2_in_x2 {
		fifo_B_B_IO_L2_in_0_x214 {Type I LastRead 4 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x215 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_0_x255 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_boundary_x2 {
		fifo_B_B_IO_L2_in_1_x215 {Type I LastRead 3 FirstWrite -1}
		fifo_B_PE_0_1_x269 {Type O LastRead -1 FirstWrite 5}}
	PE_wrapper_0_0_x2 {
		fifo_A_PE_0_0_x216 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_1_x217 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_0_x255 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_0_x256 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_0_0_x283 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_0_1_x2 {
		fifo_A_PE_0_1_x217 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x218 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_1_x269 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_1_x270 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_0_1_x296 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_1_0_x2 {
		fifo_A_PE_1_0_x219 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x220 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_0_x256 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_0_x257 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_1_0_x284 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_1_1_x2 {
		fifo_A_PE_1_1_x220 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_2_x221 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_1_x270 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_1_x271 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_1_1_x297 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_2_0_x2 {
		fifo_A_PE_2_0_x222 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_1_x223 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_0_x257 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_3_0_x258 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_2_0_x285 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_2_1_x2 {
		fifo_A_PE_2_1_x223 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_2_x224 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_1_x271 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_3_1_x272 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_2_1_x298 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_3_0_x2 {
		fifo_A_PE_3_0_x225 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_1_x226 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_0_x258 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_4_0_x259 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_3_0_x286 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_3_1_x2 {
		fifo_A_PE_3_1_x226 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_2_x227 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_1_x272 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_4_1_x273 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_3_1_x299 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_4_0_x2 {
		fifo_A_PE_4_0_x228 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_1_x229 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_4_0_x259 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_5_0_x260 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_4_0_x287 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_4_1_x2 {
		fifo_A_PE_4_1_x229 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_2_x230 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_4_1_x273 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_5_1_x274 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_4_1_x2100 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_5_0_x2 {
		fifo_A_PE_5_0_x231 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_1_x232 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_5_0_x260 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_6_0_x261 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_5_0_x288 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_5_1_x2 {
		fifo_A_PE_5_1_x232 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_2_x233 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_5_1_x274 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_6_1_x275 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_5_1_x2101 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_6_0_x2 {
		fifo_A_PE_6_0_x234 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_1_x235 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_6_0_x261 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_7_0_x262 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_6_0_x289 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_6_1_x2 {
		fifo_A_PE_6_1_x235 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_2_x236 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_6_1_x275 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_7_1_x276 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_6_1_x2102 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_7_0_x2 {
		fifo_A_PE_7_0_x237 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_1_x238 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_7_0_x262 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_8_0_x263 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_7_0_x290 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_7_1_x2 {
		fifo_A_PE_7_1_x238 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_2_x239 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_7_1_x276 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_8_1_x277 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_7_1_x2103 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_8_0_x2 {
		fifo_A_PE_8_0_x240 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_1_x241 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_8_0_x263 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_9_0_x264 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_8_0_x291 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_8_1_x2 {
		fifo_A_PE_8_1_x241 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_2_x242 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_8_1_x277 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_9_1_x278 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_8_1_x2104 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_9_0_x2 {
		fifo_A_PE_9_0_x243 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_1_x244 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_9_0_x264 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_10_0_x265 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_9_0_x292 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_9_1_x2 {
		fifo_A_PE_9_1_x244 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_2_x245 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_9_1_x278 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_10_1_x279 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_9_1_x2105 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_10_0_x2 {
		fifo_A_PE_10_0_x246 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_1_x247 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_10_0_x265 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_11_0_x266 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_10_0_x293 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_10_1_x2 {
		fifo_A_PE_10_1_x247 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_2_x248 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_10_1_x279 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_11_1_x280 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_10_1_x2106 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_11_0_x2 {
		fifo_A_PE_11_0_x249 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_1_x250 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_11_0_x266 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_0_x267 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_11_0_x294 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_11_1_x2 {
		fifo_A_PE_11_1_x250 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_2_x251 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_11_1_x280 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_1_x281 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_11_1_x2107 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_12_0_x2 {
		fifo_A_PE_12_0_x252 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_1_x253 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_12_0_x267 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_0_x268 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_12_0_x295 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_12_1_x2 {
		fifo_A_PE_12_1_x253 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_2_x254 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_12_1_x281 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_1_x282 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_12_1_x2108 {Type O LastRead -1 FirstWrite 8}}
	A_PE_dummy_0_x2 {
		fifo_A_PE_0_2_x218 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_1_x2 {
		fifo_A_PE_1_2_x221 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_2_x2 {
		fifo_A_PE_2_2_x224 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_3_x2 {
		fifo_A_PE_3_2_x227 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_4_x2 {
		fifo_A_PE_4_2_x230 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_5_x2 {
		fifo_A_PE_5_2_x233 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_6_x2 {
		fifo_A_PE_6_2_x236 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_7_x2 {
		fifo_A_PE_7_2_x239 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_8_x2 {
		fifo_A_PE_8_2_x242 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_9_x2 {
		fifo_A_PE_9_2_x245 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_10_x2 {
		fifo_A_PE_10_2_x248 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_11_x2 {
		fifo_A_PE_11_2_x251 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_12_x2 {
		fifo_A_PE_12_2_x254 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_0_x2 {
		fifo_B_PE_13_0_x268 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_1_x2 {
		fifo_B_PE_13_1_x282 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_0_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x2121 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_0_x295 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_0_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x2121 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_11_x2120 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_0_x294 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_1_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_11_x2120 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_10_x2119 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_0_x293 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_2_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_10_x2119 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_9_x2118 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_0_x292 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_3_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_9_x2118 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_8_x2117 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_0_x291 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_4_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_8_x2117 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_7_x2116 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_0_x290 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_5_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x2116 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x2115 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_0_x289 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_6_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x2115 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x2114 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_0_x288 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_7_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x2114 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x2113 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_0_x287 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_8_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x2113 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x2112 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x286 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_9_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x2112 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x2111 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x285 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_10_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x2111 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x2110 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_0_x284 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_11_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x2110 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x2109 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_0_x283 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_1_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x2134 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_1_x2108 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_12_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x2134 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_11_x2133 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_1_x2107 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_13_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_11_x2133 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_10_x2132 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_1_x2106 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_14_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_10_x2132 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_9_x2131 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_1_x2105 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_15_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_9_x2131 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_8_x2130 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_1_x2104 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_16_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_8_x2130 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_7_x2129 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_1_x2103 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_17_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x2129 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x2128 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x2102 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_18_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x2128 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x2127 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_1_x2101 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_19_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x2127 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x2126 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_1_x2100 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_20_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x2126 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x2125 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_1_x299 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_21_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x2125 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x2124 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_1_x298 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_22_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x2124 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x2123 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_1_x297 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_23_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x2123 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x2122 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_1_x296 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x2 {
		fifo_C_drain_C_drain_IO_L2_out_1_x2136 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x2122 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_x2 {
		fifo_C_drain_C_drain_IO_L2_out_1_x2136 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x2135 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x2109 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L3_out_x2 {
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
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 503 }  { B_q0 mem_dout 0 503 }  { B_we0 mem_we 1 1 }  { B_address1 MemPortADDR2 1 12 }  { B_ce1 MemPortCE2 1 1 }  { B_d1 mem_din 1 503 }  { B_q1 MemPortDOUT2 0 503 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
}
set moduleName kernel3_x2
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
set C_modelName {kernel3_x2}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_C int 512 regular {axi_master 1}  }
	{ B int 503 regular {array 4096 { 1 1 } 1 1 }  }
	{ C int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 503, "direction" : "READONLY"} , 
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
	{ B_address0 sc_out sc_lv 12 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_d0 sc_out sc_lv 503 signal 1 } 
	{ B_q0 sc_in sc_lv 503 signal 1 } 
	{ B_we0 sc_out sc_logic 1 signal 1 } 
	{ B_address1 sc_out sc_lv 12 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_d1 sc_out sc_lv 503 signal 1 } 
	{ B_q1 sc_in sc_lv 503 signal 1 } 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9", "11", "13", "15", "17", "19", "21", "23", "25", "27", "29", "31", "32", "34", "36", "42", "48", "54", "60", "66", "72", "78", "84", "90", "96", "102", "108", "114", "120", "126", "132", "138", "144", "150", "156", "162", "168", "174", "180", "186", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "210", "213", "216", "219", "222", "225", "228", "231", "234", "237", "240", "243", "246", "249", "252", "255", "258", "261", "264", "267", "270", "273", "276", "279", "282", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425"],
		"CDFG" : "kernel3_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2215948", "EstimateLatencyMax" : "2215948",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel3_x2_entry36_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_x2_U0"},
			{"ID" : "31", "Name" : "B_IO_L3_in_x2_U0"}],
		"OutputProcess" : [
			{"ID" : "192", "Name" : "A_PE_dummy_0_x2_U0"},
			{"ID" : "193", "Name" : "A_PE_dummy_1_x2_U0"},
			{"ID" : "194", "Name" : "A_PE_dummy_2_x2_U0"},
			{"ID" : "195", "Name" : "A_PE_dummy_3_x2_U0"},
			{"ID" : "196", "Name" : "A_PE_dummy_4_x2_U0"},
			{"ID" : "197", "Name" : "A_PE_dummy_5_x2_U0"},
			{"ID" : "198", "Name" : "A_PE_dummy_6_x2_U0"},
			{"ID" : "199", "Name" : "A_PE_dummy_7_x2_U0"},
			{"ID" : "200", "Name" : "A_PE_dummy_8_x2_U0"},
			{"ID" : "201", "Name" : "A_PE_dummy_9_x2_U0"},
			{"ID" : "202", "Name" : "A_PE_dummy_10_x2_U0"},
			{"ID" : "203", "Name" : "A_PE_dummy_11_x2_U0"},
			{"ID" : "204", "Name" : "A_PE_dummy_12_x2_U0"},
			{"ID" : "205", "Name" : "B_PE_dummy_0_x2_U0"},
			{"ID" : "206", "Name" : "B_PE_dummy_1_x2_U0"},
			{"ID" : "287", "Name" : "C_drain_IO_L3_out_x2_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "C_drain_IO_L3_out_x2_U0", "Port" : "gmem_C"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "B_IO_L3_in_x2_U0", "Port" : "B"},
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_x2_U0", "Port" : "A"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel3_x2_entry36_U0", "Parent" : "0",
		"CDFG" : "kernel3_x2_entry36",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel3_x2_entry53_U0", "Parent" : "0",
		"CDFG" : "kernel3_x2_entry53",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "289", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x2_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "A_IO_L3_in_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x2_U0.add_12ns_12ns_12_1_1_U1188", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x2_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "A_IO_L2_in_0_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x2_U0.local_A_pong_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x2_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "A_IO_L2_in_1_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x2_U0.local_A_pong_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x2_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "A_IO_L2_in_2_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x2_U0.local_A_pong_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x2_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "A_IO_L2_in_3_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x2_U0.local_A_pong_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x2_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "A_IO_L2_in_4_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x2_U0.local_A_pong_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x2_U0", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "A_IO_L2_in_5_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x231_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x2_U0.local_A_pong_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x2_U0", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "A_IO_L2_in_6_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x27", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x234", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "108", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x234_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x2_U0.local_A_pong_V_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x2_U0", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "A_IO_L2_in_7_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x28", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x237", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "120", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x237_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_7_x2_U0.local_A_pong_V_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x2_U0", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "A_IO_L2_in_8_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x29", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x240", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "132", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x240_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_8_x2_U0.local_A_pong_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x2_U0", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "A_IO_L2_in_9_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x243", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "144", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x243_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_9_x2_U0.local_A_pong_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x2_U0", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "A_IO_L2_in_10_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x246", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x246_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_10_x2_U0.local_A_pong_V_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x2_U0", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "A_IO_L2_in_11_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x213_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x249", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "168", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x249_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_11_x2_U0.local_A_pong_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x2_U0", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "A_IO_L2_in_boundary_x2",
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x213_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x252", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x252_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x2_U0.local_A_pong_V_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x2_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x2",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x2_U0", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "B_IO_L2_in_x2",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x215_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x255", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x255_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_x2_U0.local_B_pong_V_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x2_U0", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "B_IO_L2_in_boundary_x2",
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x215_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x269", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x269_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x2_U0.local_B_pong_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0", "Parent" : "0", "Child" : ["37", "38", "39", "40", "41"],
		"CDFG" : "PE_wrapper_0_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x216", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x216_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x217_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x255", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x256", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x283", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "243", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x283_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.local_A_0_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.local_B_0_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.local_C_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1237", "Parent" : "36"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1238", "Parent" : "36"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0", "Parent" : "0", "Child" : ["43", "44", "45", "46", "47"],
		"CDFG" : "PE_wrapper_0_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x217", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x217_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x218_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x269", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x270", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x296", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "282", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x296_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.local_A_0_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.local_B_0_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.local_C_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1246", "Parent" : "42"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1247", "Parent" : "42"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0", "Parent" : "0", "Child" : ["49", "50", "51", "52", "53"],
		"CDFG" : "PE_wrapper_1_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x219_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x220_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x256", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x257", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x284", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "240", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.local_A_0_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.local_B_0_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.local_C_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1253", "Parent" : "48"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1254", "Parent" : "48"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0", "Parent" : "0", "Child" : ["55", "56", "57", "58", "59"],
		"CDFG" : "PE_wrapper_1_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x220", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x220_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x221_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x270", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x271", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x297", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "279", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x297_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.local_A_0_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.local_B_0_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.local_C_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1260", "Parent" : "54"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1261", "Parent" : "54"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0", "Parent" : "0", "Child" : ["61", "62", "63", "64", "65"],
		"CDFG" : "PE_wrapper_2_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x222", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x222_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x223", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x223_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x257", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x258", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x285", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "237", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x285_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.local_A_0_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.local_B_0_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.local_C_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1267", "Parent" : "60"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1268", "Parent" : "60"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0", "Parent" : "0", "Child" : ["67", "68", "69", "70", "71"],
		"CDFG" : "PE_wrapper_2_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x223", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x223_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x224_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x271", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x272", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "276", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x298_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.local_A_0_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.local_B_0_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.local_C_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1274", "Parent" : "66"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1275", "Parent" : "66"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0", "Parent" : "0", "Child" : ["73", "74", "75", "76", "77"],
		"CDFG" : "PE_wrapper_3_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x225_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x226_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x258", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x259", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x286", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "234", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x286_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.local_A_0_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.local_B_0_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.local_C_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1281", "Parent" : "72"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1282", "Parent" : "72"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0", "Parent" : "0", "Child" : ["79", "80", "81", "82", "83"],
		"CDFG" : "PE_wrapper_3_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x226", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x226_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x227_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x272", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x273", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x299", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "273", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x299_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.local_A_0_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.local_B_0_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.local_C_U", "Parent" : "78"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1288", "Parent" : "78"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1289", "Parent" : "78"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0", "Parent" : "0", "Child" : ["85", "86", "87", "88", "89"],
		"CDFG" : "PE_wrapper_4_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_0_x228", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x228_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x229", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x259", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x260", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x287", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x287_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.local_A_0_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.local_B_0_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.local_C_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1295", "Parent" : "84"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1296", "Parent" : "84"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0", "Parent" : "0", "Child" : ["91", "92", "93", "94", "95"],
		"CDFG" : "PE_wrapper_4_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_1_x229", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x273", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x2100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x2100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.local_A_0_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.local_B_0_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.local_C_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1302", "Parent" : "90"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1303", "Parent" : "90"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0", "Parent" : "0", "Child" : ["97", "98", "99", "100", "101"],
		"CDFG" : "PE_wrapper_5_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_0_x231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x260", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x261", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "108", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x288", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "228", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x288_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.local_A_0_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.local_B_0_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.local_C_U", "Parent" : "96"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1309", "Parent" : "96"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1310", "Parent" : "96"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0", "Parent" : "0", "Child" : ["103", "104", "105", "106", "107"],
		"CDFG" : "PE_wrapper_5_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_1_x232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x233", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x274", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x275", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x2101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "267", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x2101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.local_A_0_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.local_B_0_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.local_C_U", "Parent" : "102"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1316", "Parent" : "102"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1317", "Parent" : "102"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0", "Parent" : "0", "Child" : ["109", "110", "111", "112", "113"],
		"CDFG" : "PE_wrapper_6_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_0_x234", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x261", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x262", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "120", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x289", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x289_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.local_A_0_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.local_B_0_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.local_C_U", "Parent" : "108"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1323", "Parent" : "108"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1324", "Parent" : "108"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0", "Parent" : "0", "Child" : ["115", "116", "117", "118", "119"],
		"CDFG" : "PE_wrapper_6_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_1_x235", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "108", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x236", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x236_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x275", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x276", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x2102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "264", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x2102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.local_A_0_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.local_B_0_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.local_C_U", "Parent" : "114"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1330", "Parent" : "114"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1331", "Parent" : "114"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0", "Parent" : "0", "Child" : ["121", "122", "123", "124", "125"],
		"CDFG" : "PE_wrapper_7_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_0_x237", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x262", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "108", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x263", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "132", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x290", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "222", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x290_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.local_A_0_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.local_B_0_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.local_C_U", "Parent" : "120"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1337", "Parent" : "120"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1338", "Parent" : "120"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0", "Parent" : "0", "Child" : ["127", "128", "129", "130", "131"],
		"CDFG" : "PE_wrapper_7_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_1_x238", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "138", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x2103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "261", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x2103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.local_A_0_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.local_B_0_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.local_C_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1344", "Parent" : "126"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1345", "Parent" : "126"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0", "Parent" : "0", "Child" : ["133", "134", "135", "136", "137"],
		"CDFG" : "PE_wrapper_8_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_0_x240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x241", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "138", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x263", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x264", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "144", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x291", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "219", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x291_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.local_A_0_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.local_B_0_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.local_C_U", "Parent" : "132"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1351", "Parent" : "132"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1352", "Parent" : "132"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0", "Parent" : "0", "Child" : ["139", "140", "141", "142", "143"],
		"CDFG" : "PE_wrapper_8_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_8_1_x241", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x242", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x277", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x278", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x2104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "258", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x2104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.local_A_0_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.local_B_0_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.local_C_U", "Parent" : "138"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1358", "Parent" : "138"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_8_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1359", "Parent" : "138"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0", "Parent" : "0", "Child" : ["145", "146", "147", "148", "149"],
		"CDFG" : "PE_wrapper_9_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_0_x243", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x244", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x264", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x265", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x292", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "216", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x292_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.local_A_0_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.local_B_0_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.local_C_U", "Parent" : "144"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1365", "Parent" : "144"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1366", "Parent" : "144"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0", "Parent" : "0", "Child" : ["151", "152", "153", "154", "155"],
		"CDFG" : "PE_wrapper_9_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_9_1_x244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x245", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "138", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x2105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x2105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.local_A_0_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.local_B_0_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.local_C_U", "Parent" : "150"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1372", "Parent" : "150"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_9_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1373", "Parent" : "150"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0", "Parent" : "0", "Child" : ["157", "158", "159", "160", "161"],
		"CDFG" : "PE_wrapper_10_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_0_x246", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x247", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x265", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x266", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "168", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "213", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x293_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.local_A_0_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.local_B_0_U", "Parent" : "156"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.local_C_U", "Parent" : "156"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1379", "Parent" : "156"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1380", "Parent" : "156"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0", "Parent" : "0", "Child" : ["163", "164", "165", "166", "167"],
		"CDFG" : "PE_wrapper_10_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_10_1_x247", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "156", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x248", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x279", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x2106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "252", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x2106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.local_A_0_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.local_B_0_U", "Parent" : "162"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.local_C_U", "Parent" : "162"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1386", "Parent" : "162"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_10_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1387", "Parent" : "162"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0", "Parent" : "0", "Child" : ["169", "170", "171", "172", "173"],
		"CDFG" : "PE_wrapper_11_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_0_x249", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x266", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "156", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x267", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x294_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.local_A_0_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.local_B_0_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.local_C_U", "Parent" : "168"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1393", "Parent" : "168"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1394", "Parent" : "168"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0", "Parent" : "0", "Child" : ["175", "176", "177", "178", "179"],
		"CDFG" : "PE_wrapper_11_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "168", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "186", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "249", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.local_A_0_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.local_B_0_U", "Parent" : "174"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.local_C_U", "Parent" : "174"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1400", "Parent" : "174"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_11_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1401", "Parent" : "174"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0", "Parent" : "0", "Child" : ["181", "182", "183", "184", "185"],
		"CDFG" : "PE_wrapper_12_0_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_0_x252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x252_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x253", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "186", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x267", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "168", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x268", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x268_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x295_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.local_A_0_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.local_B_0_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.local_C_U", "Parent" : "180"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1407", "Parent" : "180"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1408", "Parent" : "180"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0", "Parent" : "0", "Child" : ["187", "188", "189", "190", "191"],
		"CDFG" : "PE_wrapper_12_1_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2196610", "EstimateLatencyMax" : "2196610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_12_1_x253", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x254", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x282", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x2108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "246", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x2108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.local_A_0_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.local_B_0_U", "Parent" : "186"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.local_C_U", "Parent" : "186"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.fadd_32ns_32ns_32_5_no_dsp_1_U1414", "Parent" : "186"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_12_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1415", "Parent" : "186"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_0_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_0_x2",
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
			{"Name" : "fifo_A_PE_0_2_x218", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_1_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_1_x2",
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
			{"Name" : "fifo_A_PE_1_2_x221", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_2_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_2_x2",
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
			{"Name" : "fifo_A_PE_2_2_x224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_3_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_3_x2",
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
			{"Name" : "fifo_A_PE_3_2_x227", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_4_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_4_x2",
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
			{"Name" : "fifo_A_PE_4_2_x230", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x230_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_5_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_5_x2",
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
			{"Name" : "fifo_A_PE_5_2_x233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x233_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_6_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_6_x2",
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
			{"Name" : "fifo_A_PE_6_2_x236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x236_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_7_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_7_x2",
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
			{"Name" : "fifo_A_PE_7_2_x239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x239_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_8_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_8_x2",
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
			{"Name" : "fifo_A_PE_8_2_x242", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "138", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x242_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_9_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_9_x2",
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
			{"Name" : "fifo_A_PE_9_2_x245", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x245_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_10_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_10_x2",
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
			{"Name" : "fifo_A_PE_10_2_x248", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x248_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_11_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_11_x2",
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
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_12_x2_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_12_x2",
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
			{"Name" : "fifo_A_PE_12_2_x254", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x254_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_0_x2_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_0_x2",
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
			{"Name" : "fifo_B_PE_13_0_x268", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x268_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_1_x2_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_1_x2",
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
			{"Name" : "fifo_B_PE_13_1_x282", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x282_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x2_U0", "Parent" : "0", "Child" : ["208", "209"],
		"CDFG" : "C_drain_IO_L1_out_boundary_0_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x295_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x2_U0.local_C_V_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_0_x2_U0.buf_data_split_V_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x2_U0", "Parent" : "0", "Child" : ["211", "212"],
		"CDFG" : "C_drain_IO_L1_out_0_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "207", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "213", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "168", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x294_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x2_U0.local_C_V_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_0_x2_U0.buf_data_split_V_U", "Parent" : "210"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x2_U0", "Parent" : "0", "Child" : ["214", "215"],
		"CDFG" : "C_drain_IO_L1_out_1_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "210", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "216", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x293", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "156", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x293_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x2_U0.local_C_V_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_1_x2_U0.buf_data_split_V_U", "Parent" : "213"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x2_U0", "Parent" : "0", "Child" : ["217", "218"],
		"CDFG" : "C_drain_IO_L1_out_2_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "219", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x292", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x292_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x2_U0.local_C_V_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_2_x2_U0.buf_data_split_V_U", "Parent" : "216"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x2_U0", "Parent" : "0", "Child" : ["220", "221"],
		"CDFG" : "C_drain_IO_L1_out_3_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "216", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "222", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x291", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x291_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x2_U0.local_C_V_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_3_x2_U0.buf_data_split_V_U", "Parent" : "219"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x2_U0", "Parent" : "0", "Child" : ["223", "224"],
		"CDFG" : "C_drain_IO_L1_out_4_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "219", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x290", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x290_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x2_U0.local_C_V_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_4_x2_U0.buf_data_split_V_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x2_U0", "Parent" : "0", "Child" : ["226", "227"],
		"CDFG" : "C_drain_IO_L1_out_5_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "228", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x289", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "108", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x289_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x2_U0.local_C_V_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_5_x2_U0.buf_data_split_V_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x2_U0", "Parent" : "0", "Child" : ["229", "230"],
		"CDFG" : "C_drain_IO_L1_out_6_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x288", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x288_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x2_U0.local_C_V_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_6_x2_U0.buf_data_split_V_U", "Parent" : "228"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x2_U0", "Parent" : "0", "Child" : ["232", "233"],
		"CDFG" : "C_drain_IO_L1_out_7_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "228", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "234", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x287", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x287_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x2_U0.local_C_V_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_7_x2_U0.buf_data_split_V_U", "Parent" : "231"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x2_U0", "Parent" : "0", "Child" : ["235", "236"],
		"CDFG" : "C_drain_IO_L1_out_8_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "237", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x286", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x286_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x2_U0.local_C_V_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_8_x2_U0.buf_data_split_V_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x2_U0", "Parent" : "0", "Child" : ["238", "239"],
		"CDFG" : "C_drain_IO_L1_out_9_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "234", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "240", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x285", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x285_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x2_U0.local_C_V_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_9_x2_U0.buf_data_split_V_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x2_U0", "Parent" : "0", "Child" : ["241", "242"],
		"CDFG" : "C_drain_IO_L1_out_10_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "237", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "243", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x2_U0.local_C_V_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_10_x2_U0.buf_data_split_V_U", "Parent" : "240"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x2_U0", "Parent" : "0", "Child" : ["244", "245"],
		"CDFG" : "C_drain_IO_L1_out_11_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "240", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x283", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x283_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x2_U0.local_C_V_U", "Parent" : "243"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_11_x2_U0.buf_data_split_V_U", "Parent" : "243"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x2_U0", "Parent" : "0", "Child" : ["247", "248"],
		"CDFG" : "C_drain_IO_L1_out_boundary_1_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "249", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x2108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x2108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x2_U0.local_C_V_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_1_x2_U0.buf_data_split_V_U", "Parent" : "246"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x2_U0", "Parent" : "0", "Child" : ["250", "251"],
		"CDFG" : "C_drain_IO_L1_out_12_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "246", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "252", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x2_U0.local_C_V_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_12_x2_U0.buf_data_split_V_U", "Parent" : "249"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x2_U0", "Parent" : "0", "Child" : ["253", "254"],
		"CDFG" : "C_drain_IO_L1_out_13_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "249", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x2106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x2106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x2_U0.local_C_V_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_13_x2_U0.buf_data_split_V_U", "Parent" : "252"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x2_U0", "Parent" : "0", "Child" : ["256", "257"],
		"CDFG" : "C_drain_IO_L1_out_14_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "252", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "258", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x2105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x2105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x2_U0.local_C_V_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_14_x2_U0.buf_data_split_V_U", "Parent" : "255"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x2_U0", "Parent" : "0", "Child" : ["259", "260"],
		"CDFG" : "C_drain_IO_L1_out_15_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "261", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x2104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "138", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x2104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x2_U0.local_C_V_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_15_x2_U0.buf_data_split_V_U", "Parent" : "258"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x2_U0", "Parent" : "0", "Child" : ["262", "263"],
		"CDFG" : "C_drain_IO_L1_out_16_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "258", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "264", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x2103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x2103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x2_U0.local_C_V_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_16_x2_U0.buf_data_split_V_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x2_U0", "Parent" : "0", "Child" : ["265", "266"],
		"CDFG" : "C_drain_IO_L1_out_17_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "261", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "267", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x2102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x2102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x2_U0.local_C_V_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_17_x2_U0.buf_data_split_V_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x2_U0", "Parent" : "0", "Child" : ["268", "269"],
		"CDFG" : "C_drain_IO_L1_out_18_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x2101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x2101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x2_U0.local_C_V_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_18_x2_U0.buf_data_split_V_U", "Parent" : "267"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x2_U0", "Parent" : "0", "Child" : ["271", "272"],
		"CDFG" : "C_drain_IO_L1_out_19_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "267", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "273", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x2100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x2100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x2_U0.local_C_V_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_19_x2_U0.buf_data_split_V_U", "Parent" : "270"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x2_U0", "Parent" : "0", "Child" : ["274", "275"],
		"CDFG" : "C_drain_IO_L1_out_20_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "276", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x299_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x2_U0.local_C_V_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_20_x2_U0.buf_data_split_V_U", "Parent" : "273"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x2_U0", "Parent" : "0", "Child" : ["277", "278"],
		"CDFG" : "C_drain_IO_L1_out_21_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "273", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "279", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x298", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x298_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x2_U0.local_C_V_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_21_x2_U0.buf_data_split_V_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x2_U0", "Parent" : "0", "Child" : ["280", "281"],
		"CDFG" : "C_drain_IO_L1_out_22_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "276", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "282", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x297", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x297_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x2_U0.local_C_V_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_22_x2_U0.buf_data_split_V_U", "Parent" : "279"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x2_U0", "Parent" : "0", "Child" : ["283", "284"],
		"CDFG" : "C_drain_IO_L1_out_23_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "279", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x296", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x296_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x2_U0.local_C_V_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_23_x2_U0.buf_data_split_V_U", "Parent" : "282"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x2_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_boundary_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "282", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_x2_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_x2",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "285", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x2135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x2135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "243", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x2_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L3_out_x2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16455", "EstimateLatencyMax" : "16455",
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
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "289", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x2_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x2_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x2_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x2_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x2_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x2_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x2_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x2_U", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x2_U", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x2_U", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x2_U", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x2_U", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x2_U", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x2_U", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x2_U", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_8_x2_U", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x2_U", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_9_x2_U", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_0_x2_U", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_10_x2_U", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_0_x2_U", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_11_x2_U", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_0_x2_U", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_12_x2_U", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_0_x2_U", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_0_x2_U", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x2_U", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x2_U", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x2_U", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x2_U", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x2_U", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x2_U", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x2_U", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x2_U", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x2_U", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x2_U", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x2_U", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x2_U", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x2_U", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x2_U", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x2_U", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x2_U", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x2_U", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x2_U", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x2_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x2_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x2_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x2_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x2_U", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x2_U", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x2_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x2_U", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x2_U", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x2_U", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x2_U", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x2_U", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x2_U", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x2_U", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x2_U", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x2_U", "Parent" : "0"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x2_U", "Parent" : "0"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x2_U", "Parent" : "0"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x2_U", "Parent" : "0"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x2_U", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x2_U", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x2_U", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x2_U", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x2_U", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x2_U", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x2_U", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x2_U", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x2_U", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x2_U", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x2_U", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x2_U", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x2_U", "Parent" : "0"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x2_U", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x2_U", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_1_x2_U", "Parent" : "0"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_0_x2_U", "Parent" : "0"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_0_x2_U", "Parent" : "0"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_8_2_x2_U", "Parent" : "0"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_9_1_x2_U", "Parent" : "0"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_8_1_x2_U", "Parent" : "0"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_1_x2_U", "Parent" : "0"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_0_x2_U", "Parent" : "0"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_0_x2_U", "Parent" : "0"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_9_2_x2_U", "Parent" : "0"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_10_1_x2_U", "Parent" : "0"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_9_1_x2_U", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_1_x2_U", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_0_x2_U", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_0_x2_U", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_10_2_x2_U", "Parent" : "0"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_11_1_x2_U", "Parent" : "0"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_10_1_x2_U", "Parent" : "0"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_1_x2_U", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_0_x2_U", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_0_x2_U", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_11_2_x2_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_12_1_x2_U", "Parent" : "0"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_11_1_x2_U", "Parent" : "0"},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_1_x2_U", "Parent" : "0"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_0_x2_U", "Parent" : "0"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_0_x2_U", "Parent" : "0"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_12_2_x2_U", "Parent" : "0"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_13_1_x2_U", "Parent" : "0"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_12_1_x2_U", "Parent" : "0"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_12_x2_U", "Parent" : "0"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_11_x2_U", "Parent" : "0"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_10_x2_U", "Parent" : "0"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_9_x2_U", "Parent" : "0"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_8_x2_U", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x2_U", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x2_U", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x2_U", "Parent" : "0"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x2_U", "Parent" : "0"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x2_U", "Parent" : "0"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x2_U", "Parent" : "0"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x2_U", "Parent" : "0"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x2_U", "Parent" : "0"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_12_x2_U", "Parent" : "0"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_11_x2_U", "Parent" : "0"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_10_x2_U", "Parent" : "0"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_9_x2_U", "Parent" : "0"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_8_x2_U", "Parent" : "0"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x2_U", "Parent" : "0"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x2_U", "Parent" : "0"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x2_U", "Parent" : "0"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x2_U", "Parent" : "0"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x2_U", "Parent" : "0"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x2_U", "Parent" : "0"},
	{"ID" : "422", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x2_U", "Parent" : "0"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x2_U", "Parent" : "0"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x2_U", "Parent" : "0"},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x2_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel3_x2 {
		gmem_C {Type O LastRead 3 FirstWrite 11}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 62 FirstWrite -1}}
	kernel3_x2_entry36 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	kernel3_x2_entry53 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_x2 {
		fifo_A_A_IO_L2_in_0_x21 {Type O LastRead -1 FirstWrite 3}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L2_in_0_x2 {
		fifo_A_A_IO_L2_in_0_x21 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x22 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_0_0_x216 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_1_x2 {
		fifo_A_A_IO_L2_in_1_x22 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x23 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x219 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_2_x2 {
		fifo_A_A_IO_L2_in_2_x23 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x24 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_2_0_x222 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_3_x2 {
		fifo_A_A_IO_L2_in_3_x24 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x25 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_3_0_x225 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_4_x2 {
		fifo_A_A_IO_L2_in_4_x25 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x26 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_4_0_x228 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_5_x2 {
		fifo_A_A_IO_L2_in_5_x26 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x27 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_5_0_x231 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_6_x2 {
		fifo_A_A_IO_L2_in_6_x27 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x28 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_6_0_x234 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_7_x2 {
		fifo_A_A_IO_L2_in_7_x28 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_8_x29 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_7_0_x237 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_8_x2 {
		fifo_A_A_IO_L2_in_8_x29 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_9_x210 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_8_0_x240 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_9_x2 {
		fifo_A_A_IO_L2_in_9_x210 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_10_x211 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_9_0_x243 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_10_x2 {
		fifo_A_A_IO_L2_in_10_x211 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_11_x212 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_10_0_x246 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_11_x2 {
		fifo_A_A_IO_L2_in_11_x212 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_12_x213 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_11_0_x249 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_boundary_x2 {
		fifo_A_A_IO_L2_in_12_x213 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_12_0_x252 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L3_in_x2 {
		fifo_B_B_IO_L2_in_0_x214 {Type O LastRead -1 FirstWrite 3}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L2_in_x2 {
		fifo_B_B_IO_L2_in_0_x214 {Type I LastRead 2 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x215 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_0_0_x255 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_boundary_x2 {
		fifo_B_B_IO_L2_in_1_x215 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_0_1_x269 {Type O LastRead -1 FirstWrite 5}}
	PE_wrapper_0_0_x2 {
		fifo_A_PE_0_0_x216 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_0_1_x217 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_0_0_x255 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_0_x256 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_0_0_x283 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_0_1_x2 {
		fifo_A_PE_0_1_x217 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_0_2_x218 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_0_1_x269 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_1_x270 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_0_1_x296 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_1_0_x2 {
		fifo_A_PE_1_0_x219 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_1_1_x220 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_1_0_x256 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_0_x257 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_1_0_x284 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_1_1_x2 {
		fifo_A_PE_1_1_x220 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_1_2_x221 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_1_1_x270 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_1_x271 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_1_1_x297 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_2_0_x2 {
		fifo_A_PE_2_0_x222 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_2_1_x223 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_2_0_x257 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_3_0_x258 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_2_0_x285 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_2_1_x2 {
		fifo_A_PE_2_1_x223 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_2_2_x224 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_2_1_x271 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_3_1_x272 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_2_1_x298 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_3_0_x2 {
		fifo_A_PE_3_0_x225 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_3_1_x226 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_3_0_x258 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_4_0_x259 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_3_0_x286 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_3_1_x2 {
		fifo_A_PE_3_1_x226 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_3_2_x227 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_3_1_x272 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_4_1_x273 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_3_1_x299 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_4_0_x2 {
		fifo_A_PE_4_0_x228 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_4_1_x229 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_4_0_x259 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_5_0_x260 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_4_0_x287 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_4_1_x2 {
		fifo_A_PE_4_1_x229 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_4_2_x230 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_4_1_x273 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_5_1_x274 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_4_1_x2100 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_5_0_x2 {
		fifo_A_PE_5_0_x231 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_5_1_x232 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_5_0_x260 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_6_0_x261 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_5_0_x288 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_5_1_x2 {
		fifo_A_PE_5_1_x232 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_5_2_x233 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_5_1_x274 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_6_1_x275 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_5_1_x2101 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_6_0_x2 {
		fifo_A_PE_6_0_x234 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_6_1_x235 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_6_0_x261 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_7_0_x262 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_6_0_x289 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_6_1_x2 {
		fifo_A_PE_6_1_x235 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_6_2_x236 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_6_1_x275 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_7_1_x276 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_6_1_x2102 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_7_0_x2 {
		fifo_A_PE_7_0_x237 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_7_1_x238 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_7_0_x262 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_8_0_x263 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_7_0_x290 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_7_1_x2 {
		fifo_A_PE_7_1_x238 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_7_2_x239 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_7_1_x276 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_8_1_x277 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_7_1_x2103 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_8_0_x2 {
		fifo_A_PE_8_0_x240 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_8_1_x241 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_8_0_x263 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_9_0_x264 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_8_0_x291 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_8_1_x2 {
		fifo_A_PE_8_1_x241 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_8_2_x242 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_8_1_x277 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_9_1_x278 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_8_1_x2104 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_9_0_x2 {
		fifo_A_PE_9_0_x243 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_9_1_x244 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_9_0_x264 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_10_0_x265 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_9_0_x292 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_9_1_x2 {
		fifo_A_PE_9_1_x244 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_9_2_x245 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_9_1_x278 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_10_1_x279 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_9_1_x2105 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_10_0_x2 {
		fifo_A_PE_10_0_x246 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_10_1_x247 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_10_0_x265 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_11_0_x266 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_10_0_x293 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_10_1_x2 {
		fifo_A_PE_10_1_x247 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_10_2_x248 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_10_1_x279 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_11_1_x280 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_10_1_x2106 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_11_0_x2 {
		fifo_A_PE_11_0_x249 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_11_1_x250 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_11_0_x266 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_0_x267 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_11_0_x294 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_11_1_x2 {
		fifo_A_PE_11_1_x250 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_11_2_x251 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_11_1_x280 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_1_x281 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_11_1_x2107 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_12_0_x2 {
		fifo_A_PE_12_0_x252 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_12_1_x253 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_12_0_x267 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_0_x268 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_12_0_x295 {Type O LastRead -1 FirstWrite 15}}
	PE_wrapper_12_1_x2 {
		fifo_A_PE_12_1_x253 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_12_2_x254 {Type O LastRead -1 FirstWrite 19}
		fifo_B_PE_12_1_x281 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_1_x282 {Type O LastRead -1 FirstWrite 19}
		fifo_C_drain_PE_12_1_x2108 {Type O LastRead -1 FirstWrite 15}}
	A_PE_dummy_0_x2 {
		fifo_A_PE_0_2_x218 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_1_x2 {
		fifo_A_PE_1_2_x221 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_2_x2 {
		fifo_A_PE_2_2_x224 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_3_x2 {
		fifo_A_PE_3_2_x227 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_4_x2 {
		fifo_A_PE_4_2_x230 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_5_x2 {
		fifo_A_PE_5_2_x233 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_6_x2 {
		fifo_A_PE_6_2_x236 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_7_x2 {
		fifo_A_PE_7_2_x239 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_8_x2 {
		fifo_A_PE_8_2_x242 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_9_x2 {
		fifo_A_PE_9_2_x245 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_10_x2 {
		fifo_A_PE_10_2_x248 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_11_x2 {
		fifo_A_PE_11_2_x251 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_12_x2 {
		fifo_A_PE_12_2_x254 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_0_x2 {
		fifo_B_PE_13_0_x268 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_1_x2 {
		fifo_B_PE_13_1_x282 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_0_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x2121 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_12_0_x295 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_0_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x2121 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_11_x2120 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_0_x294 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_1_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_11_x2120 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_10_x2119 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_0_x293 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_2_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_10_x2119 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_9_x2118 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_0_x292 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_3_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_9_x2118 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_8_x2117 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_0_x291 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_4_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_8_x2117 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_7_x2116 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_0_x290 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_5_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x2116 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x2115 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_0_x289 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_6_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x2115 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x2114 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_0_x288 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_7_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x2114 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x2113 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_0_x287 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_8_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x2113 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x2112 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x286 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_9_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x2112 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x2111 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x285 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_10_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x2111 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x2110 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_0_x284 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_11_x2 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x2110 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x2109 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_0_x283 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_1_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x2134 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_12_1_x2108 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_12_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x2134 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_11_x2133 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_1_x2107 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_13_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_11_x2133 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_10_x2132 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_1_x2106 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_14_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_10_x2132 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_9_x2131 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_1_x2105 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_15_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_9_x2131 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_8_x2130 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_1_x2104 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_16_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_8_x2130 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_7_x2129 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_1_x2103 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_17_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x2129 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x2128 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x2102 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_18_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x2128 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x2127 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_1_x2101 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_19_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x2127 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x2126 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_1_x2100 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_20_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x2126 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x2125 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_1_x299 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_21_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x2125 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x2124 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_1_x298 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_22_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x2124 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x2123 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_1_x297 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_23_x2 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x2123 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x2122 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_1_x296 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x2 {
		fifo_C_drain_C_drain_IO_L2_out_1_x2136 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x2122 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L2_out_x2 {
		fifo_C_drain_C_drain_IO_L2_out_1_x2136 {Type I LastRead 2 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x2135 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x2109 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L3_out_x2 {
		gmem_C {Type O LastRead 3 FirstWrite 11}
		fifo_C_drain_local_in {Type I LastRead 10 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2215948", "Max" : "2215948"}
	, {"Name" : "Interval", "Min" : "2196611", "Max" : "2196611"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 32 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 32 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 503 }  { B_q0 mem_dout 0 503 }  { B_we0 mem_we 1 1 }  { B_address1 MemPortADDR2 1 12 }  { B_ce1 MemPortCE2 1 1 }  { B_d1 mem_din 1 503 }  { B_q1 MemPortDOUT2 0 503 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
}
