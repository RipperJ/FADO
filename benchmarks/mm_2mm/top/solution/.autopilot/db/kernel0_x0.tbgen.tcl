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
	{ gmem_B int 512 regular {axi_master 0}  }
	{ A int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ B int 64 regular  }
	{ C int 512 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_B", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_gmem_B_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_B_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_B_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_B_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_B_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_B_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_B_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_B_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_B_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_B_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_B_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_B_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_BUSER sc_in sc_lv 1 signal 0 } 
	{ A_address0 sc_out sc_lv 10 signal 1 } 
	{ A_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_d0 sc_out sc_lv 32 signal 1 } 
	{ A_q0 sc_in sc_lv 32 signal 1 } 
	{ A_we0 sc_out sc_logic 1 signal 1 } 
	{ A_address1 sc_out sc_lv 10 signal 1 } 
	{ A_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_d1 sc_out sc_lv 32 signal 1 } 
	{ A_q1 sc_in sc_lv 32 signal 1 } 
	{ A_we1 sc_out sc_logic 1 signal 1 } 
	{ B sc_in sc_lv 64 signal 2 } 
	{ C_address0 sc_out sc_lv 10 signal 3 } 
	{ C_ce0 sc_out sc_logic 1 signal 3 } 
	{ C_d0 sc_out sc_lv 512 signal 3 } 
	{ C_q0 sc_in sc_lv 512 signal 3 } 
	{ C_we0 sc_out sc_logic 1 signal 3 } 
	{ C_address1 sc_out sc_lv 10 signal 3 } 
	{ C_ce1 sc_out sc_logic 1 signal 3 } 
	{ C_d1 sc_out sc_lv 512 signal 3 } 
	{ C_q1 sc_in sc_lv 512 signal 3 } 
	{ C_we1 sc_out sc_logic 1 signal 3 } 
	{ B_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_gmem_B_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_B_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_B_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_B_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_B_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_B_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_B_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_B_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_B_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_B_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_B_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_B_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_B_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_B_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_B_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_B_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_B", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_B_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_B", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_B_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_B_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_B_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_B_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_B_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_B_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_B_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_B_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_B_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_B_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_B_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_B_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_B_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_B_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_B_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_B_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_B_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_B_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_B_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_B", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_B_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_B_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_B_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_B_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_B_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_B_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_B_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_B_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_B_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "BUSER" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "B", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B", "role": "default" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "d1" }} , 
 	{ "name": "C_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "q1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "B_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "13", "14", "17", "20", "23", "26", "29", "32", "35", "38", "39", "40", "43", "46", "49", "52", "55", "58", "61", "64", "69", "74", "79", "84", "89", "94", "99", "104", "109", "114", "119", "124", "129", "134", "139", "144", "149", "154", "159", "164", "169", "174", "179", "184", "189", "194", "199", "204", "209", "214", "219", "224", "229", "234", "239", "244", "249", "254", "259", "264", "269", "274", "279", "284", "289", "294", "299", "304", "309", "314", "319", "324", "329", "334", "339", "344", "349", "354", "359", "364", "369", "374", "379", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "402", "405", "408", "411", "414", "417", "420", "423", "425", "428", "431", "434", "437", "440", "443", "446", "448", "451", "454", "457", "460", "463", "466", "469", "471", "474", "477", "480", "483", "486", "489", "492", "494", "497", "500", "503", "506", "509", "512", "515", "517", "520", "523", "526", "529", "532", "535", "538", "540", "543", "546", "549", "552", "555", "558", "561", "563", "566", "569", "572", "575", "578", "581", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "877", "878", "879", "880", "881", "882", "883", "884", "885", "886", "887", "888", "889", "890", "891", "892", "893", "894", "895"],
		"CDFG" : "kernel0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129123223", "EstimateLatencyMax" : "129123223",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "9", "Name" : "kernel0_x0_entry9_U0"},
			{"ID" : "11", "Name" : "A_IO_L3_in_serialize_x0_U0"},
			{"ID" : "38", "Name" : "B_IO_L3_in_serialize_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "384", "Name" : "A_PE_dummy_in_0_x0_U0"},
			{"ID" : "385", "Name" : "A_PE_dummy_in_1_x0_U0"},
			{"ID" : "386", "Name" : "A_PE_dummy_in_2_x0_U0"},
			{"ID" : "387", "Name" : "A_PE_dummy_in_3_x0_U0"},
			{"ID" : "388", "Name" : "A_PE_dummy_in_4_x0_U0"},
			{"ID" : "389", "Name" : "A_PE_dummy_in_5_x0_U0"},
			{"ID" : "390", "Name" : "A_PE_dummy_in_6_x0_U0"},
			{"ID" : "391", "Name" : "A_PE_dummy_in_7_x0_U0"},
			{"ID" : "392", "Name" : "B_PE_dummy_in_0_x0_U0"},
			{"ID" : "393", "Name" : "B_PE_dummy_in_1_x0_U0"},
			{"ID" : "394", "Name" : "B_PE_dummy_in_2_x0_U0"},
			{"ID" : "395", "Name" : "B_PE_dummy_in_3_x0_U0"},
			{"ID" : "396", "Name" : "B_PE_dummy_in_4_x0_U0"},
			{"ID" : "397", "Name" : "B_PE_dummy_in_5_x0_U0"},
			{"ID" : "398", "Name" : "B_PE_dummy_in_6_x0_U0"},
			{"ID" : "399", "Name" : "B_PE_dummy_in_7_x0_U0"},
			{"ID" : "593", "Name" : "C_drain_IO_L3_out_serialize_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "B_IO_L3_in_serialize_x0_U0", "Port" : "gmem_B"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "A_IO_L3_in_serialize_x0_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "593", "SubInstance" : "C_drain_IO_L3_out_serialize_x0_U0", "Port" : "C"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_8_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_9_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_10_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_11_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_12_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_13_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_split_V_14_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry9_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry9",
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
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry35_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry35",
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
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "A_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048577", "EstimateLatencyMax" : "1048577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L3_in_serialize_x09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L3_in_serialize_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0.add_20ns_20ns_20_1_1_U16", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["15", "16"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x028_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_ping_V_0_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_pong_V_0_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["18", "19"],
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "104", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x037_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_ping_V_0_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_pong_V_0_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["21", "22"],
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "144", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x046_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_ping_V_0_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_pong_V_0_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["24", "25"],
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x055_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0.local_A_ping_V_0_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0.local_A_pong_V_0_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["27", "28"],
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x064_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0.local_A_ping_V_0_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0.local_A_pong_V_0_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["30", "31"],
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "264", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x073_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0.local_A_ping_V_0_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0.local_A_pong_V_0_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["33", "34"],
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x082_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0.local_A_ping_V_0_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0.local_A_pong_V_0_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["36", "37"],
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "344", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_ping_V_0_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_0_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1572935", "EstimateLatencyMax" : "1572935",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_B_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_B_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["41", "42"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_ping_V_0_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_pong_V_0_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["44", "45"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_ping_V_0_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_pong_V_0_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["47", "48"],
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
			{"Name" : "fifo_B_B_IO_L2_in_2_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_ping_V_0_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_pong_V_0_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["50", "51"],
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
			{"Name" : "fifo_B_B_IO_L2_in_3_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_ping_V_0_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_pong_V_0_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["53", "54"],
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
			{"Name" : "fifo_B_B_IO_L2_in_4_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_ping_V_0_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_pong_V_0_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["56", "57"],
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
			{"Name" : "fifo_B_B_IO_L2_in_5_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_ping_V_0_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_pong_V_0_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["59", "60"],
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
			{"Name" : "fifo_B_B_IO_L2_in_6_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_ping_V_0_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_pong_V_0_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["62", "63"],
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
			{"Name" : "fifo_B_B_IO_L2_in_7_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_ping_V_0_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_0_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["65", "66", "67", "68"],
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
			{"Name" : "fifo_A_PE_0_0_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x0100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "104", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "420", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_A_0_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_B_0_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_C_U", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U74", "Parent" : "64"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["70", "71", "72", "73"],
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
			{"Name" : "fifo_A_PE_0_1_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_A_0_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_B_0_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_C_U", "Parent" : "69"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U83", "Parent" : "69"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["75", "76", "77", "78"],
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
			{"Name" : "fifo_A_PE_0_2_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "466", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_A_0_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_B_0_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_C_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U89", "Parent" : "74"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["80", "81", "82", "83"],
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
			{"Name" : "fifo_A_PE_0_3_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "119", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "489", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_A_0_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_B_0_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_C_U", "Parent" : "79"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U95", "Parent" : "79"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["85", "86", "87", "88"],
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
			{"Name" : "fifo_A_PE_0_4_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "124", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "512", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_A_0_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_B_0_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_C_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U101", "Parent" : "84"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["90", "91", "92", "93"],
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
			{"Name" : "fifo_A_PE_0_5_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "129", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "535", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_A_0_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_B_0_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_C_U", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U107", "Parent" : "89"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["95", "96", "97", "98"],
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
			{"Name" : "fifo_A_PE_0_6_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "134", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "558", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_A_0_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_B_0_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_C_U", "Parent" : "94"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U113", "Parent" : "94"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0", "Parent" : "0", "Child" : ["100", "101", "102", "103"],
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
			{"Name" : "fifo_A_PE_0_7_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_A_0_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_B_0_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_C_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U119", "Parent" : "99"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["105", "106", "107", "108"],
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
			{"Name" : "fifo_A_PE_1_0_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "144", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "417", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_A_0_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_B_0_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_C_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U125", "Parent" : "104"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["110", "111", "112", "113"],
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
			{"Name" : "fifo_A_PE_1_1_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "104", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_A_0_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_B_0_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_C_U", "Parent" : "109"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U131", "Parent" : "109"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["115", "116", "117", "118"],
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
			{"Name" : "fifo_A_PE_1_2_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "119", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "463", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_A_0_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_B_0_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_C_U", "Parent" : "114"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U137", "Parent" : "114"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["120", "121", "122", "123"],
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
			{"Name" : "fifo_A_PE_1_3_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "124", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "486", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_A_0_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_B_0_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_C_U", "Parent" : "119"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U143", "Parent" : "119"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["125", "126", "127", "128"],
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
			{"Name" : "fifo_A_PE_1_4_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "129", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "164", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_A_0_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_B_0_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_C_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U149", "Parent" : "124"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["130", "131", "132", "133"],
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
			{"Name" : "fifo_A_PE_1_5_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "124", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "134", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "532", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_A_0_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_B_0_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_C_U", "Parent" : "129"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U155", "Parent" : "129"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["135", "136", "137", "138"],
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
			{"Name" : "fifo_A_PE_1_6_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "129", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "555", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_A_0_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_B_0_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_C_U", "Parent" : "134"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U161", "Parent" : "134"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0", "Parent" : "0", "Child" : ["140", "141", "142", "143"],
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
			{"Name" : "fifo_A_PE_1_7_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "134", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0229", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0229_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_A_0_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_B_0_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_C_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U167", "Parent" : "139"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["145", "146", "147", "148"],
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
			{"Name" : "fifo_A_PE_2_0_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "104", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "414", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_A_0_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_B_0_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_C_U", "Parent" : "144"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U173", "Parent" : "144"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["150", "151", "152", "153"],
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
			{"Name" : "fifo_A_PE_2_1_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "437", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_A_0_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_B_0_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_C_U", "Parent" : "149"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U179", "Parent" : "149"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["155", "156", "157", "158"],
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
			{"Name" : "fifo_A_PE_2_2_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "460", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_A_0_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_B_0_U", "Parent" : "154"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_C_U", "Parent" : "154"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U185", "Parent" : "154"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["160", "161", "162", "163"],
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
			{"Name" : "fifo_A_PE_2_3_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "164", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "483", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_A_0_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_B_0_U", "Parent" : "159"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_C_U", "Parent" : "159"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U191", "Parent" : "159"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["165", "166", "167", "168"],
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
			{"Name" : "fifo_A_PE_2_4_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "124", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_A_0_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_B_0_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_C_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U197", "Parent" : "164"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["170", "171", "172", "173"],
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
			{"Name" : "fifo_A_PE_2_5_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "129", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "529", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_A_0_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_B_0_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_C_U", "Parent" : "169"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U203", "Parent" : "169"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["175", "176", "177", "178"],
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
			{"Name" : "fifo_A_PE_2_6_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "134", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "552", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_A_0_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_B_0_U", "Parent" : "174"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_C_U", "Parent" : "174"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U209", "Parent" : "174"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0", "Parent" : "0", "Child" : ["180", "181", "182", "183"],
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
			{"Name" : "fifo_A_PE_2_7_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "386", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "219", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0230_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_A_0_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_B_0_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_C_U", "Parent" : "179"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U215", "Parent" : "179"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["185", "186", "187", "188"],
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
			{"Name" : "fifo_A_PE_3_0_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "411", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_A_0_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_B_0_U", "Parent" : "184"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_C_U", "Parent" : "184"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U221", "Parent" : "184"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["190", "191", "192", "193"],
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
			{"Name" : "fifo_A_PE_3_1_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_A_0_U", "Parent" : "189"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_B_0_U", "Parent" : "189"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_C_U", "Parent" : "189"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U227", "Parent" : "189"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["195", "196", "197", "198"],
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
			{"Name" : "fifo_A_PE_3_2_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "234", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "457", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_A_0_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_B_0_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_C_U", "Parent" : "194"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U233", "Parent" : "194"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["200", "201", "202", "203"],
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
			{"Name" : "fifo_A_PE_3_3_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "194", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "480", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_A_0_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_B_0_U", "Parent" : "199"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_C_U", "Parent" : "199"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U239", "Parent" : "199"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["205", "206", "207", "208"],
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
			{"Name" : "fifo_A_PE_3_4_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_A_0_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_B_0_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_C_U", "Parent" : "204"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U245", "Parent" : "204"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["210", "211", "212", "213"],
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
			{"Name" : "fifo_A_PE_3_5_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "204", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "249", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "526", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_A_0_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_B_0_U", "Parent" : "209"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_C_U", "Parent" : "209"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U251", "Parent" : "209"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["215", "216", "217", "218"],
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
			{"Name" : "fifo_A_PE_3_6_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "209", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "219", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0223", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "549", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_A_0_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_B_0_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_C_U", "Parent" : "214"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U257", "Parent" : "214"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0", "Parent" : "0", "Child" : ["220", "221", "222", "223"],
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
			{"Name" : "fifo_A_PE_3_7_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0231_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_A_0_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_B_0_U", "Parent" : "219"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_C_U", "Parent" : "219"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U263", "Parent" : "219"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["225", "226", "227", "228"],
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
			{"Name" : "fifo_A_PE_4_0_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "264", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "408", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_A_0_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_B_0_U", "Parent" : "224"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_C_U", "Parent" : "224"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U269", "Parent" : "224"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["230", "231", "232", "233"],
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
			{"Name" : "fifo_A_PE_4_1_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "234", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_A_0_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_B_0_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_C_U", "Parent" : "229"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U275", "Parent" : "229"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["235", "236", "237", "238"],
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
			{"Name" : "fifo_A_PE_4_2_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "229", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_3_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "194", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_A_0_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_B_0_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_C_U", "Parent" : "234"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U281", "Parent" : "234"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0", "Parent" : "0", "Child" : ["240", "241", "242", "243"],
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
			{"Name" : "fifo_A_PE_4_3_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "234", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_4_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "279", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "477", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_A_0_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_B_0_U", "Parent" : "239"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_C_U", "Parent" : "239"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U287", "Parent" : "239"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0", "Parent" : "0", "Child" : ["245", "246", "247", "248"],
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
			{"Name" : "fifo_A_PE_4_4_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "239", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_5_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "249", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "204", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "500", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_A_0_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_B_0_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_C_U", "Parent" : "244"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U293", "Parent" : "244"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0", "Parent" : "0", "Child" : ["250", "251", "252", "253"],
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
			{"Name" : "fifo_A_PE_4_5_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_6_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "209", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "289", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "523", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_A_0_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_B_0_U", "Parent" : "249"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_C_U", "Parent" : "249"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U299", "Parent" : "249"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0", "Parent" : "0", "Child" : ["255", "256", "257", "258"],
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
			{"Name" : "fifo_A_PE_4_6_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "249", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "294", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "546", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_A_0_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_B_0_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_C_U", "Parent" : "254"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U305", "Parent" : "254"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0", "Parent" : "0", "Child" : ["260", "261", "262", "263"],
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
			{"Name" : "fifo_A_PE_4_7_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_8_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "388", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "219", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "299", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0232_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_A_0_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_B_0_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_C_U", "Parent" : "259"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U311", "Parent" : "259"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["265", "266", "267", "268"],
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
			{"Name" : "fifo_A_PE_5_0_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "405", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_A_0_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_B_0_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_C_U", "Parent" : "264"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U317", "Parent" : "264"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["270", "271", "272", "273"],
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
			{"Name" : "fifo_A_PE_5_1_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "229", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "309", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "428", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_A_0_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_B_0_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_C_U", "Parent" : "269"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U323", "Parent" : "269"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["275", "276", "277", "278"],
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
			{"Name" : "fifo_A_PE_5_2_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_3_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "279", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "234", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "314", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "451", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_A_0_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_B_0_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_C_U", "Parent" : "274"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U329", "Parent" : "274"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0", "Parent" : "0", "Child" : ["280", "281", "282", "283"],
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
			{"Name" : "fifo_A_PE_5_3_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_4_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "239", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "319", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "474", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_A_0_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_B_0_U", "Parent" : "279"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_C_U", "Parent" : "279"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U335", "Parent" : "279"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0", "Parent" : "0", "Child" : ["285", "286", "287", "288"],
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
			{"Name" : "fifo_A_PE_5_4_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "279", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_5_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "289", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "324", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_A_0_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_B_0_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_C_U", "Parent" : "284"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U341", "Parent" : "284"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0", "Parent" : "0", "Child" : ["290", "291", "292", "293"],
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
			{"Name" : "fifo_A_PE_5_5_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_6_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "294", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "249", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "329", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "520", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_A_0_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_B_0_U", "Parent" : "289"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_C_U", "Parent" : "289"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U347", "Parent" : "289"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0", "Parent" : "0", "Child" : ["295", "296", "297", "298"],
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
			{"Name" : "fifo_A_PE_5_6_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "289", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_7_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "299", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "334", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "543", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_A_0_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_B_0_U", "Parent" : "294"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_C_U", "Parent" : "294"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U353", "Parent" : "294"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0", "Parent" : "0", "Child" : ["300", "301", "302", "303"],
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
			{"Name" : "fifo_A_PE_5_7_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "294", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_8_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "389", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "259", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "339", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0233", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "566", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0233_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_A_0_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_B_0_U", "Parent" : "299"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_C_U", "Parent" : "299"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U359", "Parent" : "299"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["305", "306", "307", "308"],
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
			{"Name" : "fifo_A_PE_6_0_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "309", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "344", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "402", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_A_0_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_B_0_U", "Parent" : "304"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_C_U", "Parent" : "304"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U365", "Parent" : "304"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["310", "311", "312", "313"],
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
			{"Name" : "fifo_A_PE_6_1_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "314", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "349", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "425", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_A_0_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_B_0_U", "Parent" : "309"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_C_U", "Parent" : "309"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U371", "Parent" : "309"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["315", "316", "317", "318"],
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
			{"Name" : "fifo_A_PE_6_2_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "309", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "319", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "354", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_A_0_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_B_0_U", "Parent" : "314"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_C_U", "Parent" : "314"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U377", "Parent" : "314"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0", "Parent" : "0", "Child" : ["320", "321", "322", "323"],
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
			{"Name" : "fifo_A_PE_6_3_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "314", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_4_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "324", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "279", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "471", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_A_0_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_B_0_U", "Parent" : "319"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_C_U", "Parent" : "319"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U383", "Parent" : "319"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0", "Parent" : "0", "Child" : ["325", "326", "327", "328"],
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
			{"Name" : "fifo_A_PE_6_4_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "319", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_5_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "329", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "364", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "494", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_A_0_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_B_0_U", "Parent" : "324"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_C_U", "Parent" : "324"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U389", "Parent" : "324"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0", "Parent" : "0", "Child" : ["330", "331", "332", "333"],
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
			{"Name" : "fifo_A_PE_6_5_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "324", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_6_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "334", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "289", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "369", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_A_0_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_B_0_U", "Parent" : "329"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_C_U", "Parent" : "329"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U395", "Parent" : "329"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0", "Parent" : "0", "Child" : ["335", "336", "337", "338"],
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
			{"Name" : "fifo_A_PE_6_6_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "329", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_7_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "339", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "294", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "540", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_A_0_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_B_0_U", "Parent" : "334"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_C_U", "Parent" : "334"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U401", "Parent" : "334"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0", "Parent" : "0", "Child" : ["340", "341", "342", "343"],
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
			{"Name" : "fifo_A_PE_6_7_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "334", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_8_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "390", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "299", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "379", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0234", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0234_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_A_0_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_B_0_U", "Parent" : "339"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_C_U", "Parent" : "339"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U407", "Parent" : "339"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["345", "346", "347", "348"],
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
			{"Name" : "fifo_A_PE_7_0_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x091_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "349", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "392", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "400", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_A_0_U", "Parent" : "344"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_B_0_U", "Parent" : "344"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_C_U", "Parent" : "344"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U413", "Parent" : "344"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["350", "351", "352", "353"],
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
			{"Name" : "fifo_A_PE_7_1_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "344", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "354", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "309", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "393", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "423", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_A_0_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_B_0_U", "Parent" : "349"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_C_U", "Parent" : "349"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U419", "Parent" : "349"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["355", "356", "357", "358"],
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
			{"Name" : "fifo_A_PE_7_2_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "349", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_3_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "314", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_2_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_A_0_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_B_0_U", "Parent" : "354"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_C_U", "Parent" : "354"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U425", "Parent" : "354"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0", "Parent" : "0", "Child" : ["360", "361", "362", "363"],
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
			{"Name" : "fifo_A_PE_7_3_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "354", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_4_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "364", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "319", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_3_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "395", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "469", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_A_0_U", "Parent" : "359"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_B_0_U", "Parent" : "359"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_C_U", "Parent" : "359"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U431", "Parent" : "359"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0", "Parent" : "0", "Child" : ["365", "366", "367", "368"],
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
			{"Name" : "fifo_A_PE_7_4_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "359", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_5_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "369", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "324", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_4_x0144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "492", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_A_0_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_B_0_U", "Parent" : "364"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_C_U", "Parent" : "364"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U437", "Parent" : "364"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0", "Parent" : "0", "Child" : ["370", "371", "372", "373"],
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
			{"Name" : "fifo_A_PE_7_5_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "364", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_6_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "329", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_5_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "397", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_A_0_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_B_0_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_C_U", "Parent" : "369"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U443", "Parent" : "369"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0", "Parent" : "0", "Child" : ["375", "376", "377", "378"],
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
			{"Name" : "fifo_A_PE_7_6_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "369", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_7_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "379", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "334", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_6_x0162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "398", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "538", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_A_0_U", "Parent" : "374"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_B_0_U", "Parent" : "374"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_C_U", "Parent" : "374"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U449", "Parent" : "374"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0", "Parent" : "0", "Child" : ["380", "381", "382", "383"],
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
			{"Name" : "fifo_A_PE_7_7_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "391", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "339", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x0171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "399", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "561", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0235_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_A_0_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_B_0_U", "Parent" : "379"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_C_U", "Parent" : "379"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U455", "Parent" : "379"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_0_8_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x036_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_1_8_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x045_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_2_8_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x054_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_3_8_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "219", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x063_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_4_8_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "259", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x072_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_5_8_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "299", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x081_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_6_8_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "339", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_7_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_7_8_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "379", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x099_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_0_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "344", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_1_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "349", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0117_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_2_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "354", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0126_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_3_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "359", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0135_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_4_x0144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "364", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_5_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "369", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_6_x0162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_7_x0171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "379", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_0_x0_loop_1_proc19_U0", "Parent" : "0", "Child" : ["401"],
		"CDFG" : "kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_0_x0_loop_1_proc19",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "402", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_0_x0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "344", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_0_x0_loop_1_proc19_U0.local_C_V_0_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["403", "404"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0243", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "400", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0242", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "405", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0.local_C_V_0_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0.data_split_V_U", "Parent" : "402"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["406", "407"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0242", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "402", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0241", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "408", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0.local_C_V_0_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0.data_split_V_U", "Parent" : "405"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["409", "410"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0241", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "405", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0240", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "411", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0.local_C_V_0_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0.data_split_V_U", "Parent" : "408"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["412", "413"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "408", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "414", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0.local_C_V_0_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0.data_split_V_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["415", "416"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "411", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "417", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0.local_C_V_0_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0.data_split_V_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["418", "419"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "414", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0237", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "420", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "104", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0.local_C_V_0_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0.data_split_V_U", "Parent" : "417"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["421", "422"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0237", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "417", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0236", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0236_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0.local_C_V_0_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0.data_split_V_U", "Parent" : "420"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_1_x0_loop_1_proc20_U0", "Parent" : "0", "Child" : ["424"],
		"CDFG" : "kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_1_x0_loop_1_proc20",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "425", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_1_x0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "349", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_1_x0_loop_1_proc20_U0.local_C_V_0_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["426", "427"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0251", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "423", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0250", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "428", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "309", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0.local_C_V_0_U", "Parent" : "425"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0.data_split_V_U", "Parent" : "425"},
	{"ID" : "428", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["429", "430"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "425", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0249", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0.local_C_V_0_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0.data_split_V_U", "Parent" : "428"},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["432", "433"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0249", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "428", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0248", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "229", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0.local_C_V_0_U", "Parent" : "431"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0.data_split_V_U", "Parent" : "431"},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["435", "436"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0248", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "431", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0247", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "437", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0.local_C_V_0_U", "Parent" : "434"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0.data_split_V_U", "Parent" : "434"},
	{"ID" : "437", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["438", "439"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0247", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "434", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0246", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0.local_C_V_0_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0.data_split_V_U", "Parent" : "437"},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["441", "442"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0246", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "437", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0245", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0.local_C_V_0_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0.data_split_V_U", "Parent" : "440"},
	{"ID" : "443", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["444", "445"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0245", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0244", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0.local_C_V_0_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0.data_split_V_U", "Parent" : "443"},
	{"ID" : "446", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_2_x0_loop_1_proc21_U0", "Parent" : "0", "Child" : ["447"],
		"CDFG" : "kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_2_x0_loop_1_proc21",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_2_x0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "354", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_2_x0_loop_1_proc21_U0.local_C_V_0_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["449", "450"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0259", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0258", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "451", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "314", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0.local_C_V_0_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0.data_split_V_U", "Parent" : "448"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["452", "453"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0258", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0257", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0.local_C_V_0_U", "Parent" : "451"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0.data_split_V_U", "Parent" : "451"},
	{"ID" : "454", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["455", "456"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0257", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "451", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0256", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "457", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "234", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0.local_C_V_0_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0.data_split_V_U", "Parent" : "454"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["458", "459"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0256", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0255", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "460", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "194", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0.local_C_V_0_U", "Parent" : "457"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0.data_split_V_U", "Parent" : "457"},
	{"ID" : "460", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["461", "462"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0255", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "457", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0254", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "463", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0.local_C_V_0_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0.data_split_V_U", "Parent" : "460"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["464", "465"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0254", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "460", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0253", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "466", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0.local_C_V_0_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0.data_split_V_U", "Parent" : "463"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["467", "468"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0253", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "463", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "589", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0.local_C_V_0_U", "Parent" : "466"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0.data_split_V_U", "Parent" : "466"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_3_x0_loop_1_proc22_U0", "Parent" : "0", "Child" : ["470"],
		"CDFG" : "kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_3_x0_loop_1_proc22",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "471", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_3_x0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "359", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_3_x0_loop_1_proc22_U0.local_C_V_0_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["472", "473"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0267", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "469", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0266", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "474", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "319", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0.local_C_V_0_U", "Parent" : "471"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0.data_split_V_U", "Parent" : "471"},
	{"ID" : "474", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["475", "476"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0266", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "471", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0265", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "477", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "279", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0.local_C_V_0_U", "Parent" : "474"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0.data_split_V_U", "Parent" : "474"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["478", "479"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0265", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "474", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0264", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "480", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "239", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0.local_C_V_0_U", "Parent" : "477"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0.data_split_V_U", "Parent" : "477"},
	{"ID" : "480", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["481", "482"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0264", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "477", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0263", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "483", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0.local_C_V_0_U", "Parent" : "480"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0.data_split_V_U", "Parent" : "480"},
	{"ID" : "483", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["484", "485"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0263", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "480", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0262", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "486", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0.local_C_V_0_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0.data_split_V_U", "Parent" : "483"},
	{"ID" : "486", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["487", "488"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0262", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "483", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0261", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "489", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0.local_C_V_0_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0.data_split_V_U", "Parent" : "486"},
	{"ID" : "489", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["490", "491"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0261", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "486", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0260", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "588", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0.local_C_V_0_U", "Parent" : "489"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0.data_split_V_U", "Parent" : "489"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_4_x0_loop_1_proc23_U0", "Parent" : "0", "Child" : ["493"],
		"CDFG" : "kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_4_x0_loop_1_proc23",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "494", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_4_x0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "364", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_4_x0_loop_1_proc23_U0.local_C_V_0_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0", "Parent" : "0", "Child" : ["495", "496"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0275", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "492", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "324", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0.local_C_V_0_U", "Parent" : "494"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0.data_split_V_U", "Parent" : "494"},
	{"ID" : "497", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0", "Parent" : "0", "Child" : ["498", "499"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0274", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "494", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0273", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "500", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0.local_C_V_0_U", "Parent" : "497"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0.data_split_V_U", "Parent" : "497"},
	{"ID" : "500", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0", "Parent" : "0", "Child" : ["501", "502"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0273", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "497", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0272", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0.local_C_V_0_U", "Parent" : "500"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0.data_split_V_U", "Parent" : "500"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0", "Parent" : "0", "Child" : ["504", "505"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0272", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "500", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0271", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "204", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0.local_C_V_0_U", "Parent" : "503"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0.data_split_V_U", "Parent" : "503"},
	{"ID" : "506", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["507", "508"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0271", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "503", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0270", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0.local_C_V_0_U", "Parent" : "506"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0.data_split_V_U", "Parent" : "506"},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["510", "511"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0270", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "506", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0269", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "512", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0205", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "124", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0.local_C_V_0_U", "Parent" : "509"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0.data_split_V_U", "Parent" : "509"},
	{"ID" : "512", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["513", "514"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0269", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "509", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0268", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0268_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0.local_C_V_0_U", "Parent" : "512"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0.data_split_V_U", "Parent" : "512"},
	{"ID" : "515", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_5_x0_loop_1_proc24_U0", "Parent" : "0", "Child" : ["516"],
		"CDFG" : "kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_5_x0_loop_1_proc24",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_5_x0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "369", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_5_x0_loop_1_proc24_U0.local_C_V_0_U", "Parent" : "515"},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0", "Parent" : "0", "Child" : ["518", "519"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0283", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "515", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0282", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "520", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0218", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "329", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0.local_C_V_0_U", "Parent" : "517"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0.data_split_V_U", "Parent" : "517"},
	{"ID" : "520", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0", "Parent" : "0", "Child" : ["521", "522"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0282", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "517", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "523", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0217", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "289", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0.local_C_V_0_U", "Parent" : "520"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0.data_split_V_U", "Parent" : "520"},
	{"ID" : "523", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0", "Parent" : "0", "Child" : ["524", "525"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0281", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "520", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "526", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0216", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "249", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0.local_C_V_0_U", "Parent" : "523"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0.data_split_V_U", "Parent" : "523"},
	{"ID" : "526", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0", "Parent" : "0", "Child" : ["527", "528"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "523", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "529", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "209", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0.local_C_V_0_U", "Parent" : "526"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0.data_split_V_U", "Parent" : "526"},
	{"ID" : "529", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["530", "531"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0279", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "526", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0278", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "532", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0.local_C_V_0_U", "Parent" : "529"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0.data_split_V_U", "Parent" : "529"},
	{"ID" : "532", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["533", "534"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "529", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "535", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "129", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0.local_C_V_0_U", "Parent" : "532"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0.data_split_V_U", "Parent" : "532"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["536", "537"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0277", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "532", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0276", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "586", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0.local_C_V_0_U", "Parent" : "535"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0.data_split_V_U", "Parent" : "535"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_6_x0_loop_1_proc25_U0", "Parent" : "0", "Child" : ["539"],
		"CDFG" : "kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_6_x0_loop_1_proc25",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "540", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_6_x0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_6_x0_loop_1_proc25_U0.local_C_V_0_U", "Parent" : "538"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0", "Parent" : "0", "Child" : ["541", "542"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0291", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "538", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0290", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "543", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0226", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "334", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0.local_C_V_0_U", "Parent" : "540"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0.data_split_V_U", "Parent" : "540"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0", "Parent" : "0", "Child" : ["544", "545"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0290", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "540", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0289", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "546", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "294", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0.local_C_V_0_U", "Parent" : "543"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0.data_split_V_U", "Parent" : "543"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0", "Parent" : "0", "Child" : ["547", "548"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0289", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "543", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0288", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "549", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0.local_C_V_0_U", "Parent" : "546"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0.data_split_V_U", "Parent" : "546"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0", "Parent" : "0", "Child" : ["550", "551"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0288", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "546", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0287", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "552", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0223", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0.local_C_V_0_U", "Parent" : "549"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0.data_split_V_U", "Parent" : "549"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["553", "554"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0287", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "549", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0286", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "555", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0222", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0.local_C_V_0_U", "Parent" : "552"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0.data_split_V_U", "Parent" : "552"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["556", "557"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0286", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "552", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0285", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "558", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0221", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "134", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0.local_C_V_0_U", "Parent" : "555"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0.data_split_V_U", "Parent" : "555"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["559", "560"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0285", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "555", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "585", "DependentChan" : "878", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0220", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0.local_C_V_0_U", "Parent" : "558"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0.data_split_V_U", "Parent" : "558"},
	{"ID" : "561", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_7_x0_loop_1_proc26_U0", "Parent" : "0", "Child" : ["562"],
		"CDFG" : "kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_7_x0_loop_1_proc26",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "879", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_split_V_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_7_7_x0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "379", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_7_x0_loop_1_proc26_U0.local_C_V_0_U", "Parent" : "561"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0", "Parent" : "0", "Child" : ["564", "565"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "561", "DependentChan" : "879", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "566", "DependentChan" : "880", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0234", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "339", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0234_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0.local_C_V_0_U", "Parent" : "563"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0.data_split_V_U", "Parent" : "563"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0", "Parent" : "0", "Child" : ["567", "568"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0298", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "563", "DependentChan" : "880", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0297", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "881", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "299", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0233_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0.local_C_V_0_U", "Parent" : "566"},
	{"ID" : "568", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0.data_split_V_U", "Parent" : "566"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0", "Parent" : "0", "Child" : ["570", "571"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0297", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "566", "DependentChan" : "881", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0296", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "882", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "259", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0232_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0.local_C_V_0_U", "Parent" : "569"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0.data_split_V_U", "Parent" : "569"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0", "Parent" : "0", "Child" : ["573", "574"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0296", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "569", "DependentChan" : "882", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "883", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "219", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0231_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0.local_C_V_0_U", "Parent" : "572"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0.data_split_V_U", "Parent" : "572"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["576", "577"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "572", "DependentChan" : "883", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "884", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0230", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0230_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0.local_C_V_0_U", "Parent" : "575"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0.data_split_V_U", "Parent" : "575"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["579", "580"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "575", "DependentChan" : "884", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "885", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0229", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0229_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0.local_C_V_0_U", "Parent" : "578"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0.data_split_V_U", "Parent" : "578"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["582", "583"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0293", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "578", "DependentChan" : "885", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0292", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "886", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0292_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0228", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "582", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0.local_C_V_0_U", "Parent" : "581"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0.data_split_V_U", "Parent" : "581"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0307", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "585", "DependentChan" : "887", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0307_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0292", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "886", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0292_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0307", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "584", "DependentChan" : "887", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0307_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0306", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "586", "DependentChan" : "888", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0306_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "558", "DependentChan" : "878", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0306", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "585", "DependentChan" : "888", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0306_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0305", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "889", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0305_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "535", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0276_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0305", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "586", "DependentChan" : "889", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0305_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0304", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "588", "DependentChan" : "890", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0304_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0268", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "512", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0268_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0304", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "587", "DependentChan" : "890", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0304_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0303", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "589", "DependentChan" : "891", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0303_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0260", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "489", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0260_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0303", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "588", "DependentChan" : "891", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0303_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0302", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "892", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0302_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "466", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0252_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0302", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "589", "DependentChan" : "892", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0302_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0301", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "893", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0301_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "443", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0244_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0301", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "590", "DependentChan" : "893", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0301_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0300", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "592", "DependentChan" : "894", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0300_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "420", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0236_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "593", "DependentChan" : "895", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "591", "DependentChan" : "894", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_serialize_x0_U0", "Parent" : "0", "Child" : ["594"],
		"CDFG" : "C_drain_IO_L3_out_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393217", "EstimateLatencyMax" : "393217",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L3_out_serialize_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "592", "DependentChan" : "895", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L3_out_serialize_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_serialize_x0_U0.mem_data_split_V_U", "Parent" : "593"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c1_U", "Parent" : "0"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c_U", "Parent" : "0"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "650", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "651", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x0_U", "Parent" : "0"},
	{"ID" : "653", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "654", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "665", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "666", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "667", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "668", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "669", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "670", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "671", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "673", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "675", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x0_U", "Parent" : "0"},
	{"ID" : "677", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "678", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "680", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "681", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "682", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "683", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "684", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "685", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "687", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "689", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "690", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "691", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "692", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "693", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "694", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "695", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "697", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "698", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "699", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "700", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x0_U", "Parent" : "0"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "702", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "704", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "706", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "707", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "708", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "709", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "710", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "711", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "712", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "713", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "714", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "715", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "716", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "717", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "718", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "719", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "720", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "721", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "722", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "723", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "724", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x0_U", "Parent" : "0"},
	{"ID" : "725", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "727", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "728", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "729", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "731", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "732", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "733", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "734", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "735", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "736", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "737", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "738", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "739", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "740", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "741", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "742", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "743", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "744", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "745", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "746", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "747", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "748", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_8_x0_U", "Parent" : "0"},
	{"ID" : "749", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "750", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "751", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "752", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "753", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "754", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "755", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "756", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "757", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "758", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "759", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "760", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "761", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "762", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "763", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "764", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "765", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "766", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "767", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "768", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "769", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "770", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "771", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "772", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_8_x0_U", "Parent" : "0"},
	{"ID" : "773", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "774", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "775", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "776", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "777", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "778", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "779", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "780", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "781", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "782", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "783", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "784", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "785", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "786", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "787", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "788", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "789", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "790", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "791", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "792", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "793", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "794", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "795", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "796", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_8_x0_U", "Parent" : "0"},
	{"ID" : "797", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "798", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "799", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "800", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x0_U", "Parent" : "0"},
	{"ID" : "801", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "802", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "803", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x0_U", "Parent" : "0"},
	{"ID" : "804", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "805", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "806", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_2_x0_U", "Parent" : "0"},
	{"ID" : "807", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "808", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "809", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_3_x0_U", "Parent" : "0"},
	{"ID" : "810", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "811", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "812", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_4_x0_U", "Parent" : "0"},
	{"ID" : "813", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "814", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "815", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_5_x0_U", "Parent" : "0"},
	{"ID" : "816", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "817", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "818", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_6_x0_U", "Parent" : "0"},
	{"ID" : "819", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "820", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_8_x0_U", "Parent" : "0"},
	{"ID" : "821", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_7_x0_U", "Parent" : "0"},
	{"ID" : "822", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "823", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U", "Parent" : "0"},
	{"ID" : "824", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U", "Parent" : "0"},
	{"ID" : "825", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U", "Parent" : "0"},
	{"ID" : "826", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U", "Parent" : "0"},
	{"ID" : "827", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U", "Parent" : "0"},
	{"ID" : "828", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U", "Parent" : "0"},
	{"ID" : "829", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U", "Parent" : "0"},
	{"ID" : "830", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U", "Parent" : "0"},
	{"ID" : "831", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U", "Parent" : "0"},
	{"ID" : "832", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U", "Parent" : "0"},
	{"ID" : "833", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U", "Parent" : "0"},
	{"ID" : "834", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U", "Parent" : "0"},
	{"ID" : "835", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U", "Parent" : "0"},
	{"ID" : "836", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U", "Parent" : "0"},
	{"ID" : "837", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U", "Parent" : "0"},
	{"ID" : "838", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U", "Parent" : "0"},
	{"ID" : "839", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_7_x0_U", "Parent" : "0"},
	{"ID" : "840", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_6_x0_U", "Parent" : "0"},
	{"ID" : "841", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_5_x0_U", "Parent" : "0"},
	{"ID" : "842", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_4_x0_U", "Parent" : "0"},
	{"ID" : "843", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_3_x0_U", "Parent" : "0"},
	{"ID" : "844", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_2_x0_U", "Parent" : "0"},
	{"ID" : "845", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_1_x0_U", "Parent" : "0"},
	{"ID" : "846", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_0_x0_U", "Parent" : "0"},
	{"ID" : "847", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_7_x0_U", "Parent" : "0"},
	{"ID" : "848", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_6_x0_U", "Parent" : "0"},
	{"ID" : "849", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_5_x0_U", "Parent" : "0"},
	{"ID" : "850", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_4_x0_U", "Parent" : "0"},
	{"ID" : "851", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_3_x0_U", "Parent" : "0"},
	{"ID" : "852", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_2_x0_U", "Parent" : "0"},
	{"ID" : "853", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_1_x0_U", "Parent" : "0"},
	{"ID" : "854", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_0_x0_U", "Parent" : "0"},
	{"ID" : "855", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_7_x0_U", "Parent" : "0"},
	{"ID" : "856", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_6_x0_U", "Parent" : "0"},
	{"ID" : "857", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_5_x0_U", "Parent" : "0"},
	{"ID" : "858", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_4_x0_U", "Parent" : "0"},
	{"ID" : "859", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_3_x0_U", "Parent" : "0"},
	{"ID" : "860", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_2_x0_U", "Parent" : "0"},
	{"ID" : "861", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_1_x0_U", "Parent" : "0"},
	{"ID" : "862", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_0_x0_U", "Parent" : "0"},
	{"ID" : "863", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_7_x0_U", "Parent" : "0"},
	{"ID" : "864", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_6_x0_U", "Parent" : "0"},
	{"ID" : "865", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_5_x0_U", "Parent" : "0"},
	{"ID" : "866", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_4_x0_U", "Parent" : "0"},
	{"ID" : "867", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_3_x0_U", "Parent" : "0"},
	{"ID" : "868", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_2_x0_U", "Parent" : "0"},
	{"ID" : "869", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_1_x0_U", "Parent" : "0"},
	{"ID" : "870", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_0_x0_U", "Parent" : "0"},
	{"ID" : "871", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_7_x0_U", "Parent" : "0"},
	{"ID" : "872", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_6_x0_U", "Parent" : "0"},
	{"ID" : "873", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_5_x0_U", "Parent" : "0"},
	{"ID" : "874", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_4_x0_U", "Parent" : "0"},
	{"ID" : "875", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_3_x0_U", "Parent" : "0"},
	{"ID" : "876", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_2_x0_U", "Parent" : "0"},
	{"ID" : "877", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_1_x0_U", "Parent" : "0"},
	{"ID" : "878", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_0_x0_U", "Parent" : "0"},
	{"ID" : "879", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_7_x0_U", "Parent" : "0"},
	{"ID" : "880", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_6_x0_U", "Parent" : "0"},
	{"ID" : "881", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_5_x0_U", "Parent" : "0"},
	{"ID" : "882", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_4_x0_U", "Parent" : "0"},
	{"ID" : "883", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_3_x0_U", "Parent" : "0"},
	{"ID" : "884", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_2_x0_U", "Parent" : "0"},
	{"ID" : "885", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_1_x0_U", "Parent" : "0"},
	{"ID" : "886", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_0_x0_U", "Parent" : "0"},
	{"ID" : "887", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_7_x0_U", "Parent" : "0"},
	{"ID" : "888", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_6_x0_U", "Parent" : "0"},
	{"ID" : "889", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_5_x0_U", "Parent" : "0"},
	{"ID" : "890", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_4_x0_U", "Parent" : "0"},
	{"ID" : "891", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_3_x0_U", "Parent" : "0"},
	{"ID" : "892", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_2_x0_U", "Parent" : "0"},
	{"ID" : "893", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x0_U", "Parent" : "0"},
	{"ID" : "894", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x0_U", "Parent" : "0"},
	{"ID" : "895", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L3_out_serialize_x0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x0 {
		gmem_B {Type I LastRead 72 FirstWrite -1}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 4}}
	kernel0_x0_entry9 {
		B {Type I LastRead 0 FirstWrite -1}
		B_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x0_entry35 {
		B {Type I LastRead 0 FirstWrite -1}
		B_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x0 {
		fifo_A_A_IO_L3_in_serialize_x09 {Type O LastRead -1 FirstWrite 2}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L3_in_x0 {
		fifo_A_in {Type I LastRead 6 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_0_x0 {
		fifo_A_A_IO_L2_in_0_x012 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x013 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_0_0_x028 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x013 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x014 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_1_0_x037 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_2_x0 {
		fifo_A_A_IO_L2_in_2_x014 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x015 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_2_0_x046 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_3_x0 {
		fifo_A_A_IO_L2_in_3_x015 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x016 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_3_0_x055 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_4_x0 {
		fifo_A_A_IO_L2_in_4_x016 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x017 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_4_0_x064 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_5_x0 {
		fifo_A_A_IO_L2_in_5_x017 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x018 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_5_0_x073 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_6_x0 {
		fifo_A_A_IO_L2_in_6_x018 {Type I LastRead 6 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x019 {Type O LastRead -1 FirstWrite 6}
		fifo_A_PE_6_0_x082 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_boundary_x0 {
		fifo_A_A_IO_L2_in_7_x019 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_0_x091 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L3_in_serialize_x0 {
		gmem_B {Type I LastRead 72 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 73}
		B {Type I LastRead 0 FirstWrite -1}}
	B_IO_L3_in_x0 {
		fifo_B_in {Type I LastRead 6 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 6}}
	B_IO_L2_in_0_x0 {
		fifo_B_B_IO_L2_in_0_x020 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x021 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_0_x0100 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_1_x0 {
		fifo_B_B_IO_L2_in_1_x021 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x022 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_1_x0109 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_2_x0 {
		fifo_B_B_IO_L2_in_2_x022 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x023 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_2_x0118 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_3_x0 {
		fifo_B_B_IO_L2_in_3_x023 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x024 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_3_x0127 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_4_x0 {
		fifo_B_B_IO_L2_in_4_x024 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x025 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_4_x0136 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_5_x0 {
		fifo_B_B_IO_L2_in_5_x025 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x026 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_5_x0145 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_6_x0 {
		fifo_B_B_IO_L2_in_6_x026 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x027 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_6_x0154 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_boundary_x0 {
		fifo_B_B_IO_L2_in_7_x027 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_0_7_x0163 {Type O LastRead -1 FirstWrite 4}}
	PE_wrapper_0_0_x0 {
		fifo_A_PE_0_0_x028 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_1_x029 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_0_x0100 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_0_x0101 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_0_x0172 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_1_x0 {
		fifo_A_PE_0_1_x029 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_2_x030 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_1_x0109 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_1_x0110 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_1_x0180 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_2_x0 {
		fifo_A_PE_0_2_x030 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_3_x031 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_2_x0118 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_2_x0119 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_2_x0188 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x031 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_4_x032 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_3_x0127 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_3_x0128 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_3_x0196 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_4_x0 {
		fifo_A_PE_0_4_x032 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_5_x033 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_4_x0136 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_4_x0137 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_4_x0204 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x033 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_6_x034 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_5_x0145 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_5_x0146 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_5_x0212 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_6_x0 {
		fifo_A_PE_0_6_x034 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_7_x035 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_6_x0154 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_6_x0155 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_6_x0220 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_0_7_x0 {
		fifo_A_PE_0_7_x035 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_0_8_x036 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_0_7_x0163 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_1_7_x0164 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_0_7_x0228 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x037 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_1_x038 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_0_x0101 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_0_x0102 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_0_x0173 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x038 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_2_x039 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_1_x0110 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_1_x0111 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_1_x0181 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_2_x0 {
		fifo_A_PE_1_2_x039 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_3_x040 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_2_x0119 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_2_x0120 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_2_x0189 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_3_x0 {
		fifo_A_PE_1_3_x040 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_4_x041 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_3_x0128 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_3_x0129 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_3_x0197 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x041 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_5_x042 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_4_x0137 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_4_x0138 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_4_x0205 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_5_x0 {
		fifo_A_PE_1_5_x042 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_6_x043 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_5_x0146 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_5_x0147 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_5_x0213 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_6_x0 {
		fifo_A_PE_1_6_x043 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_7_x044 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_6_x0155 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_6_x0156 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_6_x0221 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_1_7_x0 {
		fifo_A_PE_1_7_x044 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_1_8_x045 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_1_7_x0164 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_2_7_x0165 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_1_7_x0229 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_0_x0 {
		fifo_A_PE_2_0_x046 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_1_x047 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_0_x0102 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_0_x0103 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_0_x0174 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x047 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_2_x048 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_1_x0111 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_1_x0112 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_1_x0182 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_2_x0 {
		fifo_A_PE_2_2_x048 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_3_x049 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_2_x0120 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_2_x0121 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_2_x0190 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_3_x0 {
		fifo_A_PE_2_3_x049 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_4_x050 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_3_x0129 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_3_x0130 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_3_x0198 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_4_x0 {
		fifo_A_PE_2_4_x050 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_5_x051 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_4_x0138 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_4_x0139 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_4_x0206 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_5_x0 {
		fifo_A_PE_2_5_x051 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_6_x052 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_5_x0147 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_5_x0148 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_5_x0214 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x052 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_7_x053 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_6_x0156 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_6_x0157 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_6_x0222 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_2_7_x0 {
		fifo_A_PE_2_7_x053 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_2_8_x054 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_2_7_x0165 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_3_7_x0166 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_2_7_x0230 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_0_x0 {
		fifo_A_PE_3_0_x055 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_1_x056 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_0_x0103 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_0_x0104 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_0_x0175 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_1_x0 {
		fifo_A_PE_3_1_x056 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_2_x057 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_1_x0112 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_1_x0113 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_1_x0183 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_2_x0 {
		fifo_A_PE_3_2_x057 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_3_x058 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_2_x0121 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_2_x0122 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_2_x0191 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_3_x0 {
		fifo_A_PE_3_3_x058 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_4_x059 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_3_x0130 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_3_x0131 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_3_x0199 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x059 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_5_x060 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_4_x0139 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_4_x0140 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_4_x0207 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_5_x0 {
		fifo_A_PE_3_5_x060 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_6_x061 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_5_x0148 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_5_x0149 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_5_x0215 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_6_x0 {
		fifo_A_PE_3_6_x061 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_7_x062 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_6_x0157 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_6_x0158 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_6_x0223 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_3_7_x0 {
		fifo_A_PE_3_7_x062 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_3_8_x063 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_3_7_x0166 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_4_7_x0167 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_3_7_x0231 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x064 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_1_x065 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_0_x0104 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_0_x0105 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_0_x0176 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_1_x0 {
		fifo_A_PE_4_1_x065 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_2_x066 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_1_x0113 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_1_x0114 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_1_x0184 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_2_x0 {
		fifo_A_PE_4_2_x066 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_3_x067 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_2_x0122 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_2_x0123 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_2_x0192 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_3_x0 {
		fifo_A_PE_4_3_x067 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_4_x068 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_3_x0131 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_3_x0132 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_3_x0200 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_4_x0 {
		fifo_A_PE_4_4_x068 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_5_x069 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_4_x0140 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_4_x0141 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_4_x0208 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_5_x0 {
		fifo_A_PE_4_5_x069 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_6_x070 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_5_x0149 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_5_x0150 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_5_x0216 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_6_x0 {
		fifo_A_PE_4_6_x070 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_7_x071 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_6_x0158 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_6_x0159 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_6_x0224 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_4_7_x0 {
		fifo_A_PE_4_7_x071 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_4_8_x072 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_4_7_x0167 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_5_7_x0168 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_4_7_x0232 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_0_x0 {
		fifo_A_PE_5_0_x073 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_1_x074 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_0_x0105 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_0_x0106 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_0_x0177 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_1_x0 {
		fifo_A_PE_5_1_x074 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_2_x075 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_1_x0114 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_1_x0115 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_1_x0185 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_2_x0 {
		fifo_A_PE_5_2_x075 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_3_x076 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_2_x0123 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_2_x0124 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_2_x0193 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_3_x0 {
		fifo_A_PE_5_3_x076 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_4_x077 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_3_x0132 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_3_x0133 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_3_x0201 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_4_x0 {
		fifo_A_PE_5_4_x077 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_5_x078 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_4_x0141 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_4_x0142 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_4_x0209 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_5_x0 {
		fifo_A_PE_5_5_x078 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_6_x079 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_5_x0150 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_5_x0151 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_5_x0217 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_6_x0 {
		fifo_A_PE_5_6_x079 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_7_x080 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_6_x0159 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_6_x0160 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_6_x0225 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_5_7_x0 {
		fifo_A_PE_5_7_x080 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_5_8_x081 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_5_7_x0168 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_6_7_x0169 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_5_7_x0233 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_0_x0 {
		fifo_A_PE_6_0_x082 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_1_x083 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_0_x0106 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_0_x0107 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_0_x0178 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_1_x0 {
		fifo_A_PE_6_1_x083 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_2_x084 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_1_x0115 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_1_x0116 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_1_x0186 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_2_x0 {
		fifo_A_PE_6_2_x084 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_3_x085 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_2_x0124 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_2_x0125 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_2_x0194 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_3_x0 {
		fifo_A_PE_6_3_x085 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_4_x086 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_3_x0133 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_3_x0134 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_3_x0202 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_4_x0 {
		fifo_A_PE_6_4_x086 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_5_x087 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_4_x0142 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_4_x0143 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_4_x0210 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_5_x0 {
		fifo_A_PE_6_5_x087 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_6_x088 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_5_x0151 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_5_x0152 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_5_x0218 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_6_x0 {
		fifo_A_PE_6_6_x088 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_7_x089 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_6_x0160 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_6_x0161 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_6_x0226 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_6_7_x0 {
		fifo_A_PE_6_7_x089 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_6_8_x090 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_6_7_x0169 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_7_7_x0170 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_6_7_x0234 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_0_x0 {
		fifo_A_PE_7_0_x091 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_1_x092 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_0_x0107 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_0_x0108 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_0_x0179 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_1_x0 {
		fifo_A_PE_7_1_x092 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_2_x093 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_1_x0116 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_1_x0117 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_1_x0187 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_2_x0 {
		fifo_A_PE_7_2_x093 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_3_x094 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_2_x0125 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_2_x0126 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_2_x0195 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_3_x0 {
		fifo_A_PE_7_3_x094 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_4_x095 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_3_x0134 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_3_x0135 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_3_x0203 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_4_x0 {
		fifo_A_PE_7_4_x095 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_5_x096 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_4_x0143 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_4_x0144 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_4_x0211 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_5_x0 {
		fifo_A_PE_7_5_x096 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_6_x097 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_5_x0152 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_5_x0153 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_5_x0219 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_6_x0 {
		fifo_A_PE_7_6_x097 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_7_x098 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_6_x0161 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_6_x0162 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_6_x0227 {Type O LastRead -1 FirstWrite 10}}
	PE_wrapper_7_7_x0 {
		fifo_A_PE_7_7_x098 {Type I LastRead 5 FirstWrite -1}
		fifo_A_PE_7_8_x099 {Type O LastRead -1 FirstWrite 26}
		fifo_B_PE_7_7_x0170 {Type I LastRead 6 FirstWrite -1}
		fifo_B_PE_8_7_x0171 {Type O LastRead -1 FirstWrite 26}
		fifo_C_drain_PE_7_7_x0235 {Type O LastRead -1 FirstWrite 10}}
	A_PE_dummy_in_0_x0 {
		fifo_A_PE_0_8_x036 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_1_x0 {
		fifo_A_PE_1_8_x045 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_2_x0 {
		fifo_A_PE_2_8_x054 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_3_x0 {
		fifo_A_PE_3_8_x063 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_4_x0 {
		fifo_A_PE_4_8_x072 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_5_x0 {
		fifo_A_PE_5_8_x081 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_6_x0 {
		fifo_A_PE_6_8_x090 {Type I LastRead 5 FirstWrite -1}}
	A_PE_dummy_in_7_x0 {
		fifo_A_PE_7_8_x099 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_0_x0 {
		fifo_B_PE_8_0_x0108 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_1_x0 {
		fifo_B_PE_8_1_x0117 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_2_x0 {
		fifo_B_PE_8_2_x0126 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_3_x0 {
		fifo_B_PE_8_3_x0135 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_4_x0 {
		fifo_B_PE_8_4_x0144 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_5_x0 {
		fifo_B_PE_8_5_x0153 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_6_x0 {
		fifo_B_PE_8_6_x0162 {Type I LastRead 5 FirstWrite -1}}
	B_PE_dummy_in_7_x0 {
		fifo_B_PE_8_7_x0171 {Type I LastRead 5 FirstWrite -1}}
	kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_0_x0_loop_1_proc19 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0 {Type O LastRead -1 FirstWrite 5}
		data_split_V {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_0_x0 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0243 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0242 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_0_x0178 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0242 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0241 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_0_x0177 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0241 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0240 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_0_x0176 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0240 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0239 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x0175 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0239 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0238 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x0174 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0238 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0237 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_0_x0173 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_0_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0237 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0236 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_0_x0172 {Type I LastRead 5 FirstWrite -1}}
	kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_1_x0_loop_1_proc20 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0 {Type O LastRead -1 FirstWrite 5}
		data_split_V_8 {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_1_x0 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0251 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0250 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x0186 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0250 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0249 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_1_x0185 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0249 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0248 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_1_x0184 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0248 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0247 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_1_x0183 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0247 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0246 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_1_x0182 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0246 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0245 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_1_x0181 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_1_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0245 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0244 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_1_x0180 {Type I LastRead 5 FirstWrite -1}}
	kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_2_x0_loop_1_proc21 {
		fifo_C_drain_C_drain_IO_L1_out_2_7_x0 {Type O LastRead -1 FirstWrite 5}
		data_split_V_9 {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_2_x0 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_7_x0259 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_6_x0258 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_2_x0194 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_6_x0258 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_5_x0257 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_2_x0193 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_5_x0257 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_4_x0256 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_2_x0192 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_4_x0256 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_3_x0255 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_2_x0191 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_3_x0255 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_2_x0254 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_2_x0190 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_2_x0254 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_1_x0253 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_2_x0189 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_2_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_2_1_x0253 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0252 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_2_x0188 {Type I LastRead 5 FirstWrite -1}}
	kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_3_x0_loop_1_proc22 {
		fifo_C_drain_C_drain_IO_L1_out_3_7_x0 {Type O LastRead -1 FirstWrite 5}
		data_split_V_10 {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_3_x0 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_7_x0267 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_6_x0266 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_3_x0202 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_6_x0266 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_5_x0265 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_3_x0201 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_5_x0265 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_4_x0264 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_3_x0200 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_4_x0264 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_3_x0263 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_3_x0199 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_3_x0263 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_2_x0262 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_3_x0198 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_2_x0262 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_1_x0261 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_3_x0197 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_3_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_3_1_x0261 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_3_0_x0260 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_3_x0196 {Type I LastRead 5 FirstWrite -1}}
	kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_4_x0_loop_1_proc23 {
		fifo_C_drain_C_drain_IO_L1_out_4_7_x0 {Type O LastRead -1 FirstWrite 5}
		data_split_V_11 {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_4_x0 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_7_x0275 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_6_x0274 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_4_x0210 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_6_x0274 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_5_x0273 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_4_x0209 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_5_x0273 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_4_x0272 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_4_x0208 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_4_x0272 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_3_x0271 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_4_x0207 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_3_x0271 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_2_x0270 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_4_x0206 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_2_x0270 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_1_x0269 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_4_x0205 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_4_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_4_1_x0269 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_4_0_x0268 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_4_x0204 {Type I LastRead 5 FirstWrite -1}}
	kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_5_x0_loop_1_proc24 {
		fifo_C_drain_C_drain_IO_L1_out_5_7_x0 {Type O LastRead -1 FirstWrite 5}
		data_split_V_12 {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_5_x0 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_7_x0283 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_6_x0282 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_5_x0218 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_6_x0282 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_5_x0281 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_5_x0217 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_5_x0281 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_4_x0280 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_5_x0216 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_4_x0280 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_3_x0279 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_5_x0215 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_3_x0279 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_2_x0278 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_5_x0214 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_2_x0278 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_1_x0277 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_5_x0213 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_5_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_5_1_x0277 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_5_0_x0276 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_5_x0212 {Type I LastRead 5 FirstWrite -1}}
	kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_6_x0_loop_1_proc25 {
		fifo_C_drain_C_drain_IO_L1_out_6_7_x0 {Type O LastRead -1 FirstWrite 5}
		data_split_V_13 {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_6_x0 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_7_x0291 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_6_x0290 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_6_x0226 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_6_x0290 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_5_x0289 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_6_x0225 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_5_x0289 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_4_x0288 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_6_x0224 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_4_x0288 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_3_x0287 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_6_x0223 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_3_x0287 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_2_x0286 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_6_x0222 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_2_x0286 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_1_x0285 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_6_x0221 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_6_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_6_1_x0285 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0284 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_6_x0220 {Type I LastRead 5 FirstWrite -1}}
	kernel0_x0_Loop_C_drain_IO_L1_out_boundary_wrapper_7_x0_loop_1_proc26 {
		fifo_C_drain_C_drain_IO_L1_out_7_7_x0 {Type O LastRead -1 FirstWrite 5}
		data_split_V_14 {Type IO LastRead 11 FirstWrite 6}
		fifo_C_drain_PE_7_7_x0 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_7_x0299 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_6_x0298 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_7_x0234 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_6_x0298 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_5_x0297 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_7_x0233 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_5_x0297 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_4_x0296 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_7_x0232 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_4_x0296 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_3_x0295 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_7_x0231 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_3_x0295 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_2_x0294 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_7_x0230 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_2_x0294 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_1_x0293 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_7_x0229 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L1_out_wrapper_7_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_7_1_x0293 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_7_0_x0292 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_7_x0228 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0307 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_C_drain_IO_L1_out_7_0_x0292 {Type I LastRead 5 FirstWrite -1}}
	C_drain_IO_L2_out_6_x0 {
		fifo_C_drain_C_drain_IO_L2_out_7_x0307 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_6_x0306 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_6_0_x0284 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_5_x0 {
		fifo_C_drain_C_drain_IO_L2_out_6_x0306 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_5_x0305 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_5_0_x0276 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_4_x0 {
		fifo_C_drain_C_drain_IO_L2_out_5_x0305 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_4_x0304 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_4_0_x0268 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_3_x0 {
		fifo_C_drain_C_drain_IO_L2_out_4_x0304 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_3_x0303 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_3_0_x0260 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_2_x0 {
		fifo_C_drain_C_drain_IO_L2_out_3_x0303 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_2_x0302 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_2_0_x0252 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_1_x0 {
		fifo_C_drain_C_drain_IO_L2_out_2_x0302 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_1_x0301 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0244 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L2_out_0_x0 {
		fifo_C_drain_C_drain_IO_L2_out_1_x0301 {Type I LastRead 6 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x0300 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0236 {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L3_out_x0 {
		fifo_C_drain_out {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_local_in {Type I LastRead 6 FirstWrite -1}}
	C_drain_IO_L3_out_serialize_x0 {
		fifo_C_drain_C_drain_IO_L3_out_serialize_x011 {Type I LastRead 3 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129123223", "Max" : "129123223"}
	, {"Name" : "Interval", "Min" : "129122850", "Max" : "129122850"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_B { m_axi {  { m_axi_gmem_B_AWVALID VALID 1 1 }  { m_axi_gmem_B_AWREADY READY 0 1 }  { m_axi_gmem_B_AWADDR ADDR 1 64 }  { m_axi_gmem_B_AWID ID 1 1 }  { m_axi_gmem_B_AWLEN LEN 1 32 }  { m_axi_gmem_B_AWSIZE SIZE 1 3 }  { m_axi_gmem_B_AWBURST BURST 1 2 }  { m_axi_gmem_B_AWLOCK LOCK 1 2 }  { m_axi_gmem_B_AWCACHE CACHE 1 4 }  { m_axi_gmem_B_AWPROT PROT 1 3 }  { m_axi_gmem_B_AWQOS QOS 1 4 }  { m_axi_gmem_B_AWREGION REGION 1 4 }  { m_axi_gmem_B_AWUSER USER 1 1 }  { m_axi_gmem_B_WVALID VALID 1 1 }  { m_axi_gmem_B_WREADY READY 0 1 }  { m_axi_gmem_B_WDATA DATA 1 512 }  { m_axi_gmem_B_WSTRB STRB 1 64 }  { m_axi_gmem_B_WLAST LAST 1 1 }  { m_axi_gmem_B_WID ID 1 1 }  { m_axi_gmem_B_WUSER USER 1 1 }  { m_axi_gmem_B_ARVALID VALID 1 1 }  { m_axi_gmem_B_ARREADY READY 0 1 }  { m_axi_gmem_B_ARADDR ADDR 1 64 }  { m_axi_gmem_B_ARID ID 1 1 }  { m_axi_gmem_B_ARLEN LEN 1 32 }  { m_axi_gmem_B_ARSIZE SIZE 1 3 }  { m_axi_gmem_B_ARBURST BURST 1 2 }  { m_axi_gmem_B_ARLOCK LOCK 1 2 }  { m_axi_gmem_B_ARCACHE CACHE 1 4 }  { m_axi_gmem_B_ARPROT PROT 1 3 }  { m_axi_gmem_B_ARQOS QOS 1 4 }  { m_axi_gmem_B_ARREGION REGION 1 4 }  { m_axi_gmem_B_ARUSER USER 1 1 }  { m_axi_gmem_B_RVALID VALID 0 1 }  { m_axi_gmem_B_RREADY READY 1 1 }  { m_axi_gmem_B_RDATA DATA 0 512 }  { m_axi_gmem_B_RLAST LAST 0 1 }  { m_axi_gmem_B_RID ID 0 1 }  { m_axi_gmem_B_RUSER USER 0 1 }  { m_axi_gmem_B_RRESP RESP 0 2 }  { m_axi_gmem_B_BVALID VALID 0 1 }  { m_axi_gmem_B_BREADY READY 1 1 }  { m_axi_gmem_B_BRESP RESP 0 2 }  { m_axi_gmem_B_BID ID 0 1 }  { m_axi_gmem_B_BUSER USER 0 1 } } }
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_d0 mem_din 1 32 }  { A_q0 mem_dout 0 32 }  { A_we0 mem_we 1 1 }  { A_address1 mem_address 1 10 }  { A_ce1 mem_ce 1 1 }  { A_d1 mem_din 1 32 }  { A_q1 mem_dout 0 32 }  { A_we1 mem_we 1 1 } } }
	B { ap_none {  { B in_data 0 64 }  { B_ap_vld in_vld 0 1 } } }
	C { ap_memory {  { C_address0 mem_address 1 10 }  { C_ce0 mem_ce 1 1 }  { C_d0 mem_din 1 512 }  { C_q0 mem_dout 0 512 }  { C_we0 mem_we 1 1 }  { C_address1 mem_address 1 10 }  { C_ce1 mem_ce 1 1 }  { C_d1 mem_din 1 512 }  { C_q1 mem_dout 0 512 }  { C_we1 mem_we 1 1 } } }
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
	{ gmem_B int 512 regular {axi_master 0}  }
	{ A int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ B int 64 regular  }
	{ C int 512 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_B", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ m_axi_gmem_B_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_B_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_B_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_B_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_B_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_B_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_B_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_B_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_B_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_B_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_B_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_B_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_B_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_B_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_B_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_BUSER sc_in sc_lv 1 signal 0 } 
	{ A_address0 sc_out sc_lv 10 signal 1 } 
	{ A_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_d0 sc_out sc_lv 32 signal 1 } 
	{ A_q0 sc_in sc_lv 32 signal 1 } 
	{ A_we0 sc_out sc_logic 1 signal 1 } 
	{ A_address1 sc_out sc_lv 10 signal 1 } 
	{ A_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_d1 sc_out sc_lv 32 signal 1 } 
	{ A_q1 sc_in sc_lv 32 signal 1 } 
	{ A_we1 sc_out sc_logic 1 signal 1 } 
	{ B sc_in sc_lv 64 signal 2 } 
	{ C_address0 sc_out sc_lv 10 signal 3 } 
	{ C_ce0 sc_out sc_logic 1 signal 3 } 
	{ C_d0 sc_out sc_lv 512 signal 3 } 
	{ C_q0 sc_in sc_lv 512 signal 3 } 
	{ C_we0 sc_out sc_logic 1 signal 3 } 
	{ C_address1 sc_out sc_lv 10 signal 3 } 
	{ C_ce1 sc_out sc_logic 1 signal 3 } 
	{ C_d1 sc_out sc_lv 512 signal 3 } 
	{ C_q1 sc_in sc_lv 512 signal 3 } 
	{ C_we1 sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ B_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem_B_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_B_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_B_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_B_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_B_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_B_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_B_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_B_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_B_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_B_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_B_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_B_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_B_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_B_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_B_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_B_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_B", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_B_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_B", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_B_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_B_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_B_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_B_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_B_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_B_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_B_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_B_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_B_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_B_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_B_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_B_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_B_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_B_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_B_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_B_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_B_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_B_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_B_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_B", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_B_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_B_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_B_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_B_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_B_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_B_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_B_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_B", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_B_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_B_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_B", "role": "BUSER" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "B", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B", "role": "default" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "d1" }} , 
 	{ "name": "C_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "C", "role": "q1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "B_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "9", "12", "15", "18", "21", "24", "27", "30", "31", "32", "35", "38", "41", "44", "47", "50", "53", "56", "61", "66", "71", "76", "81", "86", "91", "96", "101", "106", "111", "116", "121", "126", "131", "136", "141", "146", "151", "156", "161", "166", "171", "176", "181", "186", "191", "196", "201", "206", "211", "216", "221", "226", "231", "236", "241", "246", "251", "256", "261", "266", "271", "276", "281", "286", "291", "296", "301", "306", "311", "316", "321", "326", "331", "336", "341", "346", "351", "356", "361", "366", "371", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "395", "398", "401", "404", "407", "410", "413", "416", "419", "422", "425", "428", "431", "434", "437", "440", "443", "446", "449", "452", "455", "458", "461", "464", "467", "470", "473", "476", "479", "482", "485", "488", "491", "494", "497", "500", "503", "506", "509", "512", "515", "518", "521", "524", "527", "530", "533", "536", "539", "542", "545", "548", "551", "554", "557", "560", "563", "566", "569", "572", "575", "578", "581", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "877", "878", "879", "880", "881", "882", "883", "884", "885", "886", "887", "888", "889", "890", "891", "892", "893", "894", "895"],
		"CDFG" : "kernel0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129123223", "EstimateLatencyMax" : "129123223",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x0_entry9_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x0_U0"},
			{"ID" : "30", "Name" : "B_IO_L3_in_serialize_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "376", "Name" : "A_PE_dummy_in_0_x0_U0"},
			{"ID" : "377", "Name" : "A_PE_dummy_in_1_x0_U0"},
			{"ID" : "378", "Name" : "A_PE_dummy_in_2_x0_U0"},
			{"ID" : "379", "Name" : "A_PE_dummy_in_3_x0_U0"},
			{"ID" : "380", "Name" : "A_PE_dummy_in_4_x0_U0"},
			{"ID" : "381", "Name" : "A_PE_dummy_in_5_x0_U0"},
			{"ID" : "382", "Name" : "A_PE_dummy_in_6_x0_U0"},
			{"ID" : "383", "Name" : "A_PE_dummy_in_7_x0_U0"},
			{"ID" : "384", "Name" : "B_PE_dummy_in_0_x0_U0"},
			{"ID" : "385", "Name" : "B_PE_dummy_in_1_x0_U0"},
			{"ID" : "386", "Name" : "B_PE_dummy_in_2_x0_U0"},
			{"ID" : "387", "Name" : "B_PE_dummy_in_3_x0_U0"},
			{"ID" : "388", "Name" : "B_PE_dummy_in_4_x0_U0"},
			{"ID" : "389", "Name" : "B_PE_dummy_in_5_x0_U0"},
			{"ID" : "390", "Name" : "B_PE_dummy_in_6_x0_U0"},
			{"ID" : "391", "Name" : "B_PE_dummy_in_7_x0_U0"},
			{"ID" : "593", "Name" : "C_drain_IO_L3_out_serialize_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "B_IO_L3_in_serialize_x0_U0", "Port" : "gmem_B"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x0_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "593", "SubInstance" : "C_drain_IO_L3_out_serialize_x0_U0", "Port" : "C"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry9_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry9",
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
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry19_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry19",
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
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "A_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048577", "EstimateLatencyMax" : "1048577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L3_in_serialize_x01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L3_in_serialize_x01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0.add_20ns_20ns_20_1_1_U16", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["7", "8"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x05", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x020_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_ping_V_0_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_pong_V_0_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["10", "11"],
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x029_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_ping_V_0_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_pong_V_0_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["13", "14"],
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x038_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_ping_V_0_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_pong_V_0_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["16", "17"],
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x047_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0.local_A_ping_V_0_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_3_x0_U0.local_A_pong_V_0_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["19", "20"],
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "216", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0.local_A_ping_V_0_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_4_x0_U0.local_A_pong_V_0_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["22", "23"],
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0.local_A_ping_V_0_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_5_x0_U0.local_A_pong_V_0_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["25", "26"],
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x074_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0.local_A_ping_V_0_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_6_x0_U0.local_A_pong_V_0_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["28", "29"],
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "336", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_ping_V_0_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_0_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1572935", "EstimateLatencyMax" : "1572935",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_B_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_B_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["33", "34"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_ping_V_0_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_pong_V_0_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["36", "37"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_ping_V_0_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_pong_V_0_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["39", "40"],
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
			{"Name" : "fifo_B_B_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_ping_V_0_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_pong_V_0_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["42", "43"],
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
			{"Name" : "fifo_B_B_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_ping_V_0_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_pong_V_0_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["45", "46"],
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
			{"Name" : "fifo_B_B_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_ping_V_0_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_pong_V_0_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["48", "49"],
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
			{"Name" : "fifo_B_B_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_ping_V_0_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_pong_V_0_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["51", "52"],
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
			{"Name" : "fifo_B_B_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_ping_V_0_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_pong_V_0_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["54", "55"],
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
			{"Name" : "fifo_B_B_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_ping_V_0_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_0_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["57", "58", "59", "60"],
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
			{"Name" : "fifo_A_PE_0_0_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_A_0_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_B_0_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_C_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U74", "Parent" : "56"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["62", "63", "64", "65"],
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
			{"Name" : "fifo_A_PE_0_1_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "437", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_A_0_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_B_0_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_C_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U83", "Parent" : "61"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["67", "68", "69", "70"],
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
			{"Name" : "fifo_A_PE_0_2_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "461", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_A_0_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_B_0_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_C_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U89", "Parent" : "66"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["72", "73", "74", "75"],
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
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_A_0_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_B_0_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_C_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U95", "Parent" : "71"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["77", "78", "79", "80"],
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
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_A_0_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_B_0_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_C_U", "Parent" : "76"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U101", "Parent" : "76"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["82", "83", "84", "85"],
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
			{"Name" : "fifo_A_PE_0_5_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_A_0_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_B_0_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_C_U", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U107", "Parent" : "81"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["87", "88", "89", "90"],
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
			{"Name" : "fifo_A_PE_0_6_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "557", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_A_0_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_B_0_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_C_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U113", "Parent" : "86"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0", "Parent" : "0", "Child" : ["92", "93", "94", "95"],
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
			{"Name" : "fifo_A_PE_0_7_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "376", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "131", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_A_0_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_B_0_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_C_U", "Parent" : "91"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U119", "Parent" : "91"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["97", "98", "99", "100"],
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
			{"Name" : "fifo_A_PE_1_0_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "410", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_A_0_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_B_0_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_C_U", "Parent" : "96"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U125", "Parent" : "96"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["102", "103", "104", "105"],
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
			{"Name" : "fifo_A_PE_1_1_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_A_0_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_B_0_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_C_U", "Parent" : "101"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U131", "Parent" : "101"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["107", "108", "109", "110"],
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
			{"Name" : "fifo_A_PE_1_2_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "146", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_A_0_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_B_0_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_C_U", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U137", "Parent" : "106"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["112", "113", "114", "115"],
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
			{"Name" : "fifo_A_PE_1_3_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "482", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_A_0_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_B_0_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_C_U", "Parent" : "111"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U143", "Parent" : "111"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["117", "118", "119", "120"],
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
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_A_0_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_B_0_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_C_U", "Parent" : "116"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U149", "Parent" : "116"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["122", "123", "124", "125"],
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
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_A_0_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_B_0_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_C_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U155", "Parent" : "121"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["127", "128", "129", "130"],
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
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "131", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "554", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_A_0_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_B_0_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_C_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U161", "Parent" : "126"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0", "Parent" : "0", "Child" : ["132", "133", "134", "135"],
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
			{"Name" : "fifo_A_PE_1_7_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "377", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_A_0_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_B_0_U", "Parent" : "131"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_C_U", "Parent" : "131"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U167", "Parent" : "131"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["137", "138", "139", "140"],
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
			{"Name" : "fifo_A_PE_2_0_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_A_0_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_B_0_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_C_U", "Parent" : "136"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U173", "Parent" : "136"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["142", "143", "144", "145"],
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
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "146", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_A_0_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_B_0_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_C_U", "Parent" : "141"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U179", "Parent" : "141"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["147", "148", "149", "150"],
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
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "186", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "455", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_A_0_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_B_0_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_C_U", "Parent" : "146"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U185", "Parent" : "146"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["152", "153", "154", "155"],
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
			{"Name" : "fifo_A_PE_2_3_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "146", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_A_0_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_B_0_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_C_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U191", "Parent" : "151"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["157", "158", "159", "160"],
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
			{"Name" : "fifo_A_PE_2_4_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_A_0_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_B_0_U", "Parent" : "156"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_C_U", "Parent" : "156"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U197", "Parent" : "156"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["162", "163", "164", "165"],
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
			{"Name" : "fifo_A_PE_2_5_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "156", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_A_0_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_B_0_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_C_U", "Parent" : "161"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U203", "Parent" : "161"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["167", "168", "169", "170"],
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
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "551", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_A_0_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_B_0_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_C_U", "Parent" : "166"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U209", "Parent" : "166"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0", "Parent" : "0", "Child" : ["172", "173", "174", "175"],
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
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "378", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_A_0_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_B_0_U", "Parent" : "171"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_C_U", "Parent" : "171"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U215", "Parent" : "171"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["177", "178", "179", "180"],
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
			{"Name" : "fifo_A_PE_3_0_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "216", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "404", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_A_0_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_B_0_U", "Parent" : "176"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_C_U", "Parent" : "176"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U221", "Parent" : "176"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["182", "183", "184", "185"],
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
			{"Name" : "fifo_A_PE_3_1_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "186", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "221", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "428", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_A_0_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_B_0_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_C_U", "Parent" : "181"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U227", "Parent" : "181"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["187", "188", "189", "190"],
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
			{"Name" : "fifo_A_PE_3_2_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "146", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_A_0_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_B_0_U", "Parent" : "186"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_C_U", "Parent" : "186"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U233", "Parent" : "186"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["192", "193", "194", "195"],
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
			{"Name" : "fifo_A_PE_3_3_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "476", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_A_0_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_B_0_U", "Parent" : "191"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_C_U", "Parent" : "191"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U239", "Parent" : "191"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["197", "198", "199", "200"],
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
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "156", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "500", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_A_0_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_B_0_U", "Parent" : "196"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_C_U", "Parent" : "196"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U245", "Parent" : "196"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["202", "203", "204", "205"],
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
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "524", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_A_0_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_B_0_U", "Parent" : "201"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_C_U", "Parent" : "201"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U251", "Parent" : "201"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["207", "208", "209", "210"],
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
			{"Name" : "fifo_A_PE_3_6_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "246", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "548", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_A_0_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_B_0_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_C_U", "Parent" : "206"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U257", "Parent" : "206"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0", "Parent" : "0", "Child" : ["212", "213", "214", "215"],
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
			{"Name" : "fifo_A_PE_3_7_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "206", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "379", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "251", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0223", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_A_0_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_B_0_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_C_U", "Parent" : "211"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U263", "Parent" : "211"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["217", "218", "219", "220"],
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
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "221", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "401", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_A_0_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_B_0_U", "Parent" : "216"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.local_C_U", "Parent" : "216"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U269", "Parent" : "216"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["222", "223", "224", "225"],
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
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "216", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "261", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "425", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_A_0_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_B_0_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.local_C_U", "Parent" : "221"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U275", "Parent" : "221"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["227", "228", "229", "230"],
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
			{"Name" : "fifo_A_PE_4_2_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "221", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_3_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "449", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_A_0_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_B_0_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.local_C_U", "Parent" : "226"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U281", "Parent" : "226"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0", "Parent" : "0", "Child" : ["232", "233", "234", "235"],
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
			{"Name" : "fifo_A_PE_4_3_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_A_0_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_B_0_U", "Parent" : "231"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.local_C_U", "Parent" : "231"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U287", "Parent" : "231"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0", "Parent" : "0", "Child" : ["237", "238", "239", "240"],
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
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "276", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_A_0_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_B_0_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.local_C_U", "Parent" : "236"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U293", "Parent" : "236"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0", "Parent" : "0", "Child" : ["242", "243", "244", "245"],
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
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "246", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "281", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_A_0_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_B_0_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.local_C_U", "Parent" : "241"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U299", "Parent" : "241"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0", "Parent" : "0", "Child" : ["247", "248", "249", "250"],
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
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "241", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "251", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "206", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_A_0_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_B_0_U", "Parent" : "246"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.local_C_U", "Parent" : "246"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U305", "Parent" : "246"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0", "Parent" : "0", "Child" : ["252", "253", "254", "255"],
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
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "246", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_8_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "380", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "211", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "291", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_A_0_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_B_0_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.local_C_U", "Parent" : "251"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_4_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U311", "Parent" : "251"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["257", "258", "259", "260"],
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
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "261", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "216", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "398", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_A_0_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_B_0_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.local_C_U", "Parent" : "256"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U317", "Parent" : "256"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["262", "263", "264", "265"],
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
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "221", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "301", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "422", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_A_0_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_B_0_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.local_C_U", "Parent" : "261"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U323", "Parent" : "261"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["267", "268", "269", "270"],
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
			{"Name" : "fifo_A_PE_5_2_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "261", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_3_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "306", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_A_0_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_B_0_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.local_C_U", "Parent" : "266"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U329", "Parent" : "266"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0", "Parent" : "0", "Child" : ["272", "273", "274", "275"],
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
			{"Name" : "fifo_A_PE_5_3_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_4_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "276", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "311", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "470", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_A_0_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_B_0_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.local_C_U", "Parent" : "271"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U335", "Parent" : "271"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0", "Parent" : "0", "Child" : ["277", "278", "279", "280"],
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
			{"Name" : "fifo_A_PE_5_4_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "271", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_5_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "281", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "494", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_A_0_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_B_0_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.local_C_U", "Parent" : "276"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U341", "Parent" : "276"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0", "Parent" : "0", "Child" : ["282", "283", "284", "285"],
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
			{"Name" : "fifo_A_PE_5_5_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "276", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_6_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "241", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "321", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "518", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_A_0_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_B_0_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.local_C_U", "Parent" : "281"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U347", "Parent" : "281"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0", "Parent" : "0", "Child" : ["287", "288", "289", "290"],
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
			{"Name" : "fifo_A_PE_5_6_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "281", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_7_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "291", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "246", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "326", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "542", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_A_0_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_B_0_U", "Parent" : "286"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.local_C_U", "Parent" : "286"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U353", "Parent" : "286"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0", "Parent" : "0", "Child" : ["292", "293", "294", "295"],
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
			{"Name" : "fifo_A_PE_5_7_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_8_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "381", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "331", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "566", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_A_0_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_B_0_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.local_C_U", "Parent" : "291"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_5_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U359", "Parent" : "291"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["297", "298", "299", "300"],
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
			{"Name" : "fifo_A_PE_6_0_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "301", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "336", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "395", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_A_0_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_B_0_U", "Parent" : "296"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.local_C_U", "Parent" : "296"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U365", "Parent" : "296"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["302", "303", "304", "305"],
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
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "306", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "261", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "419", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_A_0_U", "Parent" : "301"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_B_0_U", "Parent" : "301"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.local_C_U", "Parent" : "301"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U371", "Parent" : "301"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["307", "308", "309", "310"],
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
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "301", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "311", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "346", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_A_0_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_B_0_U", "Parent" : "306"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.local_C_U", "Parent" : "306"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U377", "Parent" : "306"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0", "Parent" : "0", "Child" : ["312", "313", "314", "315"],
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
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "306", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "271", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_A_0_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_B_0_U", "Parent" : "311"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.local_C_U", "Parent" : "311"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U383", "Parent" : "311"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0", "Parent" : "0", "Child" : ["317", "318", "319", "320"],
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
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "311", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "321", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "276", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "356", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "491", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_A_0_U", "Parent" : "316"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_B_0_U", "Parent" : "316"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.local_C_U", "Parent" : "316"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U389", "Parent" : "316"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0", "Parent" : "0", "Child" : ["322", "323", "324", "325"],
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
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "326", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "281", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "361", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_A_0_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_B_0_U", "Parent" : "321"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.local_C_U", "Parent" : "321"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U395", "Parent" : "321"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0", "Parent" : "0", "Child" : ["327", "328", "329", "330"],
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
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "321", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "331", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "366", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_A_0_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_B_0_U", "Parent" : "326"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.local_C_U", "Parent" : "326"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U401", "Parent" : "326"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0", "Parent" : "0", "Child" : ["332", "333", "334", "335"],
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
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "326", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_8_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "382", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "291", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "371", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_A_0_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_B_0_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.local_C_U", "Parent" : "331"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_6_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U407", "Parent" : "331"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["337", "338", "339", "340"],
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
			{"Name" : "fifo_A_PE_7_0_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "392", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_A_0_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_B_0_U", "Parent" : "336"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.local_C_U", "Parent" : "336"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U413", "Parent" : "336"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["342", "343", "344", "345"],
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
			{"Name" : "fifo_A_PE_7_1_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "336", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "346", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "301", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_A_0_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_B_0_U", "Parent" : "341"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.local_C_U", "Parent" : "341"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U419", "Parent" : "341"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["347", "348", "349", "350"],
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
			{"Name" : "fifo_A_PE_7_2_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_3_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "306", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_2_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "386", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_A_0_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_B_0_U", "Parent" : "346"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.local_C_U", "Parent" : "346"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U425", "Parent" : "346"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0", "Parent" : "0", "Child" : ["352", "353", "354", "355"],
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
			{"Name" : "fifo_A_PE_7_3_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "346", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_4_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "356", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "311", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_3_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "464", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_A_0_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_B_0_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.local_C_U", "Parent" : "351"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U431", "Parent" : "351"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0", "Parent" : "0", "Child" : ["357", "358", "359", "360"],
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
			{"Name" : "fifo_A_PE_7_4_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "351", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_5_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "361", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_4_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "388", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "488", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_A_0_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_B_0_U", "Parent" : "356"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.local_C_U", "Parent" : "356"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U437", "Parent" : "356"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0", "Parent" : "0", "Child" : ["362", "363", "364", "365"],
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
			{"Name" : "fifo_A_PE_7_5_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "356", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_6_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "366", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "321", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_5_x0145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "389", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "512", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_A_0_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_B_0_U", "Parent" : "361"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.local_C_U", "Parent" : "361"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U443", "Parent" : "361"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0", "Parent" : "0", "Child" : ["367", "368", "369", "370"],
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
			{"Name" : "fifo_A_PE_7_6_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "361", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_7_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "371", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "326", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_6_x0154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "390", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "536", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_A_0_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_B_0_U", "Parent" : "366"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.local_C_U", "Parent" : "366"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U449", "Parent" : "366"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0", "Parent" : "0", "Child" : ["372", "373", "374", "375"],
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
			{"Name" : "fifo_A_PE_7_7_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "366", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "383", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x091_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "331", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x0163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "391", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "560", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_A_0_U", "Parent" : "371"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_B_0_U", "Parent" : "371"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.local_C_U", "Parent" : "371"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_7_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U455", "Parent" : "371"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_0_8_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x028_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_1_8_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x037_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_2_8_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x046_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_3_8_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "211", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x055_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_4_8_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x064_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_5_8_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "291", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x073_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_6_8_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "331", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x082_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_7_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_7_8_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "371", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_0_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "336", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_1_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_2_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "346", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_3_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "351", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_4_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "356", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_5_x0145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "361", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_6_x0154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "366", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_8_7_x0163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "371", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0", "Parent" : "0", "Child" : ["393", "394"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "395", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "336", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0.local_C_V_0_U", "Parent" : "392"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0.data_split_V_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["396", "397"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "392", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "398", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0.local_C_V_0_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_6_x0_U0.data_split_V_U", "Parent" : "395"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["399", "400"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "395", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "401", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0.local_C_V_0_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_5_x0_U0.data_split_V_U", "Parent" : "398"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["402", "403"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "398", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "404", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "216", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0.local_C_V_0_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_4_x0_U0.data_split_V_U", "Parent" : "401"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["405", "406"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "401", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0.local_C_V_0_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_3_x0_U0.data_split_V_U", "Parent" : "404"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["408", "409"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "404", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "410", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0.local_C_V_0_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_2_x0_U0.data_split_V_U", "Parent" : "407"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["411", "412"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "407", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0.local_C_V_0_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_1_x0_U0.data_split_V_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["414", "415"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "410", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0.local_C_V_0_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_0_0_x0_U0.data_split_V_U", "Parent" : "413"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0", "Parent" : "0", "Child" : ["417", "418"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "419", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0.local_C_V_0_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0.data_split_V_U", "Parent" : "416"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["420", "421"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "416", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "422", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "301", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0.local_C_V_0_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_6_x0_U0.data_split_V_U", "Parent" : "419"},
	{"ID" : "422", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["423", "424"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "419", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "425", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "261", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0.local_C_V_0_U", "Parent" : "422"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_5_x0_U0.data_split_V_U", "Parent" : "422"},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["426", "427"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "422", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "428", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "221", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0.local_C_V_0_U", "Parent" : "425"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_4_x0_U0.data_split_V_U", "Parent" : "425"},
	{"ID" : "428", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["429", "430"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "425", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0.local_C_V_0_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_3_x0_U0.data_split_V_U", "Parent" : "428"},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["432", "433"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "428", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0.local_C_V_0_U", "Parent" : "431"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_2_x0_U0.data_split_V_U", "Parent" : "431"},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["435", "436"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "431", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "437", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0.local_C_V_0_U", "Parent" : "434"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_1_x0_U0.data_split_V_U", "Parent" : "434"},
	{"ID" : "437", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["438", "439"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "434", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0.local_C_V_0_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_1_0_x0_U0.data_split_V_U", "Parent" : "437"},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0", "Parent" : "0", "Child" : ["441", "442"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "346", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0.local_C_V_0_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0.data_split_V_U", "Parent" : "440"},
	{"ID" : "443", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["444", "445"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "306", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0.local_C_V_0_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_6_x0_U0.data_split_V_U", "Parent" : "443"},
	{"ID" : "446", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["447", "448"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "443", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "449", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0.local_C_V_0_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_5_x0_U0.data_split_V_U", "Parent" : "446"},
	{"ID" : "449", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["450", "451"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0.local_C_V_0_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_4_x0_U0.data_split_V_U", "Parent" : "449"},
	{"ID" : "452", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["453", "454"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "449", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "455", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0.local_C_V_0_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_3_x0_U0.data_split_V_U", "Parent" : "452"},
	{"ID" : "455", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["456", "457"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "146", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0.local_C_V_0_U", "Parent" : "455"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_2_x0_U0.data_split_V_U", "Parent" : "455"},
	{"ID" : "458", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["459", "460"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "455", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "461", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0.local_C_V_0_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_1_x0_U0.data_split_V_U", "Parent" : "458"},
	{"ID" : "461", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["462", "463"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "589", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0.local_C_V_0_U", "Parent" : "461"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_2_0_x0_U0.data_split_V_U", "Parent" : "461"},
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0", "Parent" : "0", "Child" : ["465", "466"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "351", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0.local_C_V_0_U", "Parent" : "464"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0.data_split_V_U", "Parent" : "464"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["468", "469"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "464", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "470", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "311", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0.local_C_V_0_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_6_x0_U0.data_split_V_U", "Parent" : "467"},
	{"ID" : "470", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["471", "472"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "271", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0.local_C_V_0_U", "Parent" : "470"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_5_x0_U0.data_split_V_U", "Parent" : "470"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["474", "475"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "470", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "476", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0.local_C_V_0_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_4_x0_U0.data_split_V_U", "Parent" : "473"},
	{"ID" : "476", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["477", "478"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0.local_C_V_0_U", "Parent" : "476"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_3_x0_U0.data_split_V_U", "Parent" : "476"},
	{"ID" : "479", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["480", "481"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "476", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "482", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0.local_C_V_0_U", "Parent" : "479"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_2_x0_U0.data_split_V_U", "Parent" : "479"},
	{"ID" : "482", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["483", "484"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "479", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0.local_C_V_0_U", "Parent" : "482"},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_1_x0_U0.data_split_V_U", "Parent" : "482"},
	{"ID" : "485", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["486", "487"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "482", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "588", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0.local_C_V_0_U", "Parent" : "485"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_3_0_x0_U0.data_split_V_U", "Parent" : "485"},
	{"ID" : "488", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0", "Parent" : "0", "Child" : ["489", "490"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "491", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "356", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0.local_C_V_0_U", "Parent" : "488"},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0.data_split_V_U", "Parent" : "488"},
	{"ID" : "491", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0", "Parent" : "0", "Child" : ["492", "493"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "488", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "494", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0.local_C_V_0_U", "Parent" : "491"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_6_x0_U0.data_split_V_U", "Parent" : "491"},
	{"ID" : "494", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0", "Parent" : "0", "Child" : ["495", "496"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "491", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "276", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0.local_C_V_0_U", "Parent" : "494"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_5_x0_U0.data_split_V_U", "Parent" : "494"},
	{"ID" : "497", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0", "Parent" : "0", "Child" : ["498", "499"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "494", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "500", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0.local_C_V_0_U", "Parent" : "497"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_4_x0_U0.data_split_V_U", "Parent" : "497"},
	{"ID" : "500", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0", "Parent" : "0", "Child" : ["501", "502"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "497", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0.local_C_V_0_U", "Parent" : "500"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_3_x0_U0.data_split_V_U", "Parent" : "500"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["504", "505"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "500", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "156", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0.local_C_V_0_U", "Parent" : "503"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_2_x0_U0.data_split_V_U", "Parent" : "503"},
	{"ID" : "506", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["507", "508"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "503", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0.local_C_V_0_U", "Parent" : "506"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_1_x0_U0.data_split_V_U", "Parent" : "506"},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["510", "511"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "506", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0.local_C_V_0_U", "Parent" : "509"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_4_0_x0_U0.data_split_V_U", "Parent" : "509"},
	{"ID" : "512", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0", "Parent" : "0", "Child" : ["513", "514"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "361", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0.local_C_V_0_U", "Parent" : "512"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0.data_split_V_U", "Parent" : "512"},
	{"ID" : "515", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0", "Parent" : "0", "Child" : ["516", "517"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "512", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "518", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "321", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0.local_C_V_0_U", "Parent" : "515"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_6_x0_U0.data_split_V_U", "Parent" : "515"},
	{"ID" : "518", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0", "Parent" : "0", "Child" : ["519", "520"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "515", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "281", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0.local_C_V_0_U", "Parent" : "518"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_5_x0_U0.data_split_V_U", "Parent" : "518"},
	{"ID" : "521", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0", "Parent" : "0", "Child" : ["522", "523"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "518", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "524", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "241", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0.local_C_V_0_U", "Parent" : "521"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_4_x0_U0.data_split_V_U", "Parent" : "521"},
	{"ID" : "524", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0", "Parent" : "0", "Child" : ["525", "526"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "521", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0.local_C_V_0_U", "Parent" : "524"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_3_x0_U0.data_split_V_U", "Parent" : "524"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["528", "529"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "524", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0.local_C_V_0_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_2_x0_U0.data_split_V_U", "Parent" : "527"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["531", "532"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "527", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0.local_C_V_0_U", "Parent" : "530"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_1_x0_U0.data_split_V_U", "Parent" : "530"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["534", "535"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "530", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "586", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0.local_C_V_0_U", "Parent" : "533"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_5_0_x0_U0.data_split_V_U", "Parent" : "533"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0", "Parent" : "0", "Child" : ["537", "538"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "366", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0.local_C_V_0_U", "Parent" : "536"},
	{"ID" : "538", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0.data_split_V_U", "Parent" : "536"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0", "Parent" : "0", "Child" : ["540", "541"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "536", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "542", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "326", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0.local_C_V_0_U", "Parent" : "539"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_6_x0_U0.data_split_V_U", "Parent" : "539"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0", "Parent" : "0", "Child" : ["543", "544"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "539", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0217", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0.local_C_V_0_U", "Parent" : "542"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_5_x0_U0.data_split_V_U", "Parent" : "542"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0", "Parent" : "0", "Child" : ["546", "547"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "542", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "548", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "246", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0.local_C_V_0_U", "Parent" : "545"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_4_x0_U0.data_split_V_U", "Parent" : "545"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0", "Parent" : "0", "Child" : ["549", "550"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "545", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "551", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "206", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0.local_C_V_0_U", "Parent" : "548"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_3_x0_U0.data_split_V_U", "Parent" : "548"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["552", "553"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "548", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "554", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0.local_C_V_0_U", "Parent" : "551"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_2_x0_U0.data_split_V_U", "Parent" : "551"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["555", "556"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "551", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "557", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0.local_C_V_0_U", "Parent" : "554"},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_1_x0_U0.data_split_V_U", "Parent" : "554"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["558", "559"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "554", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "585", "DependentChan" : "878", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0.local_C_V_0_U", "Parent" : "557"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_6_0_x0_U0.data_split_V_U", "Parent" : "557"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0", "Parent" : "0", "Child" : ["561", "562"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "879", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0227", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "371", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0.local_C_V_0_U", "Parent" : "560"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0.data_split_V_U", "Parent" : "560"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0", "Parent" : "0", "Child" : ["564", "565"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "560", "DependentChan" : "879", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "566", "DependentChan" : "880", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0226", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "331", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0.local_C_V_0_U", "Parent" : "563"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_6_x0_U0.data_split_V_U", "Parent" : "563"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0", "Parent" : "0", "Child" : ["567", "568"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "563", "DependentChan" : "880", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "881", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "291", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0.local_C_V_0_U", "Parent" : "566"},
	{"ID" : "568", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_5_x0_U0.data_split_V_U", "Parent" : "566"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0", "Parent" : "0", "Child" : ["570", "571"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "566", "DependentChan" : "881", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "882", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0.local_C_V_0_U", "Parent" : "569"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_4_x0_U0.data_split_V_U", "Parent" : "569"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0", "Parent" : "0", "Child" : ["573", "574"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "569", "DependentChan" : "882", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "883", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0223", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "211", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0.local_C_V_0_U", "Parent" : "572"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_3_x0_U0.data_split_V_U", "Parent" : "572"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["576", "577"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "572", "DependentChan" : "883", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "884", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0222", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0.local_C_V_0_U", "Parent" : "575"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_2_x0_U0.data_split_V_U", "Parent" : "575"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["579", "580"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "575", "DependentChan" : "884", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "885", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0221", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0.local_C_V_0_U", "Parent" : "578"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_1_x0_U0.data_split_V_U", "Parent" : "578"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["582", "583"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "578", "DependentChan" : "885", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "886", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0220", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "582", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0.local_C_V_0_U", "Parent" : "581"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L1_out_wrapper_7_0_x0_U0.data_split_V_U", "Parent" : "581"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_boundary_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "585", "DependentChan" : "887", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "886", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "584", "DependentChan" : "887", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "586", "DependentChan" : "888", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "557", "DependentChan" : "878", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "585", "DependentChan" : "888", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "889", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "533", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "586", "DependentChan" : "889", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "588", "DependentChan" : "890", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "509", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "587", "DependentChan" : "890", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "589", "DependentChan" : "891", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "588", "DependentChan" : "891", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "892", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "461", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "589", "DependentChan" : "892", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "893", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "437", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L2_out_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "590", "DependentChan" : "893", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0292", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "592", "DependentChan" : "894", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0292_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "593", "DependentChan" : "895", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "591", "DependentChan" : "894", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_serialize_x0_U0", "Parent" : "0", "Child" : ["594"],
		"CDFG" : "C_drain_IO_L3_out_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393217", "EstimateLatencyMax" : "393217",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L3_out_serialize_x03", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "592", "DependentChan" : "895", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L3_out_serialize_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_drain_IO_L3_out_serialize_x0_U0.mem_data_split_V_U", "Parent" : "593"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c1_U", "Parent" : "0"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c_U", "Parent" : "0"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "650", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "651", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x0_U", "Parent" : "0"},
	{"ID" : "653", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "654", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "665", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "666", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "667", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "668", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "669", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "670", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "671", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "673", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "675", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x0_U", "Parent" : "0"},
	{"ID" : "677", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "678", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "680", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "681", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "682", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "683", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "684", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "685", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "687", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "689", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "690", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "691", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "692", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "693", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "694", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "695", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "697", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "698", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "699", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "700", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x0_U", "Parent" : "0"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "702", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "704", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "706", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "707", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "708", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "709", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "710", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "711", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "712", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "713", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "714", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "715", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "716", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "717", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "718", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "719", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "720", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "721", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "722", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "723", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "724", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x0_U", "Parent" : "0"},
	{"ID" : "725", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "727", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "728", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "729", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "731", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "732", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "733", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "734", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "735", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "736", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "737", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "738", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "739", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "740", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "741", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "742", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "743", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "744", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "745", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "746", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "747", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "748", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_4_8_x0_U", "Parent" : "0"},
	{"ID" : "749", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "750", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "751", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "752", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "753", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_0_x0_U", "Parent" : "0"},
	{"ID" : "754", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "755", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "756", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_1_x0_U", "Parent" : "0"},
	{"ID" : "757", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "758", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "759", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_2_x0_U", "Parent" : "0"},
	{"ID" : "760", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "761", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "762", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_3_x0_U", "Parent" : "0"},
	{"ID" : "763", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "764", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "765", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_4_x0_U", "Parent" : "0"},
	{"ID" : "766", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "767", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "768", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_5_x0_U", "Parent" : "0"},
	{"ID" : "769", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "770", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "771", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_6_x0_U", "Parent" : "0"},
	{"ID" : "772", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_5_8_x0_U", "Parent" : "0"},
	{"ID" : "773", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "774", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_5_7_x0_U", "Parent" : "0"},
	{"ID" : "775", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "776", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "777", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_0_x0_U", "Parent" : "0"},
	{"ID" : "778", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "779", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "780", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_1_x0_U", "Parent" : "0"},
	{"ID" : "781", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "782", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "783", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_2_x0_U", "Parent" : "0"},
	{"ID" : "784", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "785", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "786", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_3_x0_U", "Parent" : "0"},
	{"ID" : "787", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "788", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "789", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_4_x0_U", "Parent" : "0"},
	{"ID" : "790", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "791", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "792", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_5_x0_U", "Parent" : "0"},
	{"ID" : "793", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "794", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "795", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_6_x0_U", "Parent" : "0"},
	{"ID" : "796", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_6_8_x0_U", "Parent" : "0"},
	{"ID" : "797", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "798", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_6_7_x0_U", "Parent" : "0"},
	{"ID" : "799", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "800", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_0_x0_U", "Parent" : "0"},
	{"ID" : "801", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_0_x0_U", "Parent" : "0"},
	{"ID" : "802", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "803", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_1_x0_U", "Parent" : "0"},
	{"ID" : "804", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_1_x0_U", "Parent" : "0"},
	{"ID" : "805", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "806", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_2_x0_U", "Parent" : "0"},
	{"ID" : "807", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_2_x0_U", "Parent" : "0"},
	{"ID" : "808", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "809", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_3_x0_U", "Parent" : "0"},
	{"ID" : "810", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_3_x0_U", "Parent" : "0"},
	{"ID" : "811", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "812", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_4_x0_U", "Parent" : "0"},
	{"ID" : "813", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_4_x0_U", "Parent" : "0"},
	{"ID" : "814", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "815", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_5_x0_U", "Parent" : "0"},
	{"ID" : "816", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_5_x0_U", "Parent" : "0"},
	{"ID" : "817", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "818", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_6_x0_U", "Parent" : "0"},
	{"ID" : "819", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_6_x0_U", "Parent" : "0"},
	{"ID" : "820", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_7_8_x0_U", "Parent" : "0"},
	{"ID" : "821", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_8_7_x0_U", "Parent" : "0"},
	{"ID" : "822", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_PE_7_7_x0_U", "Parent" : "0"},
	{"ID" : "823", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U", "Parent" : "0"},
	{"ID" : "824", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U", "Parent" : "0"},
	{"ID" : "825", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U", "Parent" : "0"},
	{"ID" : "826", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U", "Parent" : "0"},
	{"ID" : "827", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U", "Parent" : "0"},
	{"ID" : "828", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U", "Parent" : "0"},
	{"ID" : "829", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U", "Parent" : "0"},
	{"ID" : "830", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U", "Parent" : "0"},
	{"ID" : "831", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U", "Parent" : "0"},
	{"ID" : "832", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U", "Parent" : "0"},
	{"ID" : "833", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U", "Parent" : "0"},
	{"ID" : "834", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U", "Parent" : "0"},
	{"ID" : "835", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U", "Parent" : "0"},
	{"ID" : "836", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U", "Parent" : "0"},
	{"ID" : "837", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U", "Parent" : "0"},
	{"ID" : "838", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U", "Parent" : "0"},
	{"ID" : "839", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_7_x0_U", "Parent" : "0"},
	{"ID" : "840", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_6_x0_U", "Parent" : "0"},
	{"ID" : "841", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_5_x0_U", "Parent" : "0"},
	{"ID" : "842", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_4_x0_U", "Parent" : "0"},
	{"ID" : "843", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_3_x0_U", "Parent" : "0"},
	{"ID" : "844", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_2_x0_U", "Parent" : "0"},
	{"ID" : "845", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_1_x0_U", "Parent" : "0"},
	{"ID" : "846", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_2_0_x0_U", "Parent" : "0"},
	{"ID" : "847", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_7_x0_U", "Parent" : "0"},
	{"ID" : "848", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_6_x0_U", "Parent" : "0"},
	{"ID" : "849", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_5_x0_U", "Parent" : "0"},
	{"ID" : "850", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_4_x0_U", "Parent" : "0"},
	{"ID" : "851", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_3_x0_U", "Parent" : "0"},
	{"ID" : "852", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_2_x0_U", "Parent" : "0"},
	{"ID" : "853", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_1_x0_U", "Parent" : "0"},
	{"ID" : "854", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_3_0_x0_U", "Parent" : "0"},
	{"ID" : "855", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_7_x0_U", "Parent" : "0"},
	{"ID" : "856", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_6_x0_U", "Parent" : "0"},
	{"ID" : "857", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_5_x0_U", "Parent" : "0"},
	{"ID" : "858", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_4_x0_U", "Parent" : "0"},
	{"ID" : "859", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_3_x0_U", "Parent" : "0"},
	{"ID" : "860", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_2_x0_U", "Parent" : "0"},
	{"ID" : "861", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_1_x0_U", "Parent" : "0"},
	{"ID" : "862", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_4_0_x0_U", "Parent" : "0"},
	{"ID" : "863", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_7_x0_U", "Parent" : "0"},
	{"ID" : "864", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_6_x0_U", "Parent" : "0"},
	{"ID" : "865", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_5_x0_U", "Parent" : "0"},
	{"ID" : "866", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_4_x0_U", "Parent" : "0"},
	{"ID" : "867", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_3_x0_U", "Parent" : "0"},
	{"ID" : "868", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_2_x0_U", "Parent" : "0"},
	{"ID" : "869", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_1_x0_U", "Parent" : "0"},
	{"ID" : "870", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_5_0_x0_U", "Parent" : "0"},
	{"ID" : "871", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_7_x0_U", "Parent" : "0"},
	{"ID" : "872", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_6_x0_U", "Parent" : "0"},
	{"ID" : "873", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_5_x0_U", "Parent" : "0"},
	{"ID" : "874", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_4_x0_U", "Parent" : "0"},
	{"ID" : "875", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_3_x0_U", "Parent" : "0"},
	{"ID" : "876", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_2_x0_U", "Parent" : "0"},
	{"ID" : "877", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_1_x0_U", "Parent" : "0"},
	{"ID" : "878", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_6_0_x0_U", "Parent" : "0"},
	{"ID" : "879", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_7_x0_U", "Parent" : "0"},
	{"ID" : "880", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_6_x0_U", "Parent" : "0"},
	{"ID" : "881", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_5_x0_U", "Parent" : "0"},
	{"ID" : "882", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_4_x0_U", "Parent" : "0"},
	{"ID" : "883", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_3_x0_U", "Parent" : "0"},
	{"ID" : "884", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_2_x0_U", "Parent" : "0"},
	{"ID" : "885", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_1_x0_U", "Parent" : "0"},
	{"ID" : "886", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L1_out_7_0_x0_U", "Parent" : "0"},
	{"ID" : "887", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_7_x0_U", "Parent" : "0"},
	{"ID" : "888", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_6_x0_U", "Parent" : "0"},
	{"ID" : "889", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_5_x0_U", "Parent" : "0"},
	{"ID" : "890", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_4_x0_U", "Parent" : "0"},
	{"ID" : "891", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_3_x0_U", "Parent" : "0"},
	{"ID" : "892", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_2_x0_U", "Parent" : "0"},
	{"ID" : "893", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_1_x0_U", "Parent" : "0"},
	{"ID" : "894", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L2_out_0_x0_U", "Parent" : "0"},
	{"ID" : "895", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_drain_C_drain_IO_L3_out_serialize_x0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x0 {
		gmem_B {Type I LastRead 72 FirstWrite -1}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 4}}
	kernel0_x0_entry9 {
		B {Type I LastRead 0 FirstWrite -1}
		B_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x0_entry19 {
		B {Type I LastRead 0 FirstWrite -1}
		B_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x0 {
		fifo_A_A_IO_L3_in_serialize_x01 {Type O LastRead -1 FirstWrite 2}
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
		gmem_B {Type I LastRead 72 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 73}
		B {Type I LastRead 0 FirstWrite -1}}
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
		fifo_C_drain_C_drain_IO_L3_out_serialize_x03 {Type I LastRead 3 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129123223", "Max" : "129123223"}
	, {"Name" : "Interval", "Min" : "129122850", "Max" : "129122850"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_B { m_axi {  { m_axi_gmem_B_AWVALID VALID 1 1 }  { m_axi_gmem_B_AWREADY READY 0 1 }  { m_axi_gmem_B_AWADDR ADDR 1 64 }  { m_axi_gmem_B_AWID ID 1 1 }  { m_axi_gmem_B_AWLEN LEN 1 32 }  { m_axi_gmem_B_AWSIZE SIZE 1 3 }  { m_axi_gmem_B_AWBURST BURST 1 2 }  { m_axi_gmem_B_AWLOCK LOCK 1 2 }  { m_axi_gmem_B_AWCACHE CACHE 1 4 }  { m_axi_gmem_B_AWPROT PROT 1 3 }  { m_axi_gmem_B_AWQOS QOS 1 4 }  { m_axi_gmem_B_AWREGION REGION 1 4 }  { m_axi_gmem_B_AWUSER USER 1 1 }  { m_axi_gmem_B_WVALID VALID 1 1 }  { m_axi_gmem_B_WREADY READY 0 1 }  { m_axi_gmem_B_WDATA DATA 1 512 }  { m_axi_gmem_B_WSTRB STRB 1 64 }  { m_axi_gmem_B_WLAST LAST 1 1 }  { m_axi_gmem_B_WID ID 1 1 }  { m_axi_gmem_B_WUSER USER 1 1 }  { m_axi_gmem_B_ARVALID VALID 1 1 }  { m_axi_gmem_B_ARREADY READY 0 1 }  { m_axi_gmem_B_ARADDR ADDR 1 64 }  { m_axi_gmem_B_ARID ID 1 1 }  { m_axi_gmem_B_ARLEN LEN 1 32 }  { m_axi_gmem_B_ARSIZE SIZE 1 3 }  { m_axi_gmem_B_ARBURST BURST 1 2 }  { m_axi_gmem_B_ARLOCK LOCK 1 2 }  { m_axi_gmem_B_ARCACHE CACHE 1 4 }  { m_axi_gmem_B_ARPROT PROT 1 3 }  { m_axi_gmem_B_ARQOS QOS 1 4 }  { m_axi_gmem_B_ARREGION REGION 1 4 }  { m_axi_gmem_B_ARUSER USER 1 1 }  { m_axi_gmem_B_RVALID VALID 0 1 }  { m_axi_gmem_B_RREADY READY 1 1 }  { m_axi_gmem_B_RDATA DATA 0 512 }  { m_axi_gmem_B_RLAST LAST 0 1 }  { m_axi_gmem_B_RID ID 0 1 }  { m_axi_gmem_B_RUSER USER 0 1 }  { m_axi_gmem_B_RRESP RESP 0 2 }  { m_axi_gmem_B_BVALID VALID 0 1 }  { m_axi_gmem_B_BREADY READY 1 1 }  { m_axi_gmem_B_BRESP RESP 0 2 }  { m_axi_gmem_B_BID ID 0 1 }  { m_axi_gmem_B_BUSER USER 0 1 } } }
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_d0 mem_din 1 32 }  { A_q0 mem_dout 0 32 }  { A_we0 mem_we 1 1 }  { A_address1 mem_address 1 10 }  { A_ce1 mem_ce 1 1 }  { A_d1 mem_din 1 32 }  { A_q1 mem_dout 0 32 }  { A_we1 mem_we 1 1 } } }
	B { ap_none {  { B in_data 0 64 }  { B_ap_vld in_vld 0 1 } } }
	C { ap_memory {  { C_address0 mem_address 1 10 }  { C_ce0 mem_ce 1 1 }  { C_d0 mem_din 1 512 }  { C_q0 mem_dout 0 512 }  { C_we0 mem_we 1 1 }  { C_address1 mem_address 1 10 }  { C_ce1 mem_ce 1 1 }  { C_d1 mem_din 1 512 }  { C_q1 mem_dout 0 512 }  { C_we1 mem_we 1 1 } } }
}
