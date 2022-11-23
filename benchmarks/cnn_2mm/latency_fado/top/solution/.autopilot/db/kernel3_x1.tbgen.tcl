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
