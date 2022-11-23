set moduleName kernel0_x0
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
set C_modelName {kernel0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_C int 512 regular {axi_master 1}  }
	{ A int 119 regular {array 4096 { 1 3 } 1 1 }  }
	{ B int 119 regular {array 4096 { 1 3 } 1 1 }  }
	{ C int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 119, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 119, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 74
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
	{ A_address0 sc_out sc_lv 12 signal 1 } 
	{ A_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_d0 sc_out sc_lv 119 signal 1 } 
	{ A_q0 sc_in sc_lv 119 signal 1 } 
	{ A_we0 sc_out sc_logic 1 signal 1 } 
	{ A_address1 sc_out sc_lv 12 signal 1 } 
	{ A_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_d1 sc_out sc_lv 119 signal 1 } 
	{ A_q1 sc_in sc_lv 119 signal 1 } 
	{ A_we1 sc_out sc_logic 1 signal 1 } 
	{ B_address0 sc_out sc_lv 12 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_d0 sc_out sc_lv 119 signal 2 } 
	{ B_q0 sc_in sc_lv 119 signal 2 } 
	{ B_we0 sc_out sc_logic 1 signal 2 } 
	{ B_address1 sc_out sc_lv 12 signal 2 } 
	{ B_ce1 sc_out sc_logic 1 signal 2 } 
	{ B_d1 sc_out sc_lv 119 signal 2 } 
	{ B_q1 sc_in sc_lv 119 signal 2 } 
	{ B_we1 sc_out sc_logic 1 signal 2 } 
	{ C sc_in sc_lv 64 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ C_ap_vld sc_in sc_logic 1 invld 3 } 
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
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "B", "role": "d0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "B", "role": "d1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "8", "11", "14", "17", "20", "23", "26", "29", "30", "31", "34", "37", "40", "43", "46", "49", "52", "55", "60", "65", "70", "75", "80", "85", "90", "95", "100", "105", "110", "115", "120", "125", "130", "135", "140", "145", "150", "155", "160", "165", "170", "175", "180", "185", "190", "195", "200", "205", "210", "215", "220", "225", "230", "235", "240", "245", "250", "255", "260", "265", "270", "275", "280", "285", "290", "295", "300", "305", "310", "315", "320", "325", "330", "335", "340", "345", "350", "355", "360", "365", "370", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "394", "397", "400", "403", "406", "409", "412", "415", "418", "421", "424", "427", "430", "433", "436", "439", "442", "445", "448", "451", "454", "457", "460", "463", "466", "469", "472", "475", "478", "481", "484", "487", "490", "493", "496", "499", "502", "505", "508", "511", "514", "517", "520", "523", "526", "529", "532", "535", "538", "541", "544", "547", "550", "553", "556", "559", "562", "565", "568", "571", "574", "577", "580", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "877", "878", "879", "880", "881", "882", "883", "884", "885", "886", "887", "888", "889", "890", "891", "892", "893", "894"],
		"CDFG" : "kernel0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129123154", "EstimateLatencyMax" : "129123154",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x0_entry5_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x0_U0"},
			{"ID" : "29", "Name" : "B_IO_L3_in_serialize_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "375", "Name" : "A_PE_dummy_in_0_x0_U0"},
			{"ID" : "376", "Name" : "A_PE_dummy_in_1_x0_U0"},
			{"ID" : "377", "Name" : "A_PE_dummy_in_2_x0_U0"},
			{"ID" : "378", "Name" : "A_PE_dummy_in_3_x0_U0"},
			{"ID" : "379", "Name" : "A_PE_dummy_in_4_x0_U0"},
			{"ID" : "380", "Name" : "A_PE_dummy_in_5_x0_U0"},
			{"ID" : "381", "Name" : "A_PE_dummy_in_6_x0_U0"},
			{"ID" : "382", "Name" : "A_PE_dummy_in_7_x0_U0"},
			{"ID" : "383", "Name" : "B_PE_dummy_in_0_x0_U0"},
			{"ID" : "384", "Name" : "B_PE_dummy_in_1_x0_U0"},
			{"ID" : "385", "Name" : "B_PE_dummy_in_2_x0_U0"},
			{"ID" : "386", "Name" : "B_PE_dummy_in_3_x0_U0"},
			{"ID" : "387", "Name" : "B_PE_dummy_in_4_x0_U0"},
			{"ID" : "388", "Name" : "B_PE_dummy_in_5_x0_U0"},
			{"ID" : "389", "Name" : "B_PE_dummy_in_6_x0_U0"},
			{"ID" : "390", "Name" : "B_PE_dummy_in_7_x0_U0"},
			{"ID" : "592", "Name" : "C_drain_IO_L3_out_serialize_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "592", "SubInstance" : "C_drain_IO_L3_out_serialize_x0_U0", "Port" : "gmem_C"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x0_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "B_IO_L3_in_serialize_x0_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry5_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry5",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry12_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry12",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "592", "DependentChan" : "595", "DependentChanDepth" : "37", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12289", "EstimateLatencyMax" : "12289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L3_in_serialize_x01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L3_in_serialize_x01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1196577", "EstimateLatencyMax" : "1196577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["6", "7"],
		"CDFG" : "A_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1270450", "EstimateLatencyMax" : "2450098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x05", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x020_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_ping_V_0_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_pong_V_0_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "A_IO_L2_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1114802", "EstimateLatencyMax" : "2294450",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x029_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_ping_V_0_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_pong_V_0_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "A_IO_L2_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "959154", "EstimateLatencyMax" : "2138802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x038_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_ping_V_0_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_pong_V_0_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["15", "16"],
		"CDFG" : "A_IO_L2_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "803506", "EstimateLatencyMax" : "1983154",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x047_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0.local_A_ping_V_0_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0.local_A_pong_V_0_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["18", "19"],
		"CDFG" : "A_IO_L2_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "647858", "EstimateLatencyMax" : "1827506",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_4_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0.local_A_ping_V_0_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0.local_A_pong_V_0_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["21", "22"],
		"CDFG" : "A_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "492210", "EstimateLatencyMax" : "1671858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0.local_A_ping_V_0_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0.local_A_pong_V_0_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "A_IO_L2_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "336562", "EstimateLatencyMax" : "1516210",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "295", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x074_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0.local_A_ping_V_0_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0.local_A_pong_V_0_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["27", "28"],
		"CDFG" : "A_IO_L2_in_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "156338", "EstimateLatencyMax" : "1335986",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_7_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_ping_V_0_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_0_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12289", "EstimateLatencyMax" : "12289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1196577", "EstimateLatencyMax" : "1196577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["32", "33"],
		"CDFG" : "B_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1270394", "EstimateLatencyMax" : "1991290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_ping_V_0_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_pong_V_0_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["35", "36"],
		"CDFG" : "B_IO_L2_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1114746", "EstimateLatencyMax" : "1835642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_ping_V_0_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_pong_V_0_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "B_IO_L2_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "959098", "EstimateLatencyMax" : "1679994",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_ping_V_0_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_pong_V_0_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["41", "42"],
		"CDFG" : "B_IO_L2_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "803450", "EstimateLatencyMax" : "1524346",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_ping_V_0_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_pong_V_0_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["44", "45"],
		"CDFG" : "B_IO_L2_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "647802", "EstimateLatencyMax" : "1368698",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_ping_V_0_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_pong_V_0_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "B_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "492154", "EstimateLatencyMax" : "1213050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_ping_V_0_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_pong_V_0_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["50", "51"],
		"CDFG" : "B_IO_L2_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "336506", "EstimateLatencyMax" : "1057402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_ping_V_0_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_pong_V_0_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["53", "54"],
		"CDFG" : "B_IO_L2_in_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "156282", "EstimateLatencyMax" : "877178",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_ping_V_0_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_0_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["56", "57", "58", "59"],
		"CDFG" : "PE_wrapper_0_0_x0",
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
			{"Name" : "fifo_A_PE_0_0_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "412", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_A_0_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_B_0_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_C_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U75", "Parent" : "55"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["61", "62", "63", "64"],
		"CDFG" : "PE_wrapper_0_1_x0",
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
			{"Name" : "fifo_A_PE_0_1_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "436", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_A_0_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_B_0_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_C_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U84", "Parent" : "60"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["66", "67", "68", "69"],
		"CDFG" : "PE_wrapper_0_2_x0",
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
			{"Name" : "fifo_A_PE_0_2_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "105", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "460", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_A_0_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_B_0_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_C_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U90", "Parent" : "65"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["71", "72", "73", "74"],
		"CDFG" : "PE_wrapper_0_3_x0",
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
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "484", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_A_0_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_B_0_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_C_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U96", "Parent" : "70"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["76", "77", "78", "79"],
		"CDFG" : "PE_wrapper_0_4_x0",
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
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "508", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_A_0_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_B_0_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_C_U", "Parent" : "75"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U102", "Parent" : "75"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["81", "82", "83", "84"],
		"CDFG" : "PE_wrapper_0_5_x0",
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
			{"Name" : "fifo_A_PE_0_5_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "120", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "532", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_A_0_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_B_0_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_C_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U108", "Parent" : "80"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["86", "87", "88", "89"],
		"CDFG" : "PE_wrapper_0_6_x0",
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
			{"Name" : "fifo_A_PE_0_6_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "556", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_A_0_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_B_0_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_C_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U114", "Parent" : "85"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0", "Parent" : "0", "Child" : ["91", "92", "93", "94"],
		"CDFG" : "PE_wrapper_0_7_x0",
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
			{"Name" : "fifo_A_PE_0_7_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "375", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "580", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_A_0_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_B_0_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_C_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U120", "Parent" : "90"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["96", "97", "98", "99"],
		"CDFG" : "PE_wrapper_1_0_x0",
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
			{"Name" : "fifo_A_PE_1_0_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "409", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_A_0_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_B_0_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_C_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U126", "Parent" : "95"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["101", "102", "103", "104"],
		"CDFG" : "PE_wrapper_1_1_x0",
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
			{"Name" : "fifo_A_PE_1_1_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "105", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "433", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_A_0_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_B_0_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_C_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U132", "Parent" : "100"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["106", "107", "108", "109"],
		"CDFG" : "PE_wrapper_1_2_x0",
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
			{"Name" : "fifo_A_PE_1_2_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "457", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_A_0_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_B_0_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_C_U", "Parent" : "105"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U138", "Parent" : "105"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["111", "112", "113", "114"],
		"CDFG" : "PE_wrapper_1_3_x0",
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
			{"Name" : "fifo_A_PE_1_3_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "481", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_A_0_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_B_0_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_C_U", "Parent" : "110"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U144", "Parent" : "110"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["116", "117", "118", "119"],
		"CDFG" : "PE_wrapper_1_4_x0",
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
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "120", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "505", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_A_0_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_B_0_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_C_U", "Parent" : "115"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U150", "Parent" : "115"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["121", "122", "123", "124"],
		"CDFG" : "PE_wrapper_1_5_x0",
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
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "529", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_A_0_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_B_0_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_C_U", "Parent" : "120"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U156", "Parent" : "120"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["126", "127", "128", "129"],
		"CDFG" : "PE_wrapper_1_6_x0",
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
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "553", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_A_0_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_B_0_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_C_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U162", "Parent" : "125"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0", "Parent" : "0", "Child" : ["131", "132", "133", "134"],
		"CDFG" : "PE_wrapper_1_7_x0",
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
			{"Name" : "fifo_A_PE_1_7_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "376", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "577", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_A_0_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_B_0_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_C_U", "Parent" : "130"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U168", "Parent" : "130"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["136", "137", "138", "139"],
		"CDFG" : "PE_wrapper_2_0_x0",
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
			{"Name" : "fifo_A_PE_2_0_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "406", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_A_0_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_B_0_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_C_U", "Parent" : "135"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U174", "Parent" : "135"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["141", "142", "143", "144"],
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
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "430", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_A_0_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_B_0_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_C_U", "Parent" : "140"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U180", "Parent" : "140"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["146", "147", "148", "149"],
		"CDFG" : "PE_wrapper_2_2_x0",
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
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_A_0_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_B_0_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_C_U", "Parent" : "145"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U186", "Parent" : "145"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["151", "152", "153", "154"],
		"CDFG" : "PE_wrapper_2_3_x0",
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
			{"Name" : "fifo_A_PE_2_3_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "478", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_A_0_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_B_0_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_C_U", "Parent" : "150"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U192", "Parent" : "150"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["156", "157", "158", "159"],
		"CDFG" : "PE_wrapper_2_4_x0",
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
			{"Name" : "fifo_A_PE_2_4_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "502", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_A_0_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_B_0_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_C_U", "Parent" : "155"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U198", "Parent" : "155"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["161", "162", "163", "164"],
		"CDFG" : "PE_wrapper_2_5_x0",
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
			{"Name" : "fifo_A_PE_2_5_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "526", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_A_0_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_B_0_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_C_U", "Parent" : "160"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U204", "Parent" : "160"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["166", "167", "168", "169"],
		"CDFG" : "PE_wrapper_2_6_x0",
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
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "550", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_A_0_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_B_0_U", "Parent" : "165"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_C_U", "Parent" : "165"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U210", "Parent" : "165"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0", "Parent" : "0", "Child" : ["171", "172", "173", "174"],
		"CDFG" : "PE_wrapper_2_7_x0",
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
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "377", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "574", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_A_0_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_B_0_U", "Parent" : "170"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_C_U", "Parent" : "170"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U216", "Parent" : "170"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["176", "177", "178", "179"],
		"CDFG" : "PE_wrapper_3_0_x0",
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
			{"Name" : "fifo_A_PE_3_0_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "403", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_A_0_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_B_0_U", "Parent" : "175"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_C_U", "Parent" : "175"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U222", "Parent" : "175"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["181", "182", "183", "184"],
		"CDFG" : "PE_wrapper_3_1_x0",
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
			{"Name" : "fifo_A_PE_3_1_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "427", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_A_0_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_B_0_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_C_U", "Parent" : "180"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U228", "Parent" : "180"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["186", "187", "188", "189"],
		"CDFG" : "PE_wrapper_3_2_x0",
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
			{"Name" : "fifo_A_PE_3_2_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "451", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_A_0_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_B_0_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_C_U", "Parent" : "185"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U234", "Parent" : "185"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["191", "192", "193", "194"],
		"CDFG" : "PE_wrapper_3_3_x0",
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
			{"Name" : "fifo_A_PE_3_3_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "475", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_A_0_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_B_0_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_C_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U240", "Parent" : "190"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["196", "197", "198", "199"],
		"CDFG" : "PE_wrapper_3_4_x0",
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
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "499", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_A_0_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_B_0_U", "Parent" : "195"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_C_U", "Parent" : "195"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U246", "Parent" : "195"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["201", "202", "203", "204"],
		"CDFG" : "PE_wrapper_3_5_x0",
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
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "240", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "523", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_A_0_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_B_0_U", "Parent" : "200"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_C_U", "Parent" : "200"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U252", "Parent" : "200"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["206", "207", "208", "209"],
		"CDFG" : "PE_wrapper_3_6_x0",
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
			{"Name" : "fifo_A_PE_3_6_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "547", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_A_0_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_B_0_U", "Parent" : "205"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_C_U", "Parent" : "205"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U258", "Parent" : "205"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0", "Parent" : "0", "Child" : ["211", "212", "213", "214"],
		"CDFG" : "PE_wrapper_3_7_x0",
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
			{"Name" : "fifo_A_PE_3_7_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "378", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0223", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "571", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_A_0_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_B_0_U", "Parent" : "210"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_C_U", "Parent" : "210"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U264", "Parent" : "210"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["216", "217", "218", "219"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "400", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_A_0_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_B_0_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_C_U", "Parent" : "215"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U270", "Parent" : "215"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["221", "222", "223", "224"],
		"CDFG" : "PE_wrapper_4_1_x0",
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
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "424", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_A_0_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_B_0_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_C_U", "Parent" : "220"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U276", "Parent" : "220"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["226", "227", "228", "229"],
		"CDFG" : "PE_wrapper_4_2_x0",
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
			{"Name" : "fifo_A_PE_4_2_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_3_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_A_0_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_B_0_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_C_U", "Parent" : "225"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U282", "Parent" : "225"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0", "Parent" : "0", "Child" : ["231", "232", "233", "234"],
		"CDFG" : "PE_wrapper_4_3_x0",
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
			{"Name" : "fifo_A_PE_4_3_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "472", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_A_0_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_B_0_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_C_U", "Parent" : "230"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U288", "Parent" : "230"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0", "Parent" : "0", "Child" : ["236", "237", "238", "239"],
		"CDFG" : "PE_wrapper_4_4_x0",
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
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "240", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "496", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_A_0_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_B_0_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_C_U", "Parent" : "235"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U294", "Parent" : "235"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0", "Parent" : "0", "Child" : ["241", "242", "243", "244"],
		"CDFG" : "PE_wrapper_4_5_x0",
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
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "520", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_A_0_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_B_0_U", "Parent" : "240"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_C_U", "Parent" : "240"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U300", "Parent" : "240"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0", "Parent" : "0", "Child" : ["246", "247", "248", "249"],
		"CDFG" : "PE_wrapper_4_6_x0",
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
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "240", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "544", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_A_0_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_B_0_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_C_U", "Parent" : "245"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U306", "Parent" : "245"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0", "Parent" : "0", "Child" : ["251", "252", "253", "254"],
		"CDFG" : "PE_wrapper_4_7_x0",
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
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_8_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "379", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "210", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "568", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_A_0_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_B_0_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_C_U", "Parent" : "250"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U312", "Parent" : "250"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["256", "257", "258", "259"],
		"CDFG" : "PE_wrapper_5_0_x0",
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
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "295", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "397", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_A_0_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_B_0_U", "Parent" : "255"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_C_U", "Parent" : "255"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U318", "Parent" : "255"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["261", "262", "263", "264"],
		"CDFG" : "PE_wrapper_5_1_x0",
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
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "300", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "421", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_A_0_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_B_0_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_C_U", "Parent" : "260"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U324", "Parent" : "260"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["266", "267", "268", "269"],
		"CDFG" : "PE_wrapper_5_2_x0",
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
			{"Name" : "fifo_A_PE_5_2_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_3_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "305", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_A_0_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_B_0_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_C_U", "Parent" : "265"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U330", "Parent" : "265"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0", "Parent" : "0", "Child" : ["271", "272", "273", "274"],
		"CDFG" : "PE_wrapper_5_3_x0",
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
			{"Name" : "fifo_A_PE_5_3_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_4_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "469", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_A_0_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_B_0_U", "Parent" : "270"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_C_U", "Parent" : "270"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U336", "Parent" : "270"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0", "Parent" : "0", "Child" : ["276", "277", "278", "279"],
		"CDFG" : "PE_wrapper_5_4_x0",
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
			{"Name" : "fifo_A_PE_5_4_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_5_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "315", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "493", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_A_0_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_B_0_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_C_U", "Parent" : "275"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U342", "Parent" : "275"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0", "Parent" : "0", "Child" : ["281", "282", "283", "284"],
		"CDFG" : "PE_wrapper_5_5_x0",
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
			{"Name" : "fifo_A_PE_5_5_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_6_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "240", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "320", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_A_0_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_B_0_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_C_U", "Parent" : "280"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U348", "Parent" : "280"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0", "Parent" : "0", "Child" : ["286", "287", "288", "289"],
		"CDFG" : "PE_wrapper_5_6_x0",
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
			{"Name" : "fifo_A_PE_5_6_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_7_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "541", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_A_0_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_B_0_U", "Parent" : "285"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_C_U", "Parent" : "285"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U354", "Parent" : "285"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0", "Parent" : "0", "Child" : ["291", "292", "293", "294"],
		"CDFG" : "PE_wrapper_5_7_x0",
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
			{"Name" : "fifo_A_PE_5_7_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "285", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_8_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "380", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "565", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_A_0_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_B_0_U", "Parent" : "290"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_C_U", "Parent" : "290"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U360", "Parent" : "290"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["296", "297", "298", "299"],
		"CDFG" : "PE_wrapper_6_0_x0",
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
			{"Name" : "fifo_A_PE_6_0_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "300", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_A_0_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_B_0_U", "Parent" : "295"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_C_U", "Parent" : "295"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U366", "Parent" : "295"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["301", "302", "303", "304"],
		"CDFG" : "PE_wrapper_6_1_x0",
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
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "295", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "305", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "340", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "418", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_A_0_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_B_0_U", "Parent" : "300"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_C_U", "Parent" : "300"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U372", "Parent" : "300"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["306", "307", "308", "309"],
		"CDFG" : "PE_wrapper_6_2_x0",
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
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "300", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_A_0_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_B_0_U", "Parent" : "305"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_C_U", "Parent" : "305"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U378", "Parent" : "305"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0", "Parent" : "0", "Child" : ["311", "312", "313", "314"],
		"CDFG" : "PE_wrapper_6_3_x0",
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
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "315", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "350", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "466", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_A_0_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_B_0_U", "Parent" : "310"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_C_U", "Parent" : "310"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U384", "Parent" : "310"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0", "Parent" : "0", "Child" : ["316", "317", "318", "319"],
		"CDFG" : "PE_wrapper_6_4_x0",
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
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "320", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "355", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "490", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_A_0_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_B_0_U", "Parent" : "315"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_C_U", "Parent" : "315"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U390", "Parent" : "315"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0", "Parent" : "0", "Child" : ["321", "322", "323", "324"],
		"CDFG" : "PE_wrapper_6_5_x0",
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
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "315", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "360", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "514", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_A_0_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_B_0_U", "Parent" : "320"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_C_U", "Parent" : "320"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U396", "Parent" : "320"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0", "Parent" : "0", "Child" : ["326", "327", "328", "329"],
		"CDFG" : "PE_wrapper_6_6_x0",
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
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "320", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "285", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "365", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "538", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_A_0_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_B_0_U", "Parent" : "325"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_C_U", "Parent" : "325"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U402", "Parent" : "325"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0", "Parent" : "0", "Child" : ["331", "332", "333", "334"],
		"CDFG" : "PE_wrapper_6_7_x0",
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
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "325", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_8_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "381", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "370", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "562", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_A_0_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_B_0_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_C_U", "Parent" : "330"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U408", "Parent" : "330"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["336", "337", "338", "339"],
		"CDFG" : "PE_wrapper_7_0_x0",
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
			{"Name" : "fifo_A_PE_7_0_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "340", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "295", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "383", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "391", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_A_0_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_B_0_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_C_U", "Parent" : "335"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U414", "Parent" : "335"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["341", "342", "343", "344"],
		"CDFG" : "PE_wrapper_7_1_x0",
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
			{"Name" : "fifo_A_PE_7_1_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "300", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "415", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_A_0_U", "Parent" : "340"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_B_0_U", "Parent" : "340"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_C_U", "Parent" : "340"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U420", "Parent" : "340"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["346", "347", "348", "349"],
		"CDFG" : "PE_wrapper_7_2_x0",
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
			{"Name" : "fifo_A_PE_7_2_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "340", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_3_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "350", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_2_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "439", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_A_0_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_B_0_U", "Parent" : "345"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_C_U", "Parent" : "345"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U426", "Parent" : "345"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0", "Parent" : "0", "Child" : ["351", "352", "353", "354"],
		"CDFG" : "PE_wrapper_7_3_x0",
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
			{"Name" : "fifo_A_PE_7_3_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_4_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "355", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_3_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "386", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "463", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_A_0_U", "Parent" : "350"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_B_0_U", "Parent" : "350"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_C_U", "Parent" : "350"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U432", "Parent" : "350"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0", "Parent" : "0", "Child" : ["356", "357", "358", "359"],
		"CDFG" : "PE_wrapper_7_4_x0",
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
			{"Name" : "fifo_A_PE_7_4_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "350", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_5_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "360", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "315", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_4_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "487", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_A_0_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_B_0_U", "Parent" : "355"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_C_U", "Parent" : "355"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U438", "Parent" : "355"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0", "Parent" : "0", "Child" : ["361", "362", "363", "364"],
		"CDFG" : "PE_wrapper_7_5_x0",
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
			{"Name" : "fifo_A_PE_7_5_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "355", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_6_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "365", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "320", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_5_x0145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "388", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "511", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_A_0_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_B_0_U", "Parent" : "360"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_C_U", "Parent" : "360"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U444", "Parent" : "360"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0", "Parent" : "0", "Child" : ["366", "367", "368", "369"],
		"CDFG" : "PE_wrapper_7_6_x0",
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
			{"Name" : "fifo_A_PE_7_6_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "360", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_7_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "370", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "325", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_6_x0154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "389", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "535", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_A_0_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_B_0_U", "Parent" : "365"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_C_U", "Parent" : "365"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U450", "Parent" : "365"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0", "Parent" : "0", "Child" : ["371", "372", "373", "374"],
		"CDFG" : "PE_wrapper_7_7_x0",
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
			{"Name" : "fifo_A_PE_7_7_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "365", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "382", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x091_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x0163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "390", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "559", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_A_0_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_B_0_U", "Parent" : "370"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_C_U", "Parent" : "370"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U456", "Parent" : "370"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_8_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x028_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_8_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x037_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_8_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x046_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_8_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "210", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x055_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_4_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_8_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x064_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_5_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_8_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x073_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_6_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_8_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x082_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_7_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_8_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "370", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_0_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_1_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "340", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_2_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_3_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "350", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_4_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "355", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_5_x0145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "360", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_6_x0154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "365", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "672289", "EstimateLatencyMax" : "672289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_7_x0163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "370", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0", "Parent" : "0", "Child" : ["392", "393"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0.local_C_V_0_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0.data_split_V_U", "Parent" : "391"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["395", "396"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "391", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "397", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "295", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0.local_C_V_0_U", "Parent" : "394"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0.data_split_V_U", "Parent" : "394"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["398", "399"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "394", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "400", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0.local_C_V_0_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0.data_split_V_U", "Parent" : "397"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["401", "402"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "397", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "403", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0.local_C_V_0_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0.data_split_V_U", "Parent" : "400"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["404", "405"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "400", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "406", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0.local_C_V_0_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0.data_split_V_U", "Parent" : "403"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["407", "408"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "403", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "409", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0.local_C_V_0_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0.data_split_V_U", "Parent" : "406"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["410", "411"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "406", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "412", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0.local_C_V_0_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0.data_split_V_U", "Parent" : "409"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["413", "414"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "409", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0.local_C_V_0_U", "Parent" : "412"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0.data_split_V_U", "Parent" : "412"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0", "Parent" : "0", "Child" : ["416", "417"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "418", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "340", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0.local_C_V_0_U", "Parent" : "415"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0.data_split_V_U", "Parent" : "415"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["419", "420"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "415", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "421", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "300", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0.local_C_V_0_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0.data_split_V_U", "Parent" : "418"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["422", "423"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "418", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "424", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0.local_C_V_0_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0.data_split_V_U", "Parent" : "421"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["425", "426"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "421", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "427", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0.local_C_V_0_U", "Parent" : "424"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0.data_split_V_U", "Parent" : "424"},
	{"ID" : "427", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["428", "429"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "424", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "430", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0.local_C_V_0_U", "Parent" : "427"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0.data_split_V_U", "Parent" : "427"},
	{"ID" : "430", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["431", "432"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "427", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "433", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0.local_C_V_0_U", "Parent" : "430"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0.data_split_V_U", "Parent" : "430"},
	{"ID" : "433", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["434", "435"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "430", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "436", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0.local_C_V_0_U", "Parent" : "433"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0.data_split_V_U", "Parent" : "433"},
	{"ID" : "436", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["437", "438"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "433", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "589", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0.local_C_V_0_U", "Parent" : "436"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0.data_split_V_U", "Parent" : "436"},
	{"ID" : "439", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0", "Parent" : "0", "Child" : ["440", "441"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0.local_C_V_0_U", "Parent" : "439"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0.data_split_V_U", "Parent" : "439"},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["443", "444"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "439", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0.local_C_V_0_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0.data_split_V_U", "Parent" : "442"},
	{"ID" : "445", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["446", "447"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0.local_C_V_0_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0.data_split_V_U", "Parent" : "445"},
	{"ID" : "448", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["449", "450"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "445", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "451", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0.local_C_V_0_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0.data_split_V_U", "Parent" : "448"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["452", "453"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0.local_C_V_0_U", "Parent" : "451"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0.data_split_V_U", "Parent" : "451"},
	{"ID" : "454", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["455", "456"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "451", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "457", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0.local_C_V_0_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0.data_split_V_U", "Parent" : "454"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["458", "459"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "460", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0.local_C_V_0_U", "Parent" : "457"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0.data_split_V_U", "Parent" : "457"},
	{"ID" : "460", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["461", "462"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "457", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "588", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0.local_C_V_0_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0.data_split_V_U", "Parent" : "460"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0", "Parent" : "0", "Child" : ["464", "465"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "466", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "350", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0.local_C_V_0_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0.data_split_V_U", "Parent" : "463"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["467", "468"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "463", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "469", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0.local_C_V_0_U", "Parent" : "466"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0.data_split_V_U", "Parent" : "466"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["470", "471"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "466", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "472", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0.local_C_V_0_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0.data_split_V_U", "Parent" : "469"},
	{"ID" : "472", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["473", "474"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "469", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "475", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0.local_C_V_0_U", "Parent" : "472"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0.data_split_V_U", "Parent" : "472"},
	{"ID" : "475", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["476", "477"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "472", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "478", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0.local_C_V_0_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0.data_split_V_U", "Parent" : "475"},
	{"ID" : "478", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["479", "480"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "475", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "481", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0.local_C_V_0_U", "Parent" : "478"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0.data_split_V_U", "Parent" : "478"},
	{"ID" : "481", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["482", "483"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "478", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "484", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0.local_C_V_0_U", "Parent" : "481"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0.data_split_V_U", "Parent" : "481"},
	{"ID" : "484", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["485", "486"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "481", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0.local_C_V_0_U", "Parent" : "484"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0.data_split_V_U", "Parent" : "484"},
	{"ID" : "487", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0", "Parent" : "0", "Child" : ["488", "489"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "490", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "355", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0.local_C_V_0_U", "Parent" : "487"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0.data_split_V_U", "Parent" : "487"},
	{"ID" : "490", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0", "Parent" : "0", "Child" : ["491", "492"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "487", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "493", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "315", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0.local_C_V_0_U", "Parent" : "490"},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0.data_split_V_U", "Parent" : "490"},
	{"ID" : "493", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0", "Parent" : "0", "Child" : ["494", "495"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "490", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "496", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0.local_C_V_0_U", "Parent" : "493"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0.data_split_V_U", "Parent" : "493"},
	{"ID" : "496", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0", "Parent" : "0", "Child" : ["497", "498"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "493", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "499", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0.local_C_V_0_U", "Parent" : "496"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0.data_split_V_U", "Parent" : "496"},
	{"ID" : "499", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0", "Parent" : "0", "Child" : ["500", "501"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "496", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "502", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0.local_C_V_0_U", "Parent" : "499"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0.data_split_V_U", "Parent" : "499"},
	{"ID" : "502", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["503", "504"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "499", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "505", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0.local_C_V_0_U", "Parent" : "502"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0.data_split_V_U", "Parent" : "502"},
	{"ID" : "505", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["506", "507"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "502", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "508", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0.local_C_V_0_U", "Parent" : "505"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0.data_split_V_U", "Parent" : "505"},
	{"ID" : "508", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["509", "510"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "505", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "586", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0.local_C_V_0_U", "Parent" : "508"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0.data_split_V_U", "Parent" : "508"},
	{"ID" : "511", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0", "Parent" : "0", "Child" : ["512", "513"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "514", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "360", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0.local_C_V_0_U", "Parent" : "511"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0.data_split_V_U", "Parent" : "511"},
	{"ID" : "514", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0", "Parent" : "0", "Child" : ["515", "516"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "511", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "320", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0.local_C_V_0_U", "Parent" : "514"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0.data_split_V_U", "Parent" : "514"},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0", "Parent" : "0", "Child" : ["518", "519"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "514", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "520", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0.local_C_V_0_U", "Parent" : "517"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0.data_split_V_U", "Parent" : "517"},
	{"ID" : "520", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0", "Parent" : "0", "Child" : ["521", "522"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "517", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "523", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "240", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0.local_C_V_0_U", "Parent" : "520"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0.data_split_V_U", "Parent" : "520"},
	{"ID" : "523", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0", "Parent" : "0", "Child" : ["524", "525"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "520", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "526", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0.local_C_V_0_U", "Parent" : "523"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0.data_split_V_U", "Parent" : "523"},
	{"ID" : "526", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["527", "528"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "523", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "529", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0.local_C_V_0_U", "Parent" : "526"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0.data_split_V_U", "Parent" : "526"},
	{"ID" : "529", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["530", "531"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "526", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "532", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0.local_C_V_0_U", "Parent" : "529"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0.data_split_V_U", "Parent" : "529"},
	{"ID" : "532", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["533", "534"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "529", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "585", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0.local_C_V_0_U", "Parent" : "532"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0.data_split_V_U", "Parent" : "532"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0", "Parent" : "0", "Child" : ["536", "537"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "538", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "365", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0.local_C_V_0_U", "Parent" : "535"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0.data_split_V_U", "Parent" : "535"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0", "Parent" : "0", "Child" : ["539", "540"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "535", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "541", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "325", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0.local_C_V_0_U", "Parent" : "538"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0.data_split_V_U", "Parent" : "538"},
	{"ID" : "541", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0", "Parent" : "0", "Child" : ["542", "543"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "538", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "544", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0217", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "285", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0.local_C_V_0_U", "Parent" : "541"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0.data_split_V_U", "Parent" : "541"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0", "Parent" : "0", "Child" : ["545", "546"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "541", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "547", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0.local_C_V_0_U", "Parent" : "544"},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0.data_split_V_U", "Parent" : "544"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0", "Parent" : "0", "Child" : ["548", "549"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "544", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "550", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0.local_C_V_0_U", "Parent" : "547"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0.data_split_V_U", "Parent" : "547"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["551", "552"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "547", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "553", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0.local_C_V_0_U", "Parent" : "550"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0.data_split_V_U", "Parent" : "550"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["554", "555"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "550", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "556", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0.local_C_V_0_U", "Parent" : "553"},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0.data_split_V_U", "Parent" : "553"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["557", "558"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "553", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0.local_C_V_0_U", "Parent" : "556"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0.data_split_V_U", "Parent" : "556"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0", "Parent" : "0", "Child" : ["560", "561"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271137", "EstimateLatencyMax" : "271137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "562", "DependentChan" : "878", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0227", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "370", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0.local_C_V_0_U", "Parent" : "559"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0.data_split_V_U", "Parent" : "559"},
	{"ID" : "562", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0", "Parent" : "0", "Child" : ["563", "564"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "559", "DependentChan" : "878", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "565", "DependentChan" : "879", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0226", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0.local_C_V_0_U", "Parent" : "562"},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0.data_split_V_U", "Parent" : "562"},
	{"ID" : "565", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0", "Parent" : "0", "Child" : ["566", "567"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "562", "DependentChan" : "879", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "568", "DependentChan" : "880", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "566", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0.local_C_V_0_U", "Parent" : "565"},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0.data_split_V_U", "Parent" : "565"},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0", "Parent" : "0", "Child" : ["569", "570"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "565", "DependentChan" : "880", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "571", "DependentChan" : "881", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0.local_C_V_0_U", "Parent" : "568"},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0.data_split_V_U", "Parent" : "568"},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0", "Parent" : "0", "Child" : ["572", "573"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "568", "DependentChan" : "881", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "574", "DependentChan" : "882", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0223", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "210", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "572", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0.local_C_V_0_U", "Parent" : "571"},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0.data_split_V_U", "Parent" : "571"},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["575", "576"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "571", "DependentChan" : "882", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "577", "DependentChan" : "883", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0222", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0.local_C_V_0_U", "Parent" : "574"},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0.data_split_V_U", "Parent" : "574"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["578", "579"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "574", "DependentChan" : "883", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "580", "DependentChan" : "884", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0221", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0.local_C_V_0_U", "Parent" : "577"},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0.data_split_V_U", "Parent" : "577"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["581", "582"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "577", "DependentChan" : "884", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "583", "DependentChan" : "885", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0220", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0.local_C_V_0_U", "Parent" : "580"},
	{"ID" : "582", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0.data_split_V_U", "Parent" : "580"},
	{"ID" : "583", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37409", "EstimateLatencyMax" : "37409",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "886", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "580", "DependentChan" : "885", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_6_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75297", "EstimateLatencyMax" : "75297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "583", "DependentChan" : "886", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "585", "DependentChan" : "887", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "556", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_5_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "112673", "EstimateLatencyMax" : "112673",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "584", "DependentChan" : "887", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "586", "DependentChan" : "888", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "532", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_4_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "150049", "EstimateLatencyMax" : "150049",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "585", "DependentChan" : "888", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "889", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "508", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_3_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "187425", "EstimateLatencyMax" : "187425",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "586", "DependentChan" : "889", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "588", "DependentChan" : "890", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "484", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_2_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "224801", "EstimateLatencyMax" : "224801",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "587", "DependentChan" : "890", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "589", "DependentChan" : "891", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "460", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_1_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262177", "EstimateLatencyMax" : "262177",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "588", "DependentChan" : "891", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "892", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "436", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_0_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299553", "EstimateLatencyMax" : "299553",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "589", "DependentChan" : "892", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0292", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "893", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0292_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L3_out_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299553", "EstimateLatencyMax" : "299553",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "592", "DependentChan" : "894", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "590", "DependentChan" : "893", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_serialize_x0_U0", "Parent" : "0", "Child" : ["593"],
		"CDFG" : "C_drain_IO_L3_out_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "53318", "EstimateLatencyMax" : "53318",
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
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "591", "DependentChan" : "894", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "595", "DependentChanDepth" : "37", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_serialize_x0_U0.mem_data_split_V_U", "Parent" : "592"},
	{"ID" : "594", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "650", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "651", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x0_U", "Parent" : "0"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "653", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "654", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "665", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "666", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "667", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "668", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "669", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "670", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "671", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "673", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "675", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x0_U", "Parent" : "0"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "677", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "678", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "680", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "681", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "682", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "683", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "684", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "685", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "687", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "689", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "690", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "691", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "692", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "693", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "694", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "695", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "697", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "698", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "699", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x0_U", "Parent" : "0"},
	{"ID" : "700", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "702", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "704", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "706", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "707", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "708", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "709", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "710", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "711", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "712", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "713", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "714", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "715", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "716", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "717", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "718", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "719", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "720", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "721", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "722", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "723", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x0_U", "Parent" : "0"},
	{"ID" : "724", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "725", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "727", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "728", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "729", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "731", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "732", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "733", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "734", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "735", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "736", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "737", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "738", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "739", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "740", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "741", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "742", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "743", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "744", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "745", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "746", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "747", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_8_x0_U", "Parent" : "0"},
	{"ID" : "748", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "749", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "750", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "751", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "752", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "753", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "754", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "755", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "756", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "757", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "758", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "759", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "760", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "761", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "762", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "763", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "764", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "765", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "766", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "767", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "768", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "769", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "770", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "771", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_8_x0_U", "Parent" : "0"},
	{"ID" : "772", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "773", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "774", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "775", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "776", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "777", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "778", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "779", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "780", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "781", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "782", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "783", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "784", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "785", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "786", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "787", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "788", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "789", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "790", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "791", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "792", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "793", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "794", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "795", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_8_x0_U", "Parent" : "0"},
	{"ID" : "796", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "797", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "798", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "799", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x0_U", "Parent" : "0"},
	{"ID" : "800", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "801", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "802", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x0_U", "Parent" : "0"},
	{"ID" : "803", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "804", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "805", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_2_x0_U", "Parent" : "0"},
	{"ID" : "806", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "807", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "808", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_3_x0_U", "Parent" : "0"},
	{"ID" : "809", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "810", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "811", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_4_x0_U", "Parent" : "0"},
	{"ID" : "812", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "813", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "814", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_5_x0_U", "Parent" : "0"},
	{"ID" : "815", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "816", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "817", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_6_x0_U", "Parent" : "0"},
	{"ID" : "818", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "819", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_8_x0_U", "Parent" : "0"},
	{"ID" : "820", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_7_x0_U", "Parent" : "0"},
	{"ID" : "821", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "822", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U", "Parent" : "0"},
	{"ID" : "823", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U", "Parent" : "0"},
	{"ID" : "824", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U", "Parent" : "0"},
	{"ID" : "825", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U", "Parent" : "0"},
	{"ID" : "826", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U", "Parent" : "0"},
	{"ID" : "827", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U", "Parent" : "0"},
	{"ID" : "828", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U", "Parent" : "0"},
	{"ID" : "829", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U", "Parent" : "0"},
	{"ID" : "830", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U", "Parent" : "0"},
	{"ID" : "831", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U", "Parent" : "0"},
	{"ID" : "832", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U", "Parent" : "0"},
	{"ID" : "833", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U", "Parent" : "0"},
	{"ID" : "834", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U", "Parent" : "0"},
	{"ID" : "835", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U", "Parent" : "0"},
	{"ID" : "836", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U", "Parent" : "0"},
	{"ID" : "837", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U", "Parent" : "0"},
	{"ID" : "838", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_7_x0_U", "Parent" : "0"},
	{"ID" : "839", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_6_x0_U", "Parent" : "0"},
	{"ID" : "840", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_5_x0_U", "Parent" : "0"},
	{"ID" : "841", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_4_x0_U", "Parent" : "0"},
	{"ID" : "842", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_3_x0_U", "Parent" : "0"},
	{"ID" : "843", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_2_x0_U", "Parent" : "0"},
	{"ID" : "844", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_1_x0_U", "Parent" : "0"},
	{"ID" : "845", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_0_x0_U", "Parent" : "0"},
	{"ID" : "846", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_7_x0_U", "Parent" : "0"},
	{"ID" : "847", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_6_x0_U", "Parent" : "0"},
	{"ID" : "848", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_5_x0_U", "Parent" : "0"},
	{"ID" : "849", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_4_x0_U", "Parent" : "0"},
	{"ID" : "850", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_3_x0_U", "Parent" : "0"},
	{"ID" : "851", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_2_x0_U", "Parent" : "0"},
	{"ID" : "852", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_1_x0_U", "Parent" : "0"},
	{"ID" : "853", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_0_x0_U", "Parent" : "0"},
	{"ID" : "854", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_7_x0_U", "Parent" : "0"},
	{"ID" : "855", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_6_x0_U", "Parent" : "0"},
	{"ID" : "856", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_5_x0_U", "Parent" : "0"},
	{"ID" : "857", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_4_x0_U", "Parent" : "0"},
	{"ID" : "858", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_3_x0_U", "Parent" : "0"},
	{"ID" : "859", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_2_x0_U", "Parent" : "0"},
	{"ID" : "860", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_1_x0_U", "Parent" : "0"},
	{"ID" : "861", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_0_x0_U", "Parent" : "0"},
	{"ID" : "862", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_7_x0_U", "Parent" : "0"},
	{"ID" : "863", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_6_x0_U", "Parent" : "0"},
	{"ID" : "864", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_5_x0_U", "Parent" : "0"},
	{"ID" : "865", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_4_x0_U", "Parent" : "0"},
	{"ID" : "866", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_3_x0_U", "Parent" : "0"},
	{"ID" : "867", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_2_x0_U", "Parent" : "0"},
	{"ID" : "868", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_1_x0_U", "Parent" : "0"},
	{"ID" : "869", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_0_x0_U", "Parent" : "0"},
	{"ID" : "870", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_7_x0_U", "Parent" : "0"},
	{"ID" : "871", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_6_x0_U", "Parent" : "0"},
	{"ID" : "872", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_5_x0_U", "Parent" : "0"},
	{"ID" : "873", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_4_x0_U", "Parent" : "0"},
	{"ID" : "874", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_3_x0_U", "Parent" : "0"},
	{"ID" : "875", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_2_x0_U", "Parent" : "0"},
	{"ID" : "876", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_1_x0_U", "Parent" : "0"},
	{"ID" : "877", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_0_x0_U", "Parent" : "0"},
	{"ID" : "878", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_7_x0_U", "Parent" : "0"},
	{"ID" : "879", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_6_x0_U", "Parent" : "0"},
	{"ID" : "880", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_5_x0_U", "Parent" : "0"},
	{"ID" : "881", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_4_x0_U", "Parent" : "0"},
	{"ID" : "882", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_3_x0_U", "Parent" : "0"},
	{"ID" : "883", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_2_x0_U", "Parent" : "0"},
	{"ID" : "884", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_1_x0_U", "Parent" : "0"},
	{"ID" : "885", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_0_x0_U", "Parent" : "0"},
	{"ID" : "886", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_7_x0_U", "Parent" : "0"},
	{"ID" : "887", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_6_x0_U", "Parent" : "0"},
	{"ID" : "888", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_5_x0_U", "Parent" : "0"},
	{"ID" : "889", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_4_x0_U", "Parent" : "0"},
	{"ID" : "890", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_3_x0_U", "Parent" : "0"},
	{"ID" : "891", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_2_x0_U", "Parent" : "0"},
	{"ID" : "892", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x0_U", "Parent" : "0"},
	{"ID" : "893", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x0_U", "Parent" : "0"},
	{"ID" : "894", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L3_out_serialize_x0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x0 {
		gmem_C {Type O LastRead 3 FirstWrite 6}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 68 FirstWrite -1}}
	kernel0_x0_entry5 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x0_entry12 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x0 {
		fifo_A_A_IO_L3_in_serialize_x01 {Type O LastRead -1 FirstWrite 3}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L3_in_x0 {
		fifo_A_in {Type I LastRead 6 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_0_x0 {
		fifo_A_A_IO_L2_in_0_x04 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x05 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_0_0_x020 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x05 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x06 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_1_0_x029 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_2_x0 {
		fifo_A_A_IO_L2_in_2_x06 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x07 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_2_0_x038 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_3_x0 {
		fifo_A_A_IO_L2_in_3_x07 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x08 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_3_0_x047 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_4_x0 {
		fifo_A_A_IO_L2_in_4_x08 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x09 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_4_0_x056 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_5_x0 {
		fifo_A_A_IO_L2_in_5_x09 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x010 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_5_0_x065 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_6_x0 {
		fifo_A_A_IO_L2_in_6_x010 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x011 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_6_0_x074 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_boundary_x0 {
		fifo_A_A_IO_L2_in_7_x011 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_0_x083 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L3_in_serialize_x0 {
		fifo_B_B_IO_L3_in_serialize_x02 {Type O LastRead -1 FirstWrite 3}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L3_in_x0 {
		fifo_B_in {Type I LastRead 6 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 6}}
	B_IO_L2_in_0_x0 {
		fifo_B_B_IO_L2_in_0_x012 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x013 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_0_x092 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_1_x0 {
		fifo_B_B_IO_L2_in_1_x013 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x014 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_1_x0101 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_2_x0 {
		fifo_B_B_IO_L2_in_2_x014 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x015 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_2_x0110 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_3_x0 {
		fifo_B_B_IO_L2_in_3_x015 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x016 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_3_x0119 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_4_x0 {
		fifo_B_B_IO_L2_in_4_x016 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x017 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_4_x0128 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_5_x0 {
		fifo_B_B_IO_L2_in_5_x017 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x018 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_5_x0137 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_6_x0 {
		fifo_B_B_IO_L2_in_6_x018 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x019 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_6_x0146 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_boundary_x0 {
		fifo_B_B_IO_L2_in_7_x019 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_0_7_x0155 {Type O LastRead -1 FirstWrite 4}}
	PE_wrapper_0_0_x0 {
		fifo_A_PE_0_0_x020 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_1_x021 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_0_x092 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_0_x093 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_0_x0164 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_1_x0 {
		fifo_A_PE_0_1_x021 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_2_x022 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_1_x0101 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_1_x0102 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_1_x0172 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_2_x0 {
		fifo_A_PE_0_2_x022 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_3_x023 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_2_x0110 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_2_x0111 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_2_x0180 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x023 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_4_x024 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_3_x0119 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_3_x0120 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_3_x0188 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_4_x0 {
		fifo_A_PE_0_4_x024 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_5_x025 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_4_x0128 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_4_x0129 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_4_x0196 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x025 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_6_x026 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_5_x0137 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_5_x0138 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_5_x0204 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_6_x0 {
		fifo_A_PE_0_6_x026 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_7_x027 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_6_x0146 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_6_x0147 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_6_x0212 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_7_x0 {
		fifo_A_PE_0_7_x027 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_8_x028 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_7_x0155 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_7_x0156 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_7_x0220 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x029 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_1_x030 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_0_x093 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_0_x094 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_0_x0165 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x030 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_2_x031 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_1_x0102 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_1_x0103 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_1_x0173 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_2_x0 {
		fifo_A_PE_1_2_x031 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_3_x032 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_2_x0111 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_2_x0112 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_2_x0181 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_3_x0 {
		fifo_A_PE_1_3_x032 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_4_x033 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_3_x0120 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_3_x0121 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_3_x0189 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x033 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_5_x034 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_4_x0129 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_4_x0130 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_4_x0197 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_5_x0 {
		fifo_A_PE_1_5_x034 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_6_x035 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_5_x0138 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_5_x0139 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_5_x0205 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_6_x0 {
		fifo_A_PE_1_6_x035 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_7_x036 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_6_x0147 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_6_x0148 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_6_x0213 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_7_x0 {
		fifo_A_PE_1_7_x036 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_8_x037 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_7_x0156 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_7_x0157 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_7_x0221 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_0_x0 {
		fifo_A_PE_2_0_x038 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_1_x039 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_0_x094 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_0_x095 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_0_x0166 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x039 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_2_x040 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_1_x0103 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_1_x0104 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_1_x0174 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_2_x0 {
		fifo_A_PE_2_2_x040 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_3_x041 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_2_x0112 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_2_x0113 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_2_x0182 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_3_x0 {
		fifo_A_PE_2_3_x041 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_4_x042 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_3_x0121 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_3_x0122 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_3_x0190 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_4_x0 {
		fifo_A_PE_2_4_x042 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_5_x043 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_4_x0130 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_4_x0131 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_4_x0198 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_5_x0 {
		fifo_A_PE_2_5_x043 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_6_x044 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_5_x0139 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_5_x0140 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_5_x0206 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x044 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_7_x045 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_6_x0148 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_6_x0149 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_6_x0214 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_7_x0 {
		fifo_A_PE_2_7_x045 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_8_x046 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_7_x0157 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_7_x0158 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_7_x0222 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_0_x0 {
		fifo_A_PE_3_0_x047 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_1_x048 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_0_x095 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_0_x096 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_0_x0167 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_1_x0 {
		fifo_A_PE_3_1_x048 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_2_x049 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_1_x0104 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_1_x0105 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_1_x0175 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_2_x0 {
		fifo_A_PE_3_2_x049 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_3_x050 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_2_x0113 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_2_x0114 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_2_x0183 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_3_x0 {
		fifo_A_PE_3_3_x050 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_4_x051 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_3_x0122 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_3_x0123 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_3_x0191 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x051 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_5_x052 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_4_x0131 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_4_x0132 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_4_x0199 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_5_x0 {
		fifo_A_PE_3_5_x052 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_6_x053 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_5_x0140 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_5_x0141 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_5_x0207 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_6_x0 {
		fifo_A_PE_3_6_x053 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_7_x054 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_6_x0149 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_6_x0150 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_6_x0215 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_7_x0 {
		fifo_A_PE_3_7_x054 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_8_x055 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_7_x0158 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_7_x0159 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_7_x0223 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x056 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_1_x057 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_0_x096 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_0_x097 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_0_x0168 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_1_x0 {
		fifo_A_PE_4_1_x057 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_2_x058 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_1_x0105 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_1_x0106 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_1_x0176 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_2_x0 {
		fifo_A_PE_4_2_x058 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_3_x059 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_2_x0114 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_2_x0115 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_2_x0184 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_3_x0 {
		fifo_A_PE_4_3_x059 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_4_x060 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_3_x0123 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_3_x0124 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_3_x0192 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_4_x0 {
		fifo_A_PE_4_4_x060 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_5_x061 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_4_x0132 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_4_x0133 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_4_x0200 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_5_x0 {
		fifo_A_PE_4_5_x061 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_6_x062 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_5_x0141 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_5_x0142 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_5_x0208 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_6_x0 {
		fifo_A_PE_4_6_x062 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_7_x063 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_6_x0150 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_6_x0151 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_6_x0216 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_7_x0 {
		fifo_A_PE_4_7_x063 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_8_x064 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_7_x0159 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_7_x0160 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_7_x0224 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_0_x0 {
		fifo_A_PE_5_0_x065 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_1_x066 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_0_x097 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_0_x098 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_0_x0169 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_1_x0 {
		fifo_A_PE_5_1_x066 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_2_x067 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_1_x0106 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_1_x0107 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_1_x0177 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_2_x0 {
		fifo_A_PE_5_2_x067 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_3_x068 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_2_x0115 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_2_x0116 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_2_x0185 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_3_x0 {
		fifo_A_PE_5_3_x068 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_4_x069 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_3_x0124 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_3_x0125 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_3_x0193 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_4_x0 {
		fifo_A_PE_5_4_x069 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_5_x070 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_4_x0133 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_4_x0134 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_4_x0201 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_5_x0 {
		fifo_A_PE_5_5_x070 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_6_x071 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_5_x0142 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_5_x0143 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_5_x0209 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_6_x0 {
		fifo_A_PE_5_6_x071 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_7_x072 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_6_x0151 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_6_x0152 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_6_x0217 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_7_x0 {
		fifo_A_PE_5_7_x072 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_8_x073 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_7_x0160 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_7_x0161 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_7_x0225 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_0_x0 {
		fifo_A_PE_6_0_x074 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_1_x075 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_0_x098 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_0_x099 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_0_x0170 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_1_x0 {
		fifo_A_PE_6_1_x075 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_2_x076 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_1_x0107 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_1_x0108 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_1_x0178 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_2_x0 {
		fifo_A_PE_6_2_x076 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_3_x077 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_2_x0116 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_2_x0117 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_2_x0186 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_3_x0 {
		fifo_A_PE_6_3_x077 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_4_x078 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_3_x0125 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_3_x0126 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_3_x0194 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_4_x0 {
		fifo_A_PE_6_4_x078 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_5_x079 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_4_x0134 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_4_x0135 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_4_x0202 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_5_x0 {
		fifo_A_PE_6_5_x079 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_6_x080 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_5_x0143 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_5_x0144 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_5_x0210 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_6_x0 {
		fifo_A_PE_6_6_x080 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_7_x081 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_6_x0152 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_6_x0153 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_6_x0218 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_7_x0 {
		fifo_A_PE_6_7_x081 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_8_x082 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_7_x0161 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_7_x0162 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_7_x0226 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_0_x0 {
		fifo_A_PE_7_0_x083 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_1_x084 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_0_x099 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_0_x0100 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_0_x0171 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_1_x0 {
		fifo_A_PE_7_1_x084 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_2_x085 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_1_x0108 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_1_x0109 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_1_x0179 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_2_x0 {
		fifo_A_PE_7_2_x085 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_3_x086 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_2_x0117 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_2_x0118 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_2_x0187 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_3_x0 {
		fifo_A_PE_7_3_x086 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_4_x087 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_3_x0126 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_3_x0127 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_3_x0195 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_4_x0 {
		fifo_A_PE_7_4_x087 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_5_x088 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_4_x0135 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_4_x0136 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_4_x0203 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_5_x0 {
		fifo_A_PE_7_5_x088 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_6_x089 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_5_x0144 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_5_x0145 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_5_x0211 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_6_x0 {
		fifo_A_PE_7_6_x089 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_7_x090 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_6_x0153 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_6_x0154 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_6_x0219 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_7_x0 {
		fifo_A_PE_7_7_x090 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_8_x091 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_7_x0162 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_7_x0163 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_7_x0227 {Type O LastRead -1 FirstWrite 10}}
	A_PE_dummy_in_0_x0 {
		fifo_A_PE_0_8_x028 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_1_x0 {
		fifo_A_PE_1_8_x037 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_2_x0 {
		fifo_A_PE_2_8_x046 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_3_x0 {
		fifo_A_PE_3_8_x055 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_4_x0 {
		fifo_A_PE_4_8_x064 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_5_x0 {
		fifo_A_PE_5_8_x073 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_6_x0 {
		fifo_A_PE_6_8_x082 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_7_x0 {
		fifo_A_PE_7_8_x091 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_0_x0 {
		fifo_B_PE_8_0_x0100 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_1_x0 {
		fifo_B_PE_8_1_x0109 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_2_x0 {
		fifo_B_PE_8_2_x0118 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_3_x0 {
		fifo_B_PE_8_3_x0127 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_4_x0 {
		fifo_B_PE_8_4_x0136 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_5_x0 {
		fifo_B_PE_8_5_x0145 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_6_x0 {
		fifo_B_PE_8_6_x0154 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_7_x0 {
		fifo_B_PE_8_7_x0163 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0235 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_0_x0171 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0235 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0234 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_0_x0170 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0234 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0233 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_0_x0169 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0233 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0232 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_0_x0168 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0232 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0231 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x0167 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0231 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0230 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x0166 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0230 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0229 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_0_x0165 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0229 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0228 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_0_x0164 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0243 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_1_x0179 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0243 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0242 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x0178 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0242 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0241 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_1_x0177 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0241 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0240 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_1_x0176 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0240 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0239 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_1_x0175 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0239 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0238 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_1_x0174 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0238 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0237 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_1_x0173 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0237 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0236 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_1_x0172 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_7_x0251 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_2_x0187 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_7_x0251 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_6_x0250 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_2_x0186 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_6_x0250 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_5_x0249 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_2_x0185 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_5_x0249 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_4_x0248 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_2_x0184 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_4_x0248 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_3_x0247 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_2_x0183 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_3_x0247 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_2_x0246 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_2_x0182 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_2_x0246 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_1_x0245 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_2_x0181 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_1_x0245 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_2_x0180 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_7_x0259 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_3_x0195 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_7_x0259 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_6_x0258 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_3_x0194 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_6_x0258 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_5_x0257 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_3_x0193 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_5_x0257 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_4_x0256 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_3_x0192 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_4_x0256 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_3_x0255 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_3_x0191 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_3_x0255 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_2_x0254 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_3_x0190 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_2_x0254 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_1_x0253 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_3_x0189 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_1_x0253 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_0_x0252 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_3_x0188 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_7_x0267 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_4_x0203 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_7_x0267 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_6_x0266 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_4_x0202 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_6_x0266 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_5_x0265 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_4_x0201 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_5_x0265 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_4_x0264 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_4_x0200 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_4_x0264 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_3_x0263 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_4_x0199 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_3_x0263 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_2_x0262 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_4_x0198 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_2_x0262 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_1_x0261 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_4_x0197 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_1_x0261 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_0_x0260 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_4_x0196 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_7_x0275 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_5_x0211 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_7_x0275 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_6_x0274 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_5_x0210 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_6_x0274 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_5_x0273 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_5_x0209 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_5_x0273 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_4_x0272 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_5_x0208 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_4_x0272 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_3_x0271 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_5_x0207 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_3_x0271 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_2_x0270 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_5_x0206 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_2_x0270 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_1_x0269 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_5_x0205 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_1_x0269 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_0_x0268 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_5_x0204 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_7_x0283 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_6_x0219 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_7_x0283 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_6_x0282 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_6_x0218 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_6_x0282 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_5_x0281 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_6_x0217 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_5_x0281 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_4_x0280 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_6_x0216 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_4_x0280 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_3_x0279 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_6_x0215 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_3_x0279 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_2_x0278 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_6_x0214 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_2_x0278 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_1_x0277 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_6_x0213 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_1_x0277 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_6_x0212 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_7_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_7_x0291 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_7_x0227 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_7_x0291 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_6_x0290 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_7_x0226 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_6_x0290 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_5_x0289 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_7_x0225 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_5_x0289 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_4_x0288 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_7_x0224 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_4_x0288 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_3_x0287 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_7_x0223 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_3_x0287 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_2_x0286 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_7_x0222 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_2_x0286 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_1_x0285 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_7_x0221 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_1_x0285 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_0_x0284 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_7_x0220 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0299 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_C_drain_IO_L1_out_7_0_x0284 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L2_out_6_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0299 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_6_x0298 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_5_x0 {
		fifo_C_drain_C_drain_IO_L2_out_6_x0298 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_5_x0297 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_5_0_x0268 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_4_x0 {
		fifo_C_drain_C_drain_IO_L2_out_5_x0297 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_4_x0296 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_4_0_x0260 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_3_x0 {
		fifo_C_drain_C_drain_IO_L2_out_4_x0296 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_3_x0295 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_3_0_x0252 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_2_x0 {
		fifo_C_drain_C_drain_IO_L2_out_3_x0295 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_2_x0294 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_1_x0 {
		fifo_C_drain_C_drain_IO_L2_out_2_x0294 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_1_x0293 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0236 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_0_x0 {
		fifo_C_drain_C_drain_IO_L2_out_1_x0293 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x0292 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0228 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L3_out_x0 {
		fifo_C_drain_out {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_local_in {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L3_out_serialize_x0 {
		gmem_C {Type O LastRead 3 FirstWrite 6}
		fifo_C_drain_local_in {Type I LastRead 4 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129123154", "Max" : "129123154"}
	, {"Name" : "Interval", "Min" : "129122850", "Max" : "129122850"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 32 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 32 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
	A { ap_memory {  { A_address0 mem_address 1 12 }  { A_ce0 mem_ce 1 1 }  { A_d0 mem_din 1 119 }  { A_q0 mem_dout 0 119 }  { A_we0 mem_we 1 1 }  { A_address1 mem_address 1 12 }  { A_ce1 mem_ce 1 1 }  { A_d1 mem_din 1 119 }  { A_q1 mem_dout 0 119 }  { A_we1 mem_we 1 1 } } }
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 119 }  { B_q0 mem_dout 0 119 }  { B_we0 mem_we 1 1 }  { B_address1 mem_address 1 12 }  { B_ce1 mem_ce 1 1 }  { B_d1 mem_din 1 119 }  { B_q1 mem_dout 0 119 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
}
set moduleName kernel0_x0
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
set C_modelName {kernel0_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_C int 512 regular {axi_master 1}  }
	{ A int 119 regular {array 4096 { 1 3 } 1 1 }  }
	{ B int 119 regular {array 4096 { 1 3 } 1 1 }  }
	{ C int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 119, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 119, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 74
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
	{ A_address0 sc_out sc_lv 12 signal 1 } 
	{ A_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_d0 sc_out sc_lv 119 signal 1 } 
	{ A_q0 sc_in sc_lv 119 signal 1 } 
	{ A_we0 sc_out sc_logic 1 signal 1 } 
	{ A_address1 sc_out sc_lv 12 signal 1 } 
	{ A_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_d1 sc_out sc_lv 119 signal 1 } 
	{ A_q1 sc_in sc_lv 119 signal 1 } 
	{ A_we1 sc_out sc_logic 1 signal 1 } 
	{ B_address0 sc_out sc_lv 12 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_d0 sc_out sc_lv 119 signal 2 } 
	{ B_q0 sc_in sc_lv 119 signal 2 } 
	{ B_we0 sc_out sc_logic 1 signal 2 } 
	{ B_address1 sc_out sc_lv 12 signal 2 } 
	{ B_ce1 sc_out sc_logic 1 signal 2 } 
	{ B_d1 sc_out sc_lv 119 signal 2 } 
	{ B_q1 sc_in sc_lv 119 signal 2 } 
	{ B_we1 sc_out sc_logic 1 signal 2 } 
	{ C sc_in sc_lv 64 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ C_ap_vld sc_in sc_logic 1 invld 3 } 
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
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "B", "role": "d0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "B", "role": "d1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":119, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "8", "11", "14", "17", "20", "23", "26", "29", "30", "31", "34", "37", "40", "43", "46", "49", "52", "55", "60", "65", "70", "75", "80", "85", "90", "95", "100", "105", "110", "115", "120", "125", "130", "135", "140", "145", "150", "155", "160", "165", "170", "175", "180", "185", "190", "195", "200", "205", "210", "215", "220", "225", "230", "235", "240", "245", "250", "255", "260", "265", "270", "275", "280", "285", "290", "295", "300", "305", "310", "315", "320", "325", "330", "335", "340", "345", "350", "355", "360", "365", "370", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "395", "398", "401", "404", "407", "410", "413", "414", "417", "420", "423", "426", "429", "432", "435", "436", "439", "442", "445", "448", "451", "454", "457", "458", "461", "464", "467", "470", "473", "476", "479", "480", "483", "486", "489", "492", "495", "498", "501", "502", "505", "508", "511", "514", "517", "520", "523", "524", "527", "530", "533", "536", "539", "542", "545", "546", "549", "552", "555", "558", "561", "564", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "877"],
		"CDFG" : "kernel0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129123159", "EstimateLatencyMax" : "129123159",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x0_entry5_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x0_U0"},
			{"ID" : "29", "Name" : "B_IO_L3_in_serialize_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "375", "Name" : "A_PE_dummy_in_0_x0_U0"},
			{"ID" : "376", "Name" : "A_PE_dummy_in_1_x0_U0"},
			{"ID" : "377", "Name" : "A_PE_dummy_in_2_x0_U0"},
			{"ID" : "378", "Name" : "A_PE_dummy_in_3_x0_U0"},
			{"ID" : "379", "Name" : "A_PE_dummy_in_4_x0_U0"},
			{"ID" : "380", "Name" : "A_PE_dummy_in_5_x0_U0"},
			{"ID" : "381", "Name" : "A_PE_dummy_in_6_x0_U0"},
			{"ID" : "382", "Name" : "A_PE_dummy_in_7_x0_U0"},
			{"ID" : "383", "Name" : "B_PE_dummy_in_0_x0_U0"},
			{"ID" : "384", "Name" : "B_PE_dummy_in_1_x0_U0"},
			{"ID" : "385", "Name" : "B_PE_dummy_in_2_x0_U0"},
			{"ID" : "386", "Name" : "B_PE_dummy_in_3_x0_U0"},
			{"ID" : "387", "Name" : "B_PE_dummy_in_4_x0_U0"},
			{"ID" : "388", "Name" : "B_PE_dummy_in_5_x0_U0"},
			{"ID" : "389", "Name" : "B_PE_dummy_in_6_x0_U0"},
			{"ID" : "390", "Name" : "B_PE_dummy_in_7_x0_U0"},
			{"ID" : "576", "Name" : "C_drain_IO_L3_out_serialize_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "576", "SubInstance" : "C_drain_IO_L3_out_serialize_x0_U0", "Port" : "gmem_C"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x0_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "B_IO_L3_in_serialize_x0_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry5_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry5",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry12_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry12",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "576", "DependentChan" : "578", "DependentChanDepth" : "37", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12289", "EstimateLatencyMax" : "12289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L3_in_serialize_x01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L3_in_serialize_x01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["6", "7"],
		"CDFG" : "A_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1270450", "EstimateLatencyMax" : "2450098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x05", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x020_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_ping_V_0_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_pong_V_0_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "A_IO_L2_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1114802", "EstimateLatencyMax" : "2294450",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x029_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_ping_V_0_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_pong_V_0_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "A_IO_L2_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "959154", "EstimateLatencyMax" : "2138802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x038_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_ping_V_0_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_pong_V_0_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["15", "16"],
		"CDFG" : "A_IO_L2_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "803506", "EstimateLatencyMax" : "1983154",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x047_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0.local_A_ping_V_0_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0.local_A_pong_V_0_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["18", "19"],
		"CDFG" : "A_IO_L2_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "647858", "EstimateLatencyMax" : "1827506",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_4_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0.local_A_ping_V_0_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0.local_A_pong_V_0_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["21", "22"],
		"CDFG" : "A_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "492210", "EstimateLatencyMax" : "1671858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0.local_A_ping_V_0_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0.local_A_pong_V_0_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "A_IO_L2_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "336562", "EstimateLatencyMax" : "1516210",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "295", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x074_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0.local_A_ping_V_0_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0.local_A_pong_V_0_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["27", "28"],
		"CDFG" : "A_IO_L2_in_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98450", "EstimateLatencyMax" : "630930",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_7_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_ping_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12289", "EstimateLatencyMax" : "12289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["32", "33"],
		"CDFG" : "B_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "622723", "EstimateLatencyMax" : "1220739",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_ping_V_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_pong_V_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["35", "36"],
		"CDFG" : "B_IO_L2_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "548995", "EstimateLatencyMax" : "1147011",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_ping_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_pong_V_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "B_IO_L2_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "475267", "EstimateLatencyMax" : "1073283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_ping_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_pong_V_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["41", "42"],
		"CDFG" : "B_IO_L2_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "401539", "EstimateLatencyMax" : "999555",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_ping_V_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_pong_V_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["44", "45"],
		"CDFG" : "B_IO_L2_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "327811", "EstimateLatencyMax" : "925827",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_ping_V_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_pong_V_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "B_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254083", "EstimateLatencyMax" : "852099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_ping_V_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_pong_V_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["50", "51"],
		"CDFG" : "B_IO_L2_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "180355", "EstimateLatencyMax" : "778371",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_ping_V_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_pong_V_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["53", "54"],
		"CDFG" : "B_IO_L2_in_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98394", "EstimateLatencyMax" : "630874",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_ping_V_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["56", "57", "58", "59"],
		"CDFG" : "PE_wrapper_0_0_x0",
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
			{"Name" : "fifo_A_PE_0_0_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "410", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_A_0_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_B_0_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_C_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U76", "Parent" : "55"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["61", "62", "63", "64"],
		"CDFG" : "PE_wrapper_0_1_x0",
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
			{"Name" : "fifo_A_PE_0_1_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "432", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_A_0_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_B_0_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_C_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U85", "Parent" : "60"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["66", "67", "68", "69"],
		"CDFG" : "PE_wrapper_0_2_x0",
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
			{"Name" : "fifo_A_PE_0_2_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "105", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_A_0_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_B_0_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_C_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U91", "Parent" : "65"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["71", "72", "73", "74"],
		"CDFG" : "PE_wrapper_0_3_x0",
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
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "476", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_A_0_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_B_0_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_C_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U97", "Parent" : "70"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["76", "77", "78", "79"],
		"CDFG" : "PE_wrapper_0_4_x0",
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
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "498", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_A_0_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_B_0_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_C_U", "Parent" : "75"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U103", "Parent" : "75"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["81", "82", "83", "84"],
		"CDFG" : "PE_wrapper_0_5_x0",
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
			{"Name" : "fifo_A_PE_0_5_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "120", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "520", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_A_0_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_B_0_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_C_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U109", "Parent" : "80"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["86", "87", "88", "89"],
		"CDFG" : "PE_wrapper_0_6_x0",
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
			{"Name" : "fifo_A_PE_0_6_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "542", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_A_0_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_B_0_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_C_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U115", "Parent" : "85"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0", "Parent" : "0", "Child" : ["91", "92", "93", "94"],
		"CDFG" : "PE_wrapper_0_7_x0",
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
			{"Name" : "fifo_A_PE_0_7_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "375", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "564", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_A_0_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_B_0_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_C_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U121", "Parent" : "90"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["96", "97", "98", "99"],
		"CDFG" : "PE_wrapper_1_0_x0",
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
			{"Name" : "fifo_A_PE_1_0_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_A_0_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_B_0_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_C_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U127", "Parent" : "95"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["101", "102", "103", "104"],
		"CDFG" : "PE_wrapper_1_1_x0",
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
			{"Name" : "fifo_A_PE_1_1_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "105", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_A_0_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_B_0_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_C_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U133", "Parent" : "100"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["106", "107", "108", "109"],
		"CDFG" : "PE_wrapper_1_2_x0",
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
			{"Name" : "fifo_A_PE_1_2_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "451", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_A_0_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_B_0_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_C_U", "Parent" : "105"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U139", "Parent" : "105"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["111", "112", "113", "114"],
		"CDFG" : "PE_wrapper_1_3_x0",
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
			{"Name" : "fifo_A_PE_1_3_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_A_0_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_B_0_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_C_U", "Parent" : "110"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U145", "Parent" : "110"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["116", "117", "118", "119"],
		"CDFG" : "PE_wrapper_1_4_x0",
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
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "120", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "495", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_A_0_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_B_0_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_C_U", "Parent" : "115"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U151", "Parent" : "115"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["121", "122", "123", "124"],
		"CDFG" : "PE_wrapper_1_5_x0",
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
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_A_0_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_B_0_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_C_U", "Parent" : "120"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U157", "Parent" : "120"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["126", "127", "128", "129"],
		"CDFG" : "PE_wrapper_1_6_x0",
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
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_A_0_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_B_0_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_C_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U163", "Parent" : "125"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0", "Parent" : "0", "Child" : ["131", "132", "133", "134"],
		"CDFG" : "PE_wrapper_1_7_x0",
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
			{"Name" : "fifo_A_PE_1_7_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "376", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "561", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_A_0_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_B_0_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_C_U", "Parent" : "130"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U169", "Parent" : "130"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["136", "137", "138", "139"],
		"CDFG" : "PE_wrapper_2_0_x0",
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
			{"Name" : "fifo_A_PE_2_0_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "404", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_A_0_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_B_0_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_C_U", "Parent" : "135"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U175", "Parent" : "135"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["141", "142", "143", "144"],
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
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_A_0_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_B_0_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_C_U", "Parent" : "140"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U181", "Parent" : "140"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["146", "147", "148", "149"],
		"CDFG" : "PE_wrapper_2_2_x0",
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
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_A_0_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_B_0_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_C_U", "Parent" : "145"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U187", "Parent" : "145"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["151", "152", "153", "154"],
		"CDFG" : "PE_wrapper_2_3_x0",
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
			{"Name" : "fifo_A_PE_2_3_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "470", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_A_0_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_B_0_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_C_U", "Parent" : "150"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U193", "Parent" : "150"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["156", "157", "158", "159"],
		"CDFG" : "PE_wrapper_2_4_x0",
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
			{"Name" : "fifo_A_PE_2_4_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "492", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_A_0_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_B_0_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_C_U", "Parent" : "155"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U199", "Parent" : "155"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["161", "162", "163", "164"],
		"CDFG" : "PE_wrapper_2_5_x0",
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
			{"Name" : "fifo_A_PE_2_5_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "514", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_A_0_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_B_0_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_C_U", "Parent" : "160"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U205", "Parent" : "160"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["166", "167", "168", "169"],
		"CDFG" : "PE_wrapper_2_6_x0",
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
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "536", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_A_0_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_B_0_U", "Parent" : "165"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_C_U", "Parent" : "165"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U211", "Parent" : "165"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0", "Parent" : "0", "Child" : ["171", "172", "173", "174"],
		"CDFG" : "PE_wrapper_2_7_x0",
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
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "377", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "558", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_A_0_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_B_0_U", "Parent" : "170"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_C_U", "Parent" : "170"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U217", "Parent" : "170"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["176", "177", "178", "179"],
		"CDFG" : "PE_wrapper_3_0_x0",
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
			{"Name" : "fifo_A_PE_3_0_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "401", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_A_0_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_B_0_U", "Parent" : "175"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_C_U", "Parent" : "175"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U223", "Parent" : "175"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["181", "182", "183", "184"],
		"CDFG" : "PE_wrapper_3_1_x0",
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
			{"Name" : "fifo_A_PE_3_1_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "423", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_A_0_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_B_0_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_C_U", "Parent" : "180"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U229", "Parent" : "180"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["186", "187", "188", "189"],
		"CDFG" : "PE_wrapper_3_2_x0",
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
			{"Name" : "fifo_A_PE_3_2_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_A_0_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_B_0_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_C_U", "Parent" : "185"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U235", "Parent" : "185"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["191", "192", "193", "194"],
		"CDFG" : "PE_wrapper_3_3_x0",
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
			{"Name" : "fifo_A_PE_3_3_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_A_0_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_B_0_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_C_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U241", "Parent" : "190"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["196", "197", "198", "199"],
		"CDFG" : "PE_wrapper_3_4_x0",
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
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "489", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_A_0_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_B_0_U", "Parent" : "195"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_C_U", "Parent" : "195"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U247", "Parent" : "195"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["201", "202", "203", "204"],
		"CDFG" : "PE_wrapper_3_5_x0",
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
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "240", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "511", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_A_0_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_B_0_U", "Parent" : "200"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_C_U", "Parent" : "200"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U253", "Parent" : "200"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["206", "207", "208", "209"],
		"CDFG" : "PE_wrapper_3_6_x0",
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
			{"Name" : "fifo_A_PE_3_6_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_A_0_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_B_0_U", "Parent" : "205"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_C_U", "Parent" : "205"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U259", "Parent" : "205"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0", "Parent" : "0", "Child" : ["211", "212", "213", "214"],
		"CDFG" : "PE_wrapper_3_7_x0",
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
			{"Name" : "fifo_A_PE_3_7_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "378", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0223", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "555", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_A_0_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_B_0_U", "Parent" : "210"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_C_U", "Parent" : "210"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U265", "Parent" : "210"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["216", "217", "218", "219"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "398", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_A_0_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_B_0_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_C_U", "Parent" : "215"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U271", "Parent" : "215"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["221", "222", "223", "224"],
		"CDFG" : "PE_wrapper_4_1_x0",
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
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "420", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_A_0_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_B_0_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_C_U", "Parent" : "220"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U277", "Parent" : "220"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["226", "227", "228", "229"],
		"CDFG" : "PE_wrapper_4_2_x0",
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
			{"Name" : "fifo_A_PE_4_2_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_3_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_A_0_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_B_0_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_C_U", "Parent" : "225"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U283", "Parent" : "225"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0", "Parent" : "0", "Child" : ["231", "232", "233", "234"],
		"CDFG" : "PE_wrapper_4_3_x0",
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
			{"Name" : "fifo_A_PE_4_3_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "464", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_A_0_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_B_0_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_C_U", "Parent" : "230"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U289", "Parent" : "230"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0", "Parent" : "0", "Child" : ["236", "237", "238", "239"],
		"CDFG" : "PE_wrapper_4_4_x0",
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
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "240", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "486", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_A_0_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_B_0_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_C_U", "Parent" : "235"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U295", "Parent" : "235"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0", "Parent" : "0", "Child" : ["241", "242", "243", "244"],
		"CDFG" : "PE_wrapper_4_5_x0",
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
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "508", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_A_0_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_B_0_U", "Parent" : "240"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_C_U", "Parent" : "240"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U301", "Parent" : "240"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0", "Parent" : "0", "Child" : ["246", "247", "248", "249"],
		"CDFG" : "PE_wrapper_4_6_x0",
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
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "240", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_A_0_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_B_0_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_C_U", "Parent" : "245"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U307", "Parent" : "245"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0", "Parent" : "0", "Child" : ["251", "252", "253", "254"],
		"CDFG" : "PE_wrapper_4_7_x0",
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
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_8_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "379", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "210", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "552", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_A_0_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_B_0_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_C_U", "Parent" : "250"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U313", "Parent" : "250"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["256", "257", "258", "259"],
		"CDFG" : "PE_wrapper_5_0_x0",
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
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "295", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "395", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_A_0_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_B_0_U", "Parent" : "255"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_C_U", "Parent" : "255"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U319", "Parent" : "255"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["261", "262", "263", "264"],
		"CDFG" : "PE_wrapper_5_1_x0",
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
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "300", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "417", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_A_0_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_B_0_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_C_U", "Parent" : "260"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U325", "Parent" : "260"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["266", "267", "268", "269"],
		"CDFG" : "PE_wrapper_5_2_x0",
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
			{"Name" : "fifo_A_PE_5_2_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_3_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "305", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "439", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_A_0_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_B_0_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_C_U", "Parent" : "265"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U331", "Parent" : "265"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0", "Parent" : "0", "Child" : ["271", "272", "273", "274"],
		"CDFG" : "PE_wrapper_5_3_x0",
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
			{"Name" : "fifo_A_PE_5_3_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_4_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "461", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_A_0_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_B_0_U", "Parent" : "270"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_C_U", "Parent" : "270"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U337", "Parent" : "270"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0", "Parent" : "0", "Child" : ["276", "277", "278", "279"],
		"CDFG" : "PE_wrapper_5_4_x0",
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
			{"Name" : "fifo_A_PE_5_4_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_5_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "315", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "483", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_A_0_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_B_0_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_C_U", "Parent" : "275"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U343", "Parent" : "275"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0", "Parent" : "0", "Child" : ["281", "282", "283", "284"],
		"CDFG" : "PE_wrapper_5_5_x0",
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
			{"Name" : "fifo_A_PE_5_5_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_6_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "240", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "320", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "505", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_A_0_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_B_0_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_C_U", "Parent" : "280"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U349", "Parent" : "280"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0", "Parent" : "0", "Child" : ["286", "287", "288", "289"],
		"CDFG" : "PE_wrapper_5_6_x0",
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
			{"Name" : "fifo_A_PE_5_6_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_7_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_A_0_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_B_0_U", "Parent" : "285"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_C_U", "Parent" : "285"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U355", "Parent" : "285"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0", "Parent" : "0", "Child" : ["291", "292", "293", "294"],
		"CDFG" : "PE_wrapper_5_7_x0",
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
			{"Name" : "fifo_A_PE_5_7_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "285", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_8_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "380", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "549", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_A_0_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_B_0_U", "Parent" : "290"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_C_U", "Parent" : "290"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U361", "Parent" : "290"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["296", "297", "298", "299"],
		"CDFG" : "PE_wrapper_6_0_x0",
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
			{"Name" : "fifo_A_PE_6_0_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "300", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "392", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_A_0_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_B_0_U", "Parent" : "295"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_C_U", "Parent" : "295"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U367", "Parent" : "295"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["301", "302", "303", "304"],
		"CDFG" : "PE_wrapper_6_1_x0",
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
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "295", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "305", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "340", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "414", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_A_0_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_B_0_U", "Parent" : "300"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_C_U", "Parent" : "300"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U373", "Parent" : "300"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["306", "307", "308", "309"],
		"CDFG" : "PE_wrapper_6_2_x0",
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
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "300", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "436", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_A_0_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_B_0_U", "Parent" : "305"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_C_U", "Parent" : "305"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U379", "Parent" : "305"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0", "Parent" : "0", "Child" : ["311", "312", "313", "314"],
		"CDFG" : "PE_wrapper_6_3_x0",
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
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "315", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "350", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_A_0_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_B_0_U", "Parent" : "310"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_C_U", "Parent" : "310"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U385", "Parent" : "310"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0", "Parent" : "0", "Child" : ["316", "317", "318", "319"],
		"CDFG" : "PE_wrapper_6_4_x0",
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
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "320", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "355", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "480", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_A_0_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_B_0_U", "Parent" : "315"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_C_U", "Parent" : "315"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U391", "Parent" : "315"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0", "Parent" : "0", "Child" : ["321", "322", "323", "324"],
		"CDFG" : "PE_wrapper_6_5_x0",
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
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "315", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "360", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "502", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_A_0_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_B_0_U", "Parent" : "320"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_C_U", "Parent" : "320"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U397", "Parent" : "320"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0", "Parent" : "0", "Child" : ["326", "327", "328", "329"],
		"CDFG" : "PE_wrapper_6_6_x0",
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
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "320", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "285", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "365", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "524", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_A_0_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_B_0_U", "Parent" : "325"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_C_U", "Parent" : "325"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U403", "Parent" : "325"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0", "Parent" : "0", "Child" : ["331", "332", "333", "334"],
		"CDFG" : "PE_wrapper_6_7_x0",
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
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "325", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_8_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "381", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "370", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "546", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_A_0_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_B_0_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_C_U", "Parent" : "330"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U409", "Parent" : "330"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["336", "337", "338", "339"],
		"CDFG" : "PE_wrapper_7_0_x0",
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
			{"Name" : "fifo_A_PE_7_0_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "340", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "295", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "383", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "391", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_A_0_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_B_0_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_C_U", "Parent" : "335"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U415", "Parent" : "335"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["341", "342", "343", "344"],
		"CDFG" : "PE_wrapper_7_1_x0",
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
			{"Name" : "fifo_A_PE_7_1_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "300", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_A_0_U", "Parent" : "340"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_B_0_U", "Parent" : "340"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_C_U", "Parent" : "340"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U421", "Parent" : "340"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["346", "347", "348", "349"],
		"CDFG" : "PE_wrapper_7_2_x0",
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
			{"Name" : "fifo_A_PE_7_2_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "340", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_3_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "350", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_2_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "435", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_A_0_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_B_0_U", "Parent" : "345"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_C_U", "Parent" : "345"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U427", "Parent" : "345"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0", "Parent" : "0", "Child" : ["351", "352", "353", "354"],
		"CDFG" : "PE_wrapper_7_3_x0",
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
			{"Name" : "fifo_A_PE_7_3_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_4_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "355", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_3_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "386", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "457", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_A_0_U", "Parent" : "350"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_B_0_U", "Parent" : "350"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_C_U", "Parent" : "350"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U433", "Parent" : "350"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0", "Parent" : "0", "Child" : ["356", "357", "358", "359"],
		"CDFG" : "PE_wrapper_7_4_x0",
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
			{"Name" : "fifo_A_PE_7_4_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "350", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_5_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "360", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "315", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_4_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_A_0_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_B_0_U", "Parent" : "355"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_C_U", "Parent" : "355"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U439", "Parent" : "355"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0", "Parent" : "0", "Child" : ["361", "362", "363", "364"],
		"CDFG" : "PE_wrapper_7_5_x0",
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
			{"Name" : "fifo_A_PE_7_5_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "355", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_6_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "365", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "320", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_5_x0145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "388", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "501", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_A_0_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_B_0_U", "Parent" : "360"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_C_U", "Parent" : "360"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U445", "Parent" : "360"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0", "Parent" : "0", "Child" : ["366", "367", "368", "369"],
		"CDFG" : "PE_wrapper_7_6_x0",
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
			{"Name" : "fifo_A_PE_7_6_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "360", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_7_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "370", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "325", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_6_x0154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "389", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "523", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_A_0_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_B_0_U", "Parent" : "365"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_C_U", "Parent" : "365"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U451", "Parent" : "365"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0", "Parent" : "0", "Child" : ["371", "372", "373", "374"],
		"CDFG" : "PE_wrapper_7_7_x0",
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
			{"Name" : "fifo_A_PE_7_7_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "365", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "382", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x091_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x0163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "390", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_A_0_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_B_0_U", "Parent" : "370"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_C_U", "Parent" : "370"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U457", "Parent" : "370"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_8_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x028_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_8_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x037_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_8_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x046_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_8_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "210", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x055_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_4_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_4_8_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x064_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_5_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_5_8_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x073_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_6_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_6_8_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x082_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_7_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_7_8_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "370", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_0_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_1_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "340", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_2_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_3_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "350", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_4_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "355", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_5_x0145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "360", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_6_x0154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "365", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "524290", "EstimateLatencyMax" : "524290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_8_7_x0163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "370", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "392", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["393", "394"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "391", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "395", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "295", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0.local_C_V_0_U", "Parent" : "392"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0.data_split_V_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["396", "397"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "392", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "398", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0.local_C_V_0_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0.data_split_V_U", "Parent" : "395"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["399", "400"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "395", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "401", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0.local_C_V_0_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0.data_split_V_U", "Parent" : "398"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["402", "403"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "398", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "404", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0.local_C_V_0_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0.data_split_V_U", "Parent" : "401"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["405", "406"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "401", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0.local_C_V_0_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0.data_split_V_U", "Parent" : "404"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["408", "409"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "404", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "410", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0.local_C_V_0_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0.data_split_V_U", "Parent" : "407"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["411", "412"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_0_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "407", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "574", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0.local_C_V_0_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0.data_split_V_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "414", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "340", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["415", "416"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "417", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "300", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0.local_C_V_0_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0.data_split_V_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["418", "419"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "414", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "420", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0.local_C_V_0_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0.data_split_V_U", "Parent" : "417"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["421", "422"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "417", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "423", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0.local_C_V_0_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0.data_split_V_U", "Parent" : "420"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["424", "425"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "420", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0.local_C_V_0_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0.data_split_V_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["427", "428"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "423", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0.local_C_V_0_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0.data_split_V_U", "Parent" : "426"},
	{"ID" : "429", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["430", "431"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "426", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "432", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0.local_C_V_0_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0.data_split_V_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["433", "434"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_1_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "429", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "573", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0.local_C_V_0_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0.data_split_V_U", "Parent" : "432"},
	{"ID" : "435", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "436", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "436", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["437", "438"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "435", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "439", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0.local_C_V_0_U", "Parent" : "436"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0.data_split_V_U", "Parent" : "436"},
	{"ID" : "439", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["440", "441"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "436", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0.local_C_V_0_U", "Parent" : "439"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0.data_split_V_U", "Parent" : "439"},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["443", "444"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "439", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0.local_C_V_0_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0.data_split_V_U", "Parent" : "442"},
	{"ID" : "445", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["446", "447"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0.local_C_V_0_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0.data_split_V_U", "Parent" : "445"},
	{"ID" : "448", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["449", "450"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "445", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "451", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0.local_C_V_0_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0.data_split_V_U", "Parent" : "448"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["452", "453"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0.local_C_V_0_U", "Parent" : "451"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0.data_split_V_U", "Parent" : "451"},
	{"ID" : "454", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["455", "456"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_2_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "451", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0.local_C_V_0_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0.data_split_V_U", "Parent" : "454"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "350", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "458", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["459", "460"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "457", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "461", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0.local_C_V_0_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0.data_split_V_U", "Parent" : "458"},
	{"ID" : "461", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["462", "463"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "464", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0.local_C_V_0_U", "Parent" : "461"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0.data_split_V_U", "Parent" : "461"},
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["465", "466"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "461", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0.local_C_V_0_U", "Parent" : "464"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0.data_split_V_U", "Parent" : "464"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["468", "469"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "464", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "470", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0.local_C_V_0_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0.data_split_V_U", "Parent" : "467"},
	{"ID" : "470", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["471", "472"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0.local_C_V_0_U", "Parent" : "470"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0.data_split_V_U", "Parent" : "470"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["474", "475"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "470", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "476", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0.local_C_V_0_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0.data_split_V_U", "Parent" : "473"},
	{"ID" : "476", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["477", "478"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_3_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "571", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0.local_C_V_0_U", "Parent" : "476"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0.data_split_V_U", "Parent" : "476"},
	{"ID" : "479", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "480", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "355", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "480", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0", "Parent" : "0", "Child" : ["481", "482"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "479", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "483", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "315", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0.local_C_V_0_U", "Parent" : "480"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0.data_split_V_U", "Parent" : "480"},
	{"ID" : "483", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0", "Parent" : "0", "Child" : ["484", "485"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "480", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "486", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0.local_C_V_0_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0.data_split_V_U", "Parent" : "483"},
	{"ID" : "486", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0", "Parent" : "0", "Child" : ["487", "488"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "483", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "489", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0.local_C_V_0_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0.data_split_V_U", "Parent" : "486"},
	{"ID" : "489", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0", "Parent" : "0", "Child" : ["490", "491"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "486", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "492", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0.local_C_V_0_U", "Parent" : "489"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0.data_split_V_U", "Parent" : "489"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["493", "494"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "489", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "495", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0.local_C_V_0_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0.data_split_V_U", "Parent" : "492"},
	{"ID" : "495", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["496", "497"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "492", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "498", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0.local_C_V_0_U", "Parent" : "495"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0.data_split_V_U", "Parent" : "495"},
	{"ID" : "498", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["499", "500"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_4_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "495", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "570", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0.local_C_V_0_U", "Parent" : "498"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0.data_split_V_U", "Parent" : "498"},
	{"ID" : "501", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "502", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "360", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "502", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0", "Parent" : "0", "Child" : ["503", "504"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "501", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "505", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "320", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0.local_C_V_0_U", "Parent" : "502"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0.data_split_V_U", "Parent" : "502"},
	{"ID" : "505", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0", "Parent" : "0", "Child" : ["506", "507"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "502", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "508", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0.local_C_V_0_U", "Parent" : "505"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0.data_split_V_U", "Parent" : "505"},
	{"ID" : "508", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0", "Parent" : "0", "Child" : ["509", "510"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "505", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "511", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "240", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0.local_C_V_0_U", "Parent" : "508"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0.data_split_V_U", "Parent" : "508"},
	{"ID" : "511", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0", "Parent" : "0", "Child" : ["512", "513"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "508", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "514", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0.local_C_V_0_U", "Parent" : "511"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0.data_split_V_U", "Parent" : "511"},
	{"ID" : "514", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["515", "516"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "511", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0.local_C_V_0_U", "Parent" : "514"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0.data_split_V_U", "Parent" : "514"},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["518", "519"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "514", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "520", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0.local_C_V_0_U", "Parent" : "517"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0.data_split_V_U", "Parent" : "517"},
	{"ID" : "520", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["521", "522"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_5_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "517", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0.local_C_V_0_U", "Parent" : "520"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0.data_split_V_U", "Parent" : "520"},
	{"ID" : "523", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "524", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "365", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "524", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0", "Parent" : "0", "Child" : ["525", "526"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "523", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "325", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0.local_C_V_0_U", "Parent" : "524"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0.data_split_V_U", "Parent" : "524"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0", "Parent" : "0", "Child" : ["528", "529"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "524", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0217", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "285", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0.local_C_V_0_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0.data_split_V_U", "Parent" : "527"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0", "Parent" : "0", "Child" : ["531", "532"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "527", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0.local_C_V_0_U", "Parent" : "530"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0.data_split_V_U", "Parent" : "530"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0", "Parent" : "0", "Child" : ["534", "535"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "530", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "536", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0.local_C_V_0_U", "Parent" : "533"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0.data_split_V_U", "Parent" : "533"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["537", "538"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "533", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0.local_C_V_0_U", "Parent" : "536"},
	{"ID" : "538", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0.data_split_V_U", "Parent" : "536"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["540", "541"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "536", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "542", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0.local_C_V_0_U", "Parent" : "539"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0.data_split_V_U", "Parent" : "539"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["543", "544"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_6_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "539", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "568", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0.local_C_V_0_U", "Parent" : "542"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0.data_split_V_U", "Parent" : "542"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "546", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0227", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "370", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0", "Parent" : "0", "Child" : ["547", "548"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276257", "EstimateLatencyMax" : "276257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "545", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "549", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0226", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0.local_C_V_0_U", "Parent" : "546"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0.data_split_V_U", "Parent" : "546"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0", "Parent" : "0", "Child" : ["550", "551"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "280865", "EstimateLatencyMax" : "280865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "546", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "552", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0.local_C_V_0_U", "Parent" : "549"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0.data_split_V_U", "Parent" : "549"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0", "Parent" : "0", "Child" : ["553", "554"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285473", "EstimateLatencyMax" : "285473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "549", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "555", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0.local_C_V_0_U", "Parent" : "552"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0.data_split_V_U", "Parent" : "552"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0", "Parent" : "0", "Child" : ["556", "557"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290081", "EstimateLatencyMax" : "290081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "552", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "558", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0223", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "210", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0.local_C_V_0_U", "Parent" : "555"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0.data_split_V_U", "Parent" : "555"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["559", "560"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294689", "EstimateLatencyMax" : "294689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "555", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "561", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0222", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0.local_C_V_0_U", "Parent" : "558"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0.data_split_V_U", "Parent" : "558"},
	{"ID" : "561", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["562", "563"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299297", "EstimateLatencyMax" : "299297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "558", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "564", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0221", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0.local_C_V_0_U", "Parent" : "561"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0.data_split_V_U", "Parent" : "561"},
	{"ID" : "564", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["565", "566"],
		"CDFG" : "C_drain_IO_L1_out_wrapper_7_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303905", "EstimateLatencyMax" : "303905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "561", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "567", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0220", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0.local_C_V_0_U", "Parent" : "564"},
	{"ID" : "566", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0.data_split_V_U", "Parent" : "564"},
	{"ID" : "567", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "568", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "564", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_6_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34305", "EstimateLatencyMax" : "34305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "567", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "542", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_5_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51457", "EstimateLatencyMax" : "51457",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "568", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "570", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "520", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "570", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_4_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68609", "EstimateLatencyMax" : "68609",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "569", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "571", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "498", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_3_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "85761", "EstimateLatencyMax" : "85761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "570", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "476", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_2_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102913", "EstimateLatencyMax" : "102913",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "571", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "573", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "573", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_1_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120065", "EstimateLatencyMax" : "120065",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "572", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "574", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "432", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_0_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L2_out_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137217", "EstimateLatencyMax" : "137217",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "573", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0292", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0292_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "410", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L3_out_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131074", "EstimateLatencyMax" : "131074",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "576", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "574", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "C_drain_IO_L3_out_serialize_x0",
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
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "575", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "578", "DependentChanDepth" : "37", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "579", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "582", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "583", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "594", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x0_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "650", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "651", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "653", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "654", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x0_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "665", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "666", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "667", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "668", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "669", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "670", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "671", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "673", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "675", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "677", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "678", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "680", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "681", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "682", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x0_U", "Parent" : "0"},
	{"ID" : "683", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "684", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "685", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "687", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "689", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "690", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "691", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "692", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "693", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "694", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "695", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "697", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "698", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "699", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "700", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "702", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "704", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "706", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x0_U", "Parent" : "0"},
	{"ID" : "707", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "708", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "709", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "710", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "711", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "712", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "713", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "714", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "715", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "716", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "717", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "718", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "719", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "720", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "721", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "722", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "723", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "724", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "725", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "727", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "728", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "729", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_8_x0_U", "Parent" : "0"},
	{"ID" : "731", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "732", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "733", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "734", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "735", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "736", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "737", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "738", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "739", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "740", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "741", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "742", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "743", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "744", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "745", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "746", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "747", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "748", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "749", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "750", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "751", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "752", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "753", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "754", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_8_x0_U", "Parent" : "0"},
	{"ID" : "755", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "756", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "757", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "758", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "759", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "760", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "761", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "762", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "763", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "764", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "765", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "766", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "767", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "768", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "769", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "770", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "771", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "772", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "773", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "774", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "775", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "776", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "777", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "778", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_8_x0_U", "Parent" : "0"},
	{"ID" : "779", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "780", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "781", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "782", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x0_U", "Parent" : "0"},
	{"ID" : "783", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "784", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "785", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x0_U", "Parent" : "0"},
	{"ID" : "786", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "787", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "788", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_2_x0_U", "Parent" : "0"},
	{"ID" : "789", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "790", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "791", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_3_x0_U", "Parent" : "0"},
	{"ID" : "792", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "793", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "794", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_4_x0_U", "Parent" : "0"},
	{"ID" : "795", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "796", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "797", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_5_x0_U", "Parent" : "0"},
	{"ID" : "798", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "799", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "800", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_6_x0_U", "Parent" : "0"},
	{"ID" : "801", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "802", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_8_x0_U", "Parent" : "0"},
	{"ID" : "803", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_7_x0_U", "Parent" : "0"},
	{"ID" : "804", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "805", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U", "Parent" : "0"},
	{"ID" : "806", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U", "Parent" : "0"},
	{"ID" : "807", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U", "Parent" : "0"},
	{"ID" : "808", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U", "Parent" : "0"},
	{"ID" : "809", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U", "Parent" : "0"},
	{"ID" : "810", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U", "Parent" : "0"},
	{"ID" : "811", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U", "Parent" : "0"},
	{"ID" : "812", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U", "Parent" : "0"},
	{"ID" : "813", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U", "Parent" : "0"},
	{"ID" : "814", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U", "Parent" : "0"},
	{"ID" : "815", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U", "Parent" : "0"},
	{"ID" : "816", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U", "Parent" : "0"},
	{"ID" : "817", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U", "Parent" : "0"},
	{"ID" : "818", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U", "Parent" : "0"},
	{"ID" : "819", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U", "Parent" : "0"},
	{"ID" : "820", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U", "Parent" : "0"},
	{"ID" : "821", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_7_x0_U", "Parent" : "0"},
	{"ID" : "822", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_6_x0_U", "Parent" : "0"},
	{"ID" : "823", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_5_x0_U", "Parent" : "0"},
	{"ID" : "824", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_4_x0_U", "Parent" : "0"},
	{"ID" : "825", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_3_x0_U", "Parent" : "0"},
	{"ID" : "826", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_2_x0_U", "Parent" : "0"},
	{"ID" : "827", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_1_x0_U", "Parent" : "0"},
	{"ID" : "828", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_0_x0_U", "Parent" : "0"},
	{"ID" : "829", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_7_x0_U", "Parent" : "0"},
	{"ID" : "830", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_6_x0_U", "Parent" : "0"},
	{"ID" : "831", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_5_x0_U", "Parent" : "0"},
	{"ID" : "832", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_4_x0_U", "Parent" : "0"},
	{"ID" : "833", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_3_x0_U", "Parent" : "0"},
	{"ID" : "834", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_2_x0_U", "Parent" : "0"},
	{"ID" : "835", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_1_x0_U", "Parent" : "0"},
	{"ID" : "836", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_0_x0_U", "Parent" : "0"},
	{"ID" : "837", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_7_x0_U", "Parent" : "0"},
	{"ID" : "838", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_6_x0_U", "Parent" : "0"},
	{"ID" : "839", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_5_x0_U", "Parent" : "0"},
	{"ID" : "840", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_4_x0_U", "Parent" : "0"},
	{"ID" : "841", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_3_x0_U", "Parent" : "0"},
	{"ID" : "842", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_2_x0_U", "Parent" : "0"},
	{"ID" : "843", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_1_x0_U", "Parent" : "0"},
	{"ID" : "844", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_0_x0_U", "Parent" : "0"},
	{"ID" : "845", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_7_x0_U", "Parent" : "0"},
	{"ID" : "846", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_6_x0_U", "Parent" : "0"},
	{"ID" : "847", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_5_x0_U", "Parent" : "0"},
	{"ID" : "848", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_4_x0_U", "Parent" : "0"},
	{"ID" : "849", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_3_x0_U", "Parent" : "0"},
	{"ID" : "850", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_2_x0_U", "Parent" : "0"},
	{"ID" : "851", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_1_x0_U", "Parent" : "0"},
	{"ID" : "852", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_0_x0_U", "Parent" : "0"},
	{"ID" : "853", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_7_x0_U", "Parent" : "0"},
	{"ID" : "854", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_6_x0_U", "Parent" : "0"},
	{"ID" : "855", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_5_x0_U", "Parent" : "0"},
	{"ID" : "856", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_4_x0_U", "Parent" : "0"},
	{"ID" : "857", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_3_x0_U", "Parent" : "0"},
	{"ID" : "858", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_2_x0_U", "Parent" : "0"},
	{"ID" : "859", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_1_x0_U", "Parent" : "0"},
	{"ID" : "860", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_0_x0_U", "Parent" : "0"},
	{"ID" : "861", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_7_x0_U", "Parent" : "0"},
	{"ID" : "862", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_6_x0_U", "Parent" : "0"},
	{"ID" : "863", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_5_x0_U", "Parent" : "0"},
	{"ID" : "864", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_4_x0_U", "Parent" : "0"},
	{"ID" : "865", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_3_x0_U", "Parent" : "0"},
	{"ID" : "866", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_2_x0_U", "Parent" : "0"},
	{"ID" : "867", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_1_x0_U", "Parent" : "0"},
	{"ID" : "868", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_0_x0_U", "Parent" : "0"},
	{"ID" : "869", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_7_x0_U", "Parent" : "0"},
	{"ID" : "870", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_6_x0_U", "Parent" : "0"},
	{"ID" : "871", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_5_x0_U", "Parent" : "0"},
	{"ID" : "872", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_4_x0_U", "Parent" : "0"},
	{"ID" : "873", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_3_x0_U", "Parent" : "0"},
	{"ID" : "874", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_2_x0_U", "Parent" : "0"},
	{"ID" : "875", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x0_U", "Parent" : "0"},
	{"ID" : "876", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x0_U", "Parent" : "0"},
	{"ID" : "877", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L3_out_serialize_x0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x0 {
		gmem_C {Type O LastRead 3 FirstWrite 7}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 68 FirstWrite -1}}
	kernel0_x0_entry5 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x0_entry12 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x0 {
		fifo_A_A_IO_L3_in_serialize_x01 {Type O LastRead -1 FirstWrite 3}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L3_in_x0 {
		fifo_A_in {Type I LastRead 2 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 2}}
	A_IO_L2_in_0_x0 {
		fifo_A_A_IO_L2_in_0_x04 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x05 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_0_0_x020 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x05 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x06 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_1_0_x029 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_2_x0 {
		fifo_A_A_IO_L2_in_2_x06 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x07 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_2_0_x038 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_3_x0 {
		fifo_A_A_IO_L2_in_3_x07 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x08 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_3_0_x047 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_4_x0 {
		fifo_A_A_IO_L2_in_4_x08 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x09 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_4_0_x056 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_5_x0 {
		fifo_A_A_IO_L2_in_5_x09 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x010 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_5_0_x065 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_6_x0 {
		fifo_A_A_IO_L2_in_6_x010 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x011 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_6_0_x074 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_boundary_x0 {
		fifo_A_A_IO_L2_in_7_x011 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_7_0_x083 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L3_in_serialize_x0 {
		fifo_B_B_IO_L3_in_serialize_x02 {Type O LastRead -1 FirstWrite 3}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L3_in_x0 {
		fifo_B_in {Type I LastRead 2 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 2}}
	B_IO_L2_in_0_x0 {
		fifo_B_B_IO_L2_in_0_x012 {Type I LastRead 10 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x013 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_0_0_x092 {Type O LastRead -1 FirstWrite 3}}
	B_IO_L2_in_1_x0 {
		fifo_B_B_IO_L2_in_1_x013 {Type I LastRead 10 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x014 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_0_1_x0101 {Type O LastRead -1 FirstWrite 3}}
	B_IO_L2_in_2_x0 {
		fifo_B_B_IO_L2_in_2_x014 {Type I LastRead 10 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x015 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_0_2_x0110 {Type O LastRead -1 FirstWrite 3}}
	B_IO_L2_in_3_x0 {
		fifo_B_B_IO_L2_in_3_x015 {Type I LastRead 10 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x016 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_0_3_x0119 {Type O LastRead -1 FirstWrite 3}}
	B_IO_L2_in_4_x0 {
		fifo_B_B_IO_L2_in_4_x016 {Type I LastRead 10 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x017 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_0_4_x0128 {Type O LastRead -1 FirstWrite 3}}
	B_IO_L2_in_5_x0 {
		fifo_B_B_IO_L2_in_5_x017 {Type I LastRead 10 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x018 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_0_5_x0137 {Type O LastRead -1 FirstWrite 3}}
	B_IO_L2_in_6_x0 {
		fifo_B_B_IO_L2_in_6_x018 {Type I LastRead 10 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x019 {Type O LastRead -1 FirstWrite 3}
		fifo_B_PE_0_6_x0146 {Type O LastRead -1 FirstWrite 3}}
	B_IO_L2_in_boundary_x0 {
		fifo_B_B_IO_L2_in_7_x019 {Type I LastRead 3 FirstWrite -1}
		fifo_B_PE_0_7_x0155 {Type O LastRead -1 FirstWrite 4}}
	PE_wrapper_0_0_x0 {
		fifo_A_PE_0_0_x020 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_1_x021 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_0_x092 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_0_x093 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_0_x0164 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_1_x0 {
		fifo_A_PE_0_1_x021 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_2_x022 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_1_x0101 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_1_x0102 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_1_x0172 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_2_x0 {
		fifo_A_PE_0_2_x022 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_3_x023 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_2_x0110 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_2_x0111 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_2_x0180 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x023 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_4_x024 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_3_x0119 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_3_x0120 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_3_x0188 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_4_x0 {
		fifo_A_PE_0_4_x024 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_5_x025 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_4_x0128 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_4_x0129 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_4_x0196 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x025 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_6_x026 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_5_x0137 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_5_x0138 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_5_x0204 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_6_x0 {
		fifo_A_PE_0_6_x026 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_7_x027 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_6_x0146 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_6_x0147 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_6_x0212 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_7_x0 {
		fifo_A_PE_0_7_x027 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_8_x028 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_7_x0155 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_7_x0156 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_7_x0220 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x029 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_1_x030 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_0_x093 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_0_x094 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_0_x0165 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x030 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_2_x031 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_1_x0102 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_1_x0103 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_1_x0173 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_2_x0 {
		fifo_A_PE_1_2_x031 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_3_x032 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_2_x0111 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_2_x0112 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_2_x0181 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_3_x0 {
		fifo_A_PE_1_3_x032 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_4_x033 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_3_x0120 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_3_x0121 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_3_x0189 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x033 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_5_x034 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_4_x0129 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_4_x0130 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_4_x0197 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_5_x0 {
		fifo_A_PE_1_5_x034 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_6_x035 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_5_x0138 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_5_x0139 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_5_x0205 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_6_x0 {
		fifo_A_PE_1_6_x035 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_7_x036 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_6_x0147 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_6_x0148 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_6_x0213 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_7_x0 {
		fifo_A_PE_1_7_x036 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_8_x037 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_7_x0156 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_7_x0157 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_7_x0221 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_0_x0 {
		fifo_A_PE_2_0_x038 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_1_x039 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_0_x094 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_0_x095 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_0_x0166 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x039 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_2_x040 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_1_x0103 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_1_x0104 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_1_x0174 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_2_x0 {
		fifo_A_PE_2_2_x040 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_3_x041 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_2_x0112 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_2_x0113 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_2_x0182 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_3_x0 {
		fifo_A_PE_2_3_x041 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_4_x042 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_3_x0121 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_3_x0122 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_3_x0190 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_4_x0 {
		fifo_A_PE_2_4_x042 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_5_x043 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_4_x0130 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_4_x0131 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_4_x0198 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_5_x0 {
		fifo_A_PE_2_5_x043 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_6_x044 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_5_x0139 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_5_x0140 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_5_x0206 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x044 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_7_x045 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_6_x0148 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_6_x0149 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_6_x0214 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_7_x0 {
		fifo_A_PE_2_7_x045 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_8_x046 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_7_x0157 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_7_x0158 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_7_x0222 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_0_x0 {
		fifo_A_PE_3_0_x047 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_1_x048 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_0_x095 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_0_x096 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_0_x0167 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_1_x0 {
		fifo_A_PE_3_1_x048 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_2_x049 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_1_x0104 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_1_x0105 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_1_x0175 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_2_x0 {
		fifo_A_PE_3_2_x049 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_3_x050 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_2_x0113 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_2_x0114 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_2_x0183 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_3_x0 {
		fifo_A_PE_3_3_x050 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_4_x051 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_3_x0122 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_3_x0123 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_3_x0191 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x051 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_5_x052 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_4_x0131 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_4_x0132 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_4_x0199 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_5_x0 {
		fifo_A_PE_3_5_x052 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_6_x053 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_5_x0140 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_5_x0141 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_5_x0207 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_6_x0 {
		fifo_A_PE_3_6_x053 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_7_x054 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_6_x0149 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_6_x0150 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_6_x0215 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_7_x0 {
		fifo_A_PE_3_7_x054 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_8_x055 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_7_x0158 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_7_x0159 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_7_x0223 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x056 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_1_x057 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_0_x096 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_0_x097 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_0_x0168 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_1_x0 {
		fifo_A_PE_4_1_x057 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_2_x058 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_1_x0105 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_1_x0106 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_1_x0176 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_2_x0 {
		fifo_A_PE_4_2_x058 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_3_x059 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_2_x0114 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_2_x0115 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_2_x0184 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_3_x0 {
		fifo_A_PE_4_3_x059 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_4_x060 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_3_x0123 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_3_x0124 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_3_x0192 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_4_x0 {
		fifo_A_PE_4_4_x060 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_5_x061 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_4_x0132 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_4_x0133 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_4_x0200 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_5_x0 {
		fifo_A_PE_4_5_x061 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_6_x062 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_5_x0141 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_5_x0142 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_5_x0208 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_6_x0 {
		fifo_A_PE_4_6_x062 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_7_x063 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_6_x0150 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_6_x0151 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_6_x0216 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_7_x0 {
		fifo_A_PE_4_7_x063 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_8_x064 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_7_x0159 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_7_x0160 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_7_x0224 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_0_x0 {
		fifo_A_PE_5_0_x065 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_1_x066 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_0_x097 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_0_x098 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_0_x0169 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_1_x0 {
		fifo_A_PE_5_1_x066 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_2_x067 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_1_x0106 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_1_x0107 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_1_x0177 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_2_x0 {
		fifo_A_PE_5_2_x067 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_3_x068 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_2_x0115 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_2_x0116 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_2_x0185 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_3_x0 {
		fifo_A_PE_5_3_x068 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_4_x069 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_3_x0124 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_3_x0125 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_3_x0193 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_4_x0 {
		fifo_A_PE_5_4_x069 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_5_x070 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_4_x0133 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_4_x0134 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_4_x0201 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_5_x0 {
		fifo_A_PE_5_5_x070 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_6_x071 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_5_x0142 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_5_x0143 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_5_x0209 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_6_x0 {
		fifo_A_PE_5_6_x071 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_7_x072 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_6_x0151 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_6_x0152 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_6_x0217 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_7_x0 {
		fifo_A_PE_5_7_x072 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_8_x073 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_7_x0160 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_7_x0161 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_7_x0225 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_0_x0 {
		fifo_A_PE_6_0_x074 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_1_x075 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_0_x098 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_0_x099 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_0_x0170 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_1_x0 {
		fifo_A_PE_6_1_x075 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_2_x076 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_1_x0107 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_1_x0108 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_1_x0178 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_2_x0 {
		fifo_A_PE_6_2_x076 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_3_x077 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_2_x0116 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_2_x0117 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_2_x0186 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_3_x0 {
		fifo_A_PE_6_3_x077 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_4_x078 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_3_x0125 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_3_x0126 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_3_x0194 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_4_x0 {
		fifo_A_PE_6_4_x078 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_5_x079 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_4_x0134 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_4_x0135 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_4_x0202 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_5_x0 {
		fifo_A_PE_6_5_x079 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_6_x080 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_5_x0143 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_5_x0144 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_5_x0210 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_6_x0 {
		fifo_A_PE_6_6_x080 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_7_x081 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_6_x0152 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_6_x0153 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_6_x0218 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_7_x0 {
		fifo_A_PE_6_7_x081 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_8_x082 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_7_x0161 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_7_x0162 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_7_x0226 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_0_x0 {
		fifo_A_PE_7_0_x083 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_1_x084 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_0_x099 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_0_x0100 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_0_x0171 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_1_x0 {
		fifo_A_PE_7_1_x084 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_2_x085 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_1_x0108 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_1_x0109 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_1_x0179 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_2_x0 {
		fifo_A_PE_7_2_x085 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_3_x086 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_2_x0117 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_2_x0118 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_2_x0187 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_3_x0 {
		fifo_A_PE_7_3_x086 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_4_x087 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_3_x0126 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_3_x0127 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_3_x0195 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_4_x0 {
		fifo_A_PE_7_4_x087 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_5_x088 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_4_x0135 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_4_x0136 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_4_x0203 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_5_x0 {
		fifo_A_PE_7_5_x088 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_6_x089 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_5_x0144 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_5_x0145 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_5_x0211 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_6_x0 {
		fifo_A_PE_7_6_x089 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_7_x090 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_6_x0153 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_6_x0154 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_6_x0219 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_7_x0 {
		fifo_A_PE_7_7_x090 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_8_x091 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_7_x0162 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_7_x0163 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_7_x0227 {Type O LastRead -1 FirstWrite 10}}
	A_PE_dummy_in_0_x0 {
		fifo_A_PE_0_8_x028 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_in_1_x0 {
		fifo_A_PE_1_8_x037 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_in_2_x0 {
		fifo_A_PE_2_8_x046 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_in_3_x0 {
		fifo_A_PE_3_8_x055 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_in_4_x0 {
		fifo_A_PE_4_8_x064 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_in_5_x0 {
		fifo_A_PE_5_8_x073 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_in_6_x0 {
		fifo_A_PE_6_8_x082 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_in_7_x0 {
		fifo_A_PE_7_8_x091 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_0_x0 {
		fifo_B_PE_8_0_x0100 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_1_x0 {
		fifo_B_PE_8_1_x0109 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_2_x0 {
		fifo_B_PE_8_2_x0118 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_3_x0 {
		fifo_B_PE_8_3_x0127 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_4_x0 {
		fifo_B_PE_8_4_x0136 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_5_x0 {
		fifo_B_PE_8_5_x0145 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_6_x0 {
		fifo_B_PE_8_6_x0154 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_7_x0 {
		fifo_B_PE_8_7_x0163 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0235 {Type O LastRead -1 FirstWrite 58}
		fifo_C_drain_PE_7_0_x0171 {Type I LastRead 65 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0235 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0234 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_0_x0170 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0234 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0233 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_0_x0169 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0233 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0232 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_0_x0168 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0232 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0231 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x0167 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0231 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0230 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x0166 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0230 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0229 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_0_x0165 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0229 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0228 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_0_x0164 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0243 {Type O LastRead -1 FirstWrite 58}
		fifo_C_drain_PE_7_1_x0179 {Type I LastRead 65 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0243 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0242 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x0178 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0242 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0241 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_1_x0177 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0241 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0240 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_1_x0176 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0240 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0239 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_1_x0175 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0239 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0238 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_1_x0174 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0238 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0237 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_1_x0173 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0237 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0236 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_1_x0172 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_7_x0251 {Type O LastRead -1 FirstWrite 58}
		fifo_C_drain_PE_7_2_x0187 {Type I LastRead 65 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_7_x0251 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_6_x0250 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_2_x0186 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_6_x0250 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_5_x0249 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_2_x0185 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_5_x0249 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_4_x0248 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_2_x0184 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_4_x0248 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_3_x0247 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_2_x0183 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_3_x0247 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_2_x0246 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_2_x0182 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_2_x0246 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_1_x0245 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_2_x0181 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_1_x0245 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_2_x0180 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_7_x0259 {Type O LastRead -1 FirstWrite 58}
		fifo_C_drain_PE_7_3_x0195 {Type I LastRead 65 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_7_x0259 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_6_x0258 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_3_x0194 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_6_x0258 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_5_x0257 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_3_x0193 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_5_x0257 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_4_x0256 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_3_x0192 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_4_x0256 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_3_x0255 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_3_x0191 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_3_x0255 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_2_x0254 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_3_x0190 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_2_x0254 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_1_x0253 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_3_x0189 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_1_x0253 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_0_x0252 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_3_x0188 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_7_x0267 {Type O LastRead -1 FirstWrite 58}
		fifo_C_drain_PE_7_4_x0203 {Type I LastRead 65 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_7_x0267 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_6_x0266 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_4_x0202 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_6_x0266 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_5_x0265 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_4_x0201 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_5_x0265 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_4_x0264 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_4_x0200 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_4_x0264 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_3_x0263 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_4_x0199 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_3_x0263 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_2_x0262 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_4_x0198 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_2_x0262 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_1_x0261 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_4_x0197 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_1_x0261 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_0_x0260 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_4_x0196 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_7_x0275 {Type O LastRead -1 FirstWrite 58}
		fifo_C_drain_PE_7_5_x0211 {Type I LastRead 65 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_7_x0275 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_6_x0274 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_5_x0210 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_6_x0274 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_5_x0273 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_5_x0209 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_5_x0273 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_4_x0272 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_5_x0208 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_4_x0272 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_3_x0271 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_5_x0207 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_3_x0271 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_2_x0270 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_5_x0206 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_2_x0270 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_1_x0269 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_5_x0205 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_1_x0269 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_0_x0268 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_5_x0204 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_7_x0283 {Type O LastRead -1 FirstWrite 58}
		fifo_C_drain_PE_7_6_x0219 {Type I LastRead 65 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_7_x0283 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_6_x0282 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_6_x0218 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_6_x0282 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_5_x0281 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_6_x0217 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_5_x0281 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_4_x0280 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_6_x0216 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_4_x0280 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_3_x0279 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_6_x0215 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_3_x0279 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_2_x0278 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_6_x0214 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_2_x0278 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_1_x0277 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_6_x0213 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_1_x0277 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_6_x0212 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_wrapper_7_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_7_x0291 {Type O LastRead -1 FirstWrite 58}
		fifo_C_drain_PE_7_7_x0227 {Type I LastRead 65 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_7_x0291 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_6_x0290 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_7_x0226 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_6_x0290 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_5_x0289 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_7_x0225 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_5_x0289 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_4_x0288 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_7_x0224 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_4_x0288 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_3_x0287 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_7_x0223 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_3_x0287 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_2_x0286 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_7_x0222 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_2_x0286 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_1_x0285 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_7_x0221 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_1_x0285 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_0_x0284 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_7_x0220 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0299 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_C_drain_IO_L1_out_7_0_x0284 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L2_out_6_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0299 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_6_x0298 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0276 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L2_out_5_x0 {
		fifo_C_drain_C_drain_IO_L2_out_6_x0298 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_5_x0297 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_5_0_x0268 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L2_out_4_x0 {
		fifo_C_drain_C_drain_IO_L2_out_5_x0297 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_4_x0296 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_4_0_x0260 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L2_out_3_x0 {
		fifo_C_drain_C_drain_IO_L2_out_4_x0296 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_3_x0295 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_3_0_x0252 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L2_out_2_x0 {
		fifo_C_drain_C_drain_IO_L2_out_3_x0295 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_2_x0294 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0244 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L2_out_1_x0 {
		fifo_C_drain_C_drain_IO_L2_out_2_x0294 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_1_x0293 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0236 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L2_out_0_x0 {
		fifo_C_drain_C_drain_IO_L2_out_1_x0293 {Type I LastRead 3 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x0292 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0228 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L3_out_x0 {
		fifo_C_drain_out {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_local_in {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L3_out_serialize_x0 {
		gmem_C {Type O LastRead 3 FirstWrite 7}
		fifo_C_drain_local_in {Type I LastRead 6 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129123159", "Max" : "129123159"}
	, {"Name" : "Interval", "Min" : "129122850", "Max" : "129122850"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 32 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 32 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
	A { ap_memory {  { A_address0 mem_address 1 12 }  { A_ce0 mem_ce 1 1 }  { A_d0 mem_din 1 119 }  { A_q0 mem_dout 0 119 }  { A_we0 mem_we 1 1 }  { A_address1 mem_address 1 12 }  { A_ce1 mem_ce 1 1 }  { A_d1 mem_din 1 119 }  { A_q1 mem_dout 0 119 }  { A_we1 mem_we 1 1 } } }
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 119 }  { B_q0 mem_dout 0 119 }  { B_we0 mem_we 1 1 }  { B_address1 mem_address 1 12 }  { B_ce1 mem_ce 1 1 }  { B_d1 mem_din 1 119 }  { B_q1 mem_dout 0 119 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
}
