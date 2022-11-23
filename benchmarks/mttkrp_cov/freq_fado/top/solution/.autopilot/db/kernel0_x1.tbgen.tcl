set moduleName kernel0_x1
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
set C_modelName {kernel0_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_C int 512 regular {axi_master 0}  }
	{ gmem_D int 512 regular {axi_master 1}  }
	{ A int 119 regular {array 4096 { 1 3 } 1 1 }  }
	{ B int 119 regular {array 4096 { 1 3 } 1 1 }  }
	{ C int 64 regular  }
	{ D int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_D", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 119, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 119, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 121
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
	{ m_axi_gmem_D_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_D_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_D_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_D_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_D_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_D_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_D_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_D_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_D_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_D_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem_D_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_D_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_D_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_D_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_D_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_D_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_D_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_D_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_D_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_D_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_D_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem_D_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_D_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_D_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_D_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_D_BUSER sc_in sc_lv 1 signal 1 } 
	{ A_address0 sc_out sc_lv 12 signal 2 } 
	{ A_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_d0 sc_out sc_lv 119 signal 2 } 
	{ A_q0 sc_in sc_lv 119 signal 2 } 
	{ A_we0 sc_out sc_logic 1 signal 2 } 
	{ A_address1 sc_out sc_lv 12 signal 2 } 
	{ A_ce1 sc_out sc_logic 1 signal 2 } 
	{ A_d1 sc_out sc_lv 119 signal 2 } 
	{ A_q1 sc_in sc_lv 119 signal 2 } 
	{ A_we1 sc_out sc_logic 1 signal 2 } 
	{ B_address0 sc_out sc_lv 12 signal 3 } 
	{ B_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_d0 sc_out sc_lv 119 signal 3 } 
	{ B_q0 sc_in sc_lv 119 signal 3 } 
	{ B_we0 sc_out sc_logic 1 signal 3 } 
	{ B_address1 sc_out sc_lv 12 signal 3 } 
	{ B_ce1 sc_out sc_logic 1 signal 3 } 
	{ B_d1 sc_out sc_lv 119 signal 3 } 
	{ B_q1 sc_in sc_lv 119 signal 3 } 
	{ B_we1 sc_out sc_logic 1 signal 3 } 
	{ C sc_in sc_lv 64 signal 4 } 
	{ D sc_in sc_lv 64 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ C_ap_vld sc_in sc_logic 1 invld 4 } 
	{ D_ap_vld sc_in sc_logic 1 invld 5 } 
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
 	{ "name": "m_axi_gmem_D_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_D_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_D_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_D_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_D_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_D_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_D_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_D_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_D_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_D_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_D_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_D_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_D_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_D_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_D_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_D_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_D", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_D_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_D", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_D_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_D_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_D_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_D_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_D_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_D_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_D_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_D_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_D_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_D_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_D_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_D_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_D_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_D_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_D_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_D_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_D_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_D_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_D_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_D", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_D_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_D_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_D_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_D_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_D", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_D_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_D_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_D_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_D", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_D_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_D_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_D", "role": "BUSER" }} , 
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
 	{ "name": "D", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "D", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "C_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "C", "role": "ap_vld" }} , 
 	{ "name": "D_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "D", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "8", "11", "14", "17", "18", "19", "23", "27", "31", "35", "39", "43", "47", "51", "52", "53", "56", "59", "62", "65", "68", "71", "74", "77", "88", "99", "110", "121", "132", "143", "154", "165", "176", "187", "198", "209", "220", "231", "242", "253", "264", "275", "286", "297", "308", "319", "330", "341", "352", "363", "374", "385", "396", "407", "418", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "451", "453", "455", "457", "459", "461", "463", "465", "467", "469", "471", "473", "475", "477", "479", "481", "483", "485", "487", "489", "491", "493", "495", "497", "499", "501", "503", "505", "507", "509", "511", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738"],
		"CDFG" : "kernel0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79537545", "EstimateLatencyMax" : "79537553",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x1_entry8_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x1_U0"},
			{"ID" : "17", "Name" : "B_IO_L3_in_serialize_x1_U0"},
			{"ID" : "51", "Name" : "C_IO_L3_in_serialize_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "429", "Name" : "A_PE_dummy_in_0_x1_U0"},
			{"ID" : "430", "Name" : "A_PE_dummy_in_1_x1_U0"},
			{"ID" : "431", "Name" : "A_PE_dummy_in_2_x1_U0"},
			{"ID" : "432", "Name" : "A_PE_dummy_in_3_x1_U0"},
			{"ID" : "433", "Name" : "B_PE_dummy_in_0_x1_U0"},
			{"ID" : "434", "Name" : "B_PE_dummy_in_1_x1_U0"},
			{"ID" : "435", "Name" : "B_PE_dummy_in_2_x1_U0"},
			{"ID" : "436", "Name" : "B_PE_dummy_in_3_x1_U0"},
			{"ID" : "437", "Name" : "B_PE_dummy_in_4_x1_U0"},
			{"ID" : "438", "Name" : "B_PE_dummy_in_5_x1_U0"},
			{"ID" : "439", "Name" : "B_PE_dummy_in_6_x1_U0"},
			{"ID" : "440", "Name" : "B_PE_dummy_in_7_x1_U0"},
			{"ID" : "441", "Name" : "C_PE_dummy_in_0_x1_U0"},
			{"ID" : "442", "Name" : "C_PE_dummy_in_1_x1_U0"},
			{"ID" : "443", "Name" : "C_PE_dummy_in_2_x1_U0"},
			{"ID" : "444", "Name" : "C_PE_dummy_in_3_x1_U0"},
			{"ID" : "445", "Name" : "C_PE_dummy_in_4_x1_U0"},
			{"ID" : "446", "Name" : "C_PE_dummy_in_5_x1_U0"},
			{"ID" : "447", "Name" : "C_PE_dummy_in_6_x1_U0"},
			{"ID" : "448", "Name" : "C_PE_dummy_in_7_x1_U0"},
			{"ID" : "522", "Name" : "D_drain_IO_L3_out_serialize_x1_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "C_IO_L3_in_serialize_x1_U0", "Port" : "gmem_C"}]},
			{"Name" : "gmem_D", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "D_drain_IO_L3_out_serialize_x1_U0", "Port" : "gmem_D"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x1_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "B_IO_L3_in_serialize_x1_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"},
			{"Name" : "D", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x1_entry8_U0", "Parent" : "0",
		"CDFG" : "kernel0_x1_entry8",
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
			{"Name" : "D", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x1_entry19_U0", "Parent" : "0",
		"CDFG" : "kernel0_x1_entry19",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "522", "DependentChan" : "526", "DependentChanDepth" : "29", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x1_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3073", "EstimateLatencyMax" : "3073",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L3_in_serialize_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L3_in_serialize_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13793337", "EstimateLatencyMax" : "13793337",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["6", "7"],
		"CDFG" : "A_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12702722", "EstimateLatencyMax" : "63040514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_ping_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "A_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9547778", "EstimateLatencyMax" : "59885570",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_ping_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "A_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6392834", "EstimateLatencyMax" : "56730626",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_ping_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["15", "16"],
		"CDFG" : "A_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3231746", "EstimateLatencyMax" : "53569538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_ping_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x1_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_serialize_x1",
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
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24633", "EstimateLatencyMax" : "153657",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["20", "21", "22"],
		"CDFG" : "B_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70659", "EstimateLatencyMax" : "25583619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.local_B_ping_V_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.local_B_pong_V_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.mux_83_32_1_1_U1123", "Parent" : "19"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["24", "25", "26"],
		"CDFG" : "B_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70659", "EstimateLatencyMax" : "25583619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_1_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.local_B_ping_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.local_B_pong_V_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.mux_83_32_1_1_U1127", "Parent" : "23"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["28", "29", "30"],
		"CDFG" : "B_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70659", "EstimateLatencyMax" : "25583619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_2_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.local_B_ping_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.local_B_pong_V_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.mux_83_32_1_1_U1131", "Parent" : "27"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["32", "33", "34"],
		"CDFG" : "B_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70659", "EstimateLatencyMax" : "25583619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_3_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.local_B_ping_V_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.local_B_pong_V_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.mux_83_32_1_1_U1135", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["36", "37", "38"],
		"CDFG" : "B_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70659", "EstimateLatencyMax" : "25583619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_4_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.local_B_ping_V_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.local_B_pong_V_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.mux_83_32_1_1_U1139", "Parent" : "35"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["40", "41", "42"],
		"CDFG" : "B_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70659", "EstimateLatencyMax" : "25583619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_5_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "132", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.local_B_ping_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.local_B_pong_V_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.mux_83_32_1_1_U1143", "Parent" : "39"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["44", "45", "46"],
		"CDFG" : "B_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70659", "EstimateLatencyMax" : "25583619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_6_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.local_B_ping_V_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.local_B_pong_V_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.mux_83_32_1_1_U1147", "Parent" : "43"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["48", "49", "50"],
		"CDFG" : "B_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21507", "EstimateLatencyMax" : "25402371",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_ping_V_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.mux_83_32_1_1_U1151", "Parent" : "47"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_serialize_x1_U0", "Parent" : "0",
		"CDFG" : "C_IO_L3_in_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3143", "EstimateLatencyMax" : "3143",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_C_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_C_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "C_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6633", "EstimateLatencyMax" : "52665",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["54", "55"],
		"CDFG" : "C_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2431482", "EstimateLatencyMax" : "60673482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_0_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_0_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_1_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.local_C_ping_V_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.local_C_pong_V_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["57", "58"],
		"CDFG" : "C_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2431482", "EstimateLatencyMax" : "60673482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_1_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_2_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.local_C_ping_V_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.local_C_pong_V_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["60", "61"],
		"CDFG" : "C_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2431482", "EstimateLatencyMax" : "60673482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_2_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_3_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x1111_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.local_C_ping_V_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.local_C_pong_V_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["63", "64"],
		"CDFG" : "C_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2431482", "EstimateLatencyMax" : "60673482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_3_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_4_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x1116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.local_C_ping_V_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.local_C_pong_V_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["66", "67"],
		"CDFG" : "C_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2431482", "EstimateLatencyMax" : "60673482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_4_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_5_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x1121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.local_C_ping_V_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.local_C_pong_V_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["69", "70"],
		"CDFG" : "C_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2431482", "EstimateLatencyMax" : "60673482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_5_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_6_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "132", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x1126_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.local_C_ping_V_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.local_C_pong_V_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["72", "73"],
		"CDFG" : "C_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2431482", "EstimateLatencyMax" : "60673482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_6_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_7_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x1131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.local_C_ping_V_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.local_C_pong_V_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["75", "76"],
		"CDFG" : "C_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2424906", "EstimateLatencyMax" : "60627402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_7_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x1136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.local_C_ping_V_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.local_C_pong_V_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["78", "79", "80", "81", "82", "83", "84", "85", "86", "87"],
		"CDFG" : "PE_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75502537", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x1101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x1102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x1141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "455", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x1141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_D_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1182", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1183", "Parent" : "77"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1184", "Parent" : "77"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1185", "Parent" : "77"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1186", "Parent" : "77"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1187", "Parent" : "77"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1188", "Parent" : "77"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1189", "Parent" : "77"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1190", "Parent" : "77"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["89", "90", "91", "92", "93", "94", "95", "96", "97", "98"],
		"CDFG" : "PE_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75502537", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x1106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x1145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "463", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x1145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_D_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1198", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1199", "Parent" : "88"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1200", "Parent" : "88"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1201", "Parent" : "88"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1202", "Parent" : "88"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1203", "Parent" : "88"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1204", "Parent" : "88"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1205", "Parent" : "88"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1206", "Parent" : "88"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0", "Parent" : "0", "Child" : ["100", "101", "102", "103", "104", "105", "106", "107", "108", "109"],
		"CDFG" : "PE_wrapper_0_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x1149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "471", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x1149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.local_D_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1214", "Parent" : "99"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1215", "Parent" : "99"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1216", "Parent" : "99"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1217", "Parent" : "99"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1218", "Parent" : "99"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1219", "Parent" : "99"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1220", "Parent" : "99"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1221", "Parent" : "99"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1222", "Parent" : "99"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0", "Parent" : "0", "Child" : ["111", "112", "113", "114", "115", "116", "117", "118", "119", "120"],
		"CDFG" : "PE_wrapper_0_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_3_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x1153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x1153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.local_D_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1230", "Parent" : "110"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1231", "Parent" : "110"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1232", "Parent" : "110"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1233", "Parent" : "110"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1234", "Parent" : "110"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1235", "Parent" : "110"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1236", "Parent" : "110"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1237", "Parent" : "110"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1238", "Parent" : "110"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0", "Parent" : "0", "Child" : ["122", "123", "124", "125", "126", "127", "128", "129", "130", "131"],
		"CDFG" : "PE_wrapper_0_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_4_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "132", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x1157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "487", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x1157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.local_D_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1246", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1247", "Parent" : "121"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1248", "Parent" : "121"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1249", "Parent" : "121"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1250", "Parent" : "121"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1251", "Parent" : "121"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1252", "Parent" : "121"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1253", "Parent" : "121"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1254", "Parent" : "121"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0", "Parent" : "0", "Child" : ["133", "134", "135", "136", "137", "138", "139", "140", "141", "142"],
		"CDFG" : "PE_wrapper_0_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_5_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x1161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "495", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x1161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.local_D_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1262", "Parent" : "132"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1263", "Parent" : "132"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1264", "Parent" : "132"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1265", "Parent" : "132"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1266", "Parent" : "132"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1267", "Parent" : "132"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1268", "Parent" : "132"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1269", "Parent" : "132"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1270", "Parent" : "132"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0", "Parent" : "0", "Child" : ["144", "145", "146", "147", "148", "149", "150", "151", "152", "153"],
		"CDFG" : "PE_wrapper_0_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_6_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x1165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x1165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.local_D_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1278", "Parent" : "143"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1279", "Parent" : "143"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1280", "Parent" : "143"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1281", "Parent" : "143"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1282", "Parent" : "143"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1283", "Parent" : "143"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1284", "Parent" : "143"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1285", "Parent" : "143"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1286", "Parent" : "143"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0", "Parent" : "0", "Child" : ["155", "156", "157", "158", "159", "160", "161", "162", "163", "164"],
		"CDFG" : "PE_wrapper_0_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_7_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x1137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x1169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "511", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x1169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.local_D_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1294", "Parent" : "154"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1295", "Parent" : "154"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1296", "Parent" : "154"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1297", "Parent" : "154"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1298", "Parent" : "154"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1299", "Parent" : "154"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1300", "Parent" : "154"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1301", "Parent" : "154"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1302", "Parent" : "154"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["166", "167", "168", "169", "170", "171", "172", "173", "174", "175"],
		"CDFG" : "PE_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75502537", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x1102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x1103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x1142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "453", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x1142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_D_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1310", "Parent" : "165"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1311", "Parent" : "165"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1312", "Parent" : "165"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1313", "Parent" : "165"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1314", "Parent" : "165"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1315", "Parent" : "165"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1316", "Parent" : "165"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1317", "Parent" : "165"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1318", "Parent" : "165"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["177", "178", "179", "180", "181", "182", "183", "184", "185", "186"],
		"CDFG" : "PE_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75502537", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "264", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "264", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x1108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x1146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "461", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x1146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_D_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1326", "Parent" : "176"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1327", "Parent" : "176"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1328", "Parent" : "176"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1329", "Parent" : "176"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1330", "Parent" : "176"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1331", "Parent" : "176"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1332", "Parent" : "176"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1333", "Parent" : "176"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1334", "Parent" : "176"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0", "Parent" : "0", "Child" : ["188", "189", "190", "191", "192", "193", "194", "195", "196", "197"],
		"CDFG" : "PE_wrapper_1_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x1150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "469", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x1150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.local_D_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1342", "Parent" : "187"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1343", "Parent" : "187"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1344", "Parent" : "187"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1345", "Parent" : "187"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1346", "Parent" : "187"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1347", "Parent" : "187"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1348", "Parent" : "187"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1349", "Parent" : "187"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1350", "Parent" : "187"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0", "Parent" : "0", "Child" : ["199", "200", "201", "202", "203", "204", "205", "206", "207", "208"],
		"CDFG" : "PE_wrapper_1_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_3_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x1154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "477", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x1154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.local_D_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1358", "Parent" : "198"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1359", "Parent" : "198"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1360", "Parent" : "198"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1361", "Parent" : "198"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1362", "Parent" : "198"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1363", "Parent" : "198"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1364", "Parent" : "198"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1365", "Parent" : "198"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1366", "Parent" : "198"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0", "Parent" : "0", "Child" : ["210", "211", "212", "213", "214", "215", "216", "217", "218", "219"],
		"CDFG" : "PE_wrapper_1_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "198", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x1158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x1158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.local_D_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1374", "Parent" : "209"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1375", "Parent" : "209"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1376", "Parent" : "209"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1377", "Parent" : "209"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1378", "Parent" : "209"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1379", "Parent" : "209"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1380", "Parent" : "209"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1381", "Parent" : "209"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1382", "Parent" : "209"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0", "Parent" : "0", "Child" : ["221", "222", "223", "224", "225", "226", "227", "228", "229", "230"],
		"CDFG" : "PE_wrapper_1_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_5_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "209", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "308", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "308", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x1162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "493", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x1162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.local_D_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1390", "Parent" : "220"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1391", "Parent" : "220"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1392", "Parent" : "220"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1393", "Parent" : "220"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1394", "Parent" : "220"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1395", "Parent" : "220"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1396", "Parent" : "220"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1397", "Parent" : "220"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1398", "Parent" : "220"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0", "Parent" : "0", "Child" : ["232", "233", "234", "235", "236", "237", "238", "239", "240", "241"],
		"CDFG" : "PE_wrapper_1_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_6_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "319", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "319", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x1166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "501", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x1166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.local_D_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1406", "Parent" : "231"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1407", "Parent" : "231"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1408", "Parent" : "231"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1409", "Parent" : "231"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1410", "Parent" : "231"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1411", "Parent" : "231"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1412", "Parent" : "231"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1413", "Parent" : "231"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1414", "Parent" : "231"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0", "Parent" : "0", "Child" : ["243", "244", "245", "246", "247", "248", "249", "250", "251", "252"],
		"CDFG" : "PE_wrapper_1_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_7_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "430", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x1137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x1138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x1170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x1170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.local_D_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1422", "Parent" : "242"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1423", "Parent" : "242"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1424", "Parent" : "242"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1425", "Parent" : "242"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1426", "Parent" : "242"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1427", "Parent" : "242"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1428", "Parent" : "242"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1429", "Parent" : "242"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1430", "Parent" : "242"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["254", "255", "256", "257", "258", "259", "260", "261", "262", "263"],
		"CDFG" : "PE_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75502537", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "264", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x1103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x1104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x1143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "451", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x1143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_D_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1438", "Parent" : "253"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1439", "Parent" : "253"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1440", "Parent" : "253"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1441", "Parent" : "253"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1442", "Parent" : "253"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1443", "Parent" : "253"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1444", "Parent" : "253"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1445", "Parent" : "253"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1446", "Parent" : "253"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["265", "266", "267", "268", "269", "270", "271", "272", "273", "274"],
		"CDFG" : "PE_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75502537", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "253", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "352", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x1108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "352", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x1147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "459", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x1147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_D_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1454", "Parent" : "264"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1455", "Parent" : "264"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1456", "Parent" : "264"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1457", "Parent" : "264"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1458", "Parent" : "264"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1459", "Parent" : "264"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1460", "Parent" : "264"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1461", "Parent" : "264"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1462", "Parent" : "264"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0", "Parent" : "0", "Child" : ["276", "277", "278", "279", "280", "281", "282", "283", "284", "285"],
		"CDFG" : "PE_wrapper_2_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x1151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x1151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.local_D_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1470", "Parent" : "275"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1471", "Parent" : "275"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1472", "Parent" : "275"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1473", "Parent" : "275"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1474", "Parent" : "275"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1475", "Parent" : "275"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1476", "Parent" : "275"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1477", "Parent" : "275"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1478", "Parent" : "275"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0", "Parent" : "0", "Child" : ["287", "288", "289", "290", "291", "292", "293", "294", "295", "296"],
		"CDFG" : "PE_wrapper_2_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_3_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "198", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "198", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x1155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "475", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x1155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.local_D_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1486", "Parent" : "286"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1487", "Parent" : "286"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1488", "Parent" : "286"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1489", "Parent" : "286"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1490", "Parent" : "286"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1491", "Parent" : "286"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1492", "Parent" : "286"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1493", "Parent" : "286"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1494", "Parent" : "286"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0", "Parent" : "0", "Child" : ["298", "299", "300", "301", "302", "303", "304", "305", "306", "307"],
		"CDFG" : "PE_wrapper_2_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_4_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "308", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "209", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "209", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x1159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "483", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x1159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.local_D_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1502", "Parent" : "297"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1503", "Parent" : "297"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1504", "Parent" : "297"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1505", "Parent" : "297"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1506", "Parent" : "297"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1507", "Parent" : "297"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1508", "Parent" : "297"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1509", "Parent" : "297"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1510", "Parent" : "297"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0", "Parent" : "0", "Child" : ["309", "310", "311", "312", "313", "314", "315", "316", "317", "318"],
		"CDFG" : "PE_wrapper_2_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_5_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "297", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "319", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x1163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "491", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x1163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.local_D_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1518", "Parent" : "308"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1519", "Parent" : "308"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1520", "Parent" : "308"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1521", "Parent" : "308"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1522", "Parent" : "308"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1523", "Parent" : "308"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1524", "Parent" : "308"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1525", "Parent" : "308"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1526", "Parent" : "308"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0", "Parent" : "0", "Child" : ["320", "321", "322", "323", "324", "325", "326", "327", "328", "329"],
		"CDFG" : "PE_wrapper_2_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_6_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "308", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x1167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "499", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x1167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.local_D_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1534", "Parent" : "319"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1535", "Parent" : "319"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1536", "Parent" : "319"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1537", "Parent" : "319"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1538", "Parent" : "319"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1539", "Parent" : "319"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1540", "Parent" : "319"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1541", "Parent" : "319"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1542", "Parent" : "319"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0", "Parent" : "0", "Child" : ["331", "332", "333", "334", "335", "336", "337", "338", "339", "340"],
		"CDFG" : "PE_wrapper_2_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_7_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "319", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "418", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x1138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x1139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "418", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x1139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x1171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "507", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x1171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.local_D_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1550", "Parent" : "330"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1551", "Parent" : "330"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1552", "Parent" : "330"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1553", "Parent" : "330"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1554", "Parent" : "330"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1555", "Parent" : "330"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1556", "Parent" : "330"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1557", "Parent" : "330"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1558", "Parent" : "330"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["342", "343", "344", "345", "346", "347", "348", "349", "350", "351"],
		"CDFG" : "PE_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75502537", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "352", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "253", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "433", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "253", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x1104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_0_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "441", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x1105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x1144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "449", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x1144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_D_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1566", "Parent" : "341"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1567", "Parent" : "341"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1568", "Parent" : "341"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1569", "Parent" : "341"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1570", "Parent" : "341"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1571", "Parent" : "341"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1572", "Parent" : "341"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1573", "Parent" : "341"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1574", "Parent" : "341"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["353", "354", "355", "356", "357", "358", "359", "360", "361", "362"],
		"CDFG" : "PE_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75502537", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x1148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "457", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x1148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_D_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1582", "Parent" : "352"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1583", "Parent" : "352"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1584", "Parent" : "352"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1585", "Parent" : "352"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1586", "Parent" : "352"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1587", "Parent" : "352"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1588", "Parent" : "352"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1589", "Parent" : "352"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1590", "Parent" : "352"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0", "Parent" : "0", "Child" : ["364", "365", "366", "367", "368", "369", "370", "371", "372", "373"],
		"CDFG" : "PE_wrapper_3_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "352", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "435", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_2_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x1152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "465", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x1152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.local_D_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1598", "Parent" : "363"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1599", "Parent" : "363"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1600", "Parent" : "363"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1601", "Parent" : "363"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1602", "Parent" : "363"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1603", "Parent" : "363"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1604", "Parent" : "363"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1605", "Parent" : "363"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1606", "Parent" : "363"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0", "Parent" : "0", "Child" : ["375", "376", "377", "378", "379", "380", "381", "382", "383", "384"],
		"CDFG" : "PE_wrapper_3_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_3_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "363", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "436", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_3_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "444", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x1156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x1156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.local_D_U", "Parent" : "374"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1614", "Parent" : "374"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1615", "Parent" : "374"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1616", "Parent" : "374"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1617", "Parent" : "374"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1618", "Parent" : "374"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1619", "Parent" : "374"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1620", "Parent" : "374"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1621", "Parent" : "374"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1622", "Parent" : "374"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0", "Parent" : "0", "Child" : ["386", "387", "388", "389", "390", "391", "392", "393", "394", "395"],
		"CDFG" : "PE_wrapper_3_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_4_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "297", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "437", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "297", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_4_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x1160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "481", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x1160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.local_D_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1630", "Parent" : "385"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1631", "Parent" : "385"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1632", "Parent" : "385"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1633", "Parent" : "385"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1634", "Parent" : "385"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1635", "Parent" : "385"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1636", "Parent" : "385"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1637", "Parent" : "385"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1638", "Parent" : "385"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0", "Parent" : "0", "Child" : ["397", "398", "399", "400", "401", "402", "403", "404", "405", "406"],
		"CDFG" : "PE_wrapper_3_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "385", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "308", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "438", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "308", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_5_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x1164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "489", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x1164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.local_D_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1646", "Parent" : "396"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1647", "Parent" : "396"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1648", "Parent" : "396"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1649", "Parent" : "396"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1650", "Parent" : "396"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1651", "Parent" : "396"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1652", "Parent" : "396"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1653", "Parent" : "396"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1654", "Parent" : "396"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0", "Parent" : "0", "Child" : ["408", "409", "410", "411", "412", "413", "414", "415", "416", "417"],
		"CDFG" : "PE_wrapper_3_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_6_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "396", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "418", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "319", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "439", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "319", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_6_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "447", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x1168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x1168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.local_D_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1662", "Parent" : "407"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1663", "Parent" : "407"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1664", "Parent" : "407"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1665", "Parent" : "407"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1666", "Parent" : "407"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1667", "Parent" : "407"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1668", "Parent" : "407"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1669", "Parent" : "407"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1670", "Parent" : "407"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0", "Parent" : "0", "Child" : ["419", "420", "421", "422", "423", "424", "425", "426", "427", "428"],
		"CDFG" : "PE_wrapper_3_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "75502537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_7_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "407", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "432", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x1139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x1139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_7_x1140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x1140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x1172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "505", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x1172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.local_D_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1678", "Parent" : "418"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1679", "Parent" : "418"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1680", "Parent" : "418"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1681", "Parent" : "418"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1682", "Parent" : "418"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1683", "Parent" : "418"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1684", "Parent" : "418"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1685", "Parent" : "418"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1686", "Parent" : "418"},
	{"ID" : "429", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_8_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "430", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_8_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_8_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "432", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_8_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "418", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "433", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28723257", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28723257", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "352", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "435", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_2_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "363", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "436", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_3_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "437", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_4_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "385", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "438", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_5_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "396", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "439", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_6_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "407", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_7_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "418", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_0_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28723257", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_0_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_1_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28723257", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "352", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x1110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "443", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_2_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_2_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "363", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x1115_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "444", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_3_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_3_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x1120_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "445", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_4_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_4_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "385", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x1125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "446", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_5_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_5_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "396", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x1130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "447", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_6_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_6_x1135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "407", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x1135_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "448", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_7_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "28723257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_7_x1140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "418", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x1140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "449", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x1_U0", "Parent" : "0", "Child" : ["450"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24273", "EstimateLatencyMax" : "24273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "451", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x1144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x1144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x1_U0.local_D_V_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x1_U0", "Parent" : "0", "Child" : ["452"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42033", "EstimateLatencyMax" : "42033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "449", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "453", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x1143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "253", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x1143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x1_U0.local_D_V_U", "Parent" : "451"},
	{"ID" : "453", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["454"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44385", "EstimateLatencyMax" : "44385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "451", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "455", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x1142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x1142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x1_U0.local_D_V_U", "Parent" : "453"},
	{"ID" : "455", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["456"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46737", "EstimateLatencyMax" : "46737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "453", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "520", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x1141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x1141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x1_U0.local_D_V_U", "Parent" : "455"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x1_U0", "Parent" : "0", "Child" : ["458"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24273", "EstimateLatencyMax" : "24273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "459", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x1148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "352", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x1148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x1_U0.local_D_V_U", "Parent" : "457"},
	{"ID" : "459", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x1_U0", "Parent" : "0", "Child" : ["460"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42033", "EstimateLatencyMax" : "42033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "457", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "461", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x1147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x1147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x1_U0.local_D_V_U", "Parent" : "459"},
	{"ID" : "461", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["462"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44385", "EstimateLatencyMax" : "44385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "459", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "463", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x1146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x1146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x1_U0.local_D_V_U", "Parent" : "461"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["464"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46737", "EstimateLatencyMax" : "46737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "461", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "519", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x1145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x1145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x1_U0.local_D_V_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x1_U0", "Parent" : "0", "Child" : ["466"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "24273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x1152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "363", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x1152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x1_U0.local_D_V_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x1_U0", "Parent" : "0", "Child" : ["468"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "42033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "465", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "469", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x1151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x1151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x1_U0.local_D_V_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["470"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "44385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "471", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x1150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x1150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x1_U0.local_D_V_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["472"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "46737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "469", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "518", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x1149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x1149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x1_U0.local_D_V_U", "Parent" : "471"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x1_U0", "Parent" : "0", "Child" : ["474"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "24273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "475", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x1156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x1156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x1_U0.local_D_V_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x1_U0", "Parent" : "0", "Child" : ["476"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "42033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "477", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x1155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x1155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x1_U0.local_D_V_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["478"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "44385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "475", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x1154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "198", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x1154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x1_U0.local_D_V_U", "Parent" : "477"},
	{"ID" : "479", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["480"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "46737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "477", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x1153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x1153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x1_U0.local_D_V_U", "Parent" : "479"},
	{"ID" : "481", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x1_U0", "Parent" : "0", "Child" : ["482"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "24273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "483", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x1160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "385", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x1160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x1_U0.local_D_V_U", "Parent" : "481"},
	{"ID" : "483", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x1_U0", "Parent" : "0", "Child" : ["484"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "42033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "481", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x1159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "297", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x1159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x1_U0.local_D_V_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x1_U0", "Parent" : "0", "Child" : ["486"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "44385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "483", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "487", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x1158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "209", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x1158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x1_U0.local_D_V_U", "Parent" : "485"},
	{"ID" : "487", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x1_U0", "Parent" : "0", "Child" : ["488"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "46737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "516", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x1157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x1157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x1_U0.local_D_V_U", "Parent" : "487"},
	{"ID" : "489", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x1_U0", "Parent" : "0", "Child" : ["490"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "24273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "491", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x1164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "396", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x1164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x1_U0.local_D_V_U", "Parent" : "489"},
	{"ID" : "491", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x1_U0", "Parent" : "0", "Child" : ["492"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "42033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "489", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "493", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x1163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "308", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x1163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x1_U0.local_D_V_U", "Parent" : "491"},
	{"ID" : "493", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x1_U0", "Parent" : "0", "Child" : ["494"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "44385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "491", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "495", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x1162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x1162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x1_U0.local_D_V_U", "Parent" : "493"},
	{"ID" : "495", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x1_U0", "Parent" : "0", "Child" : ["496"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "46737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "493", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x1161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x1161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x1_U0.local_D_V_U", "Parent" : "495"},
	{"ID" : "497", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x1_U0", "Parent" : "0", "Child" : ["498"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "24273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "499", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x1168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "407", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x1168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x1_U0.local_D_V_U", "Parent" : "497"},
	{"ID" : "499", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x1_U0", "Parent" : "0", "Child" : ["500"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "42033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "497", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "501", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x1167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "319", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x1167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x1_U0.local_D_V_U", "Parent" : "499"},
	{"ID" : "501", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x1_U0", "Parent" : "0", "Child" : ["502"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "44385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "499", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x1166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x1166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x1_U0.local_D_V_U", "Parent" : "501"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x1_U0", "Parent" : "0", "Child" : ["504"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "46737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "501", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "514", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x1165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x1165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x1_U0.local_D_V_U", "Parent" : "503"},
	{"ID" : "505", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x1_U0", "Parent" : "0", "Child" : ["506"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "24273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "507", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x1172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "418", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x1172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x1_U0.local_D_V_U", "Parent" : "505"},
	{"ID" : "507", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x1_U0", "Parent" : "0", "Child" : ["508"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "42033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "505", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x1171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x1171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x1_U0.local_D_V_U", "Parent" : "507"},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x1_U0", "Parent" : "0", "Child" : ["510"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "44385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "507", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "511", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x1170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x1170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x1_U0.local_D_V_U", "Parent" : "509"},
	{"ID" : "511", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x1_U0", "Parent" : "0", "Child" : ["512"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "46737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "509", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "513", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x1169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x1169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x1_U0.local_D_V_U", "Parent" : "511"},
	{"ID" : "513", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_boundary_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "9465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "514", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "511", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "514", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_6_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18969", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "513", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "503", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "515", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_5_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18969", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "514", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "516", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "495", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "516", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_4_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18969", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "515", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "487", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_3_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18969", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "516", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "518", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "479", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "518", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_2_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18969", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "517", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "519", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "471", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "519", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_1_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18969", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "518", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "520", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "463", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "520", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_0_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18969", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "519", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x1205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x1205_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "455", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "521", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L3_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9513", "EstimateLatencyMax" : "75705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "522", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "520", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "522", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L3_out_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7238", "EstimateLatencyMax" : "7238",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_D", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_D_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_D_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_D_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "521", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "526", "DependentChanDepth" : "29", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "523", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "524", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c2_U", "Parent" : "0"},
	{"ID" : "525", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "526", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c_U", "Parent" : "0"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "528", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "529", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "531", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "532", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "534", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "537", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "541", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "561", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "562", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "564", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "565", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "567", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "570", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "573", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "579", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "582", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "583", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "594", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x1_U", "Parent" : "0"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x1_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "650", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "651", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "653", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "654", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x1_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "665", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "666", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "667", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "668", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "669", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "670", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "671", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "673", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "675", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "677", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "678", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x1_U", "Parent" : "0"},
	{"ID" : "680", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_3_x1_U", "Parent" : "0"},
	{"ID" : "681", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "682", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "683", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x1_U", "Parent" : "0"},
	{"ID" : "684", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_4_x1_U", "Parent" : "0"},
	{"ID" : "685", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "687", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x1_U", "Parent" : "0"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_5_x1_U", "Parent" : "0"},
	{"ID" : "689", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "690", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "691", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x1_U", "Parent" : "0"},
	{"ID" : "692", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_6_x1_U", "Parent" : "0"},
	{"ID" : "693", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "694", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x1_U", "Parent" : "0"},
	{"ID" : "695", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x1_U", "Parent" : "0"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_7_x1_U", "Parent" : "0"},
	{"ID" : "697", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "698", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_3_x1_U", "Parent" : "0"},
	{"ID" : "699", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_2_x1_U", "Parent" : "0"},
	{"ID" : "700", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_1_x1_U", "Parent" : "0"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_0_x1_U", "Parent" : "0"},
	{"ID" : "702", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_3_x1_U", "Parent" : "0"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_2_x1_U", "Parent" : "0"},
	{"ID" : "704", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_1_x1_U", "Parent" : "0"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_0_x1_U", "Parent" : "0"},
	{"ID" : "706", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_3_x1_U", "Parent" : "0"},
	{"ID" : "707", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_2_x1_U", "Parent" : "0"},
	{"ID" : "708", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_1_x1_U", "Parent" : "0"},
	{"ID" : "709", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_0_x1_U", "Parent" : "0"},
	{"ID" : "710", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_3_x1_U", "Parent" : "0"},
	{"ID" : "711", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_2_x1_U", "Parent" : "0"},
	{"ID" : "712", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_1_x1_U", "Parent" : "0"},
	{"ID" : "713", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_0_x1_U", "Parent" : "0"},
	{"ID" : "714", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_3_x1_U", "Parent" : "0"},
	{"ID" : "715", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_2_x1_U", "Parent" : "0"},
	{"ID" : "716", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_1_x1_U", "Parent" : "0"},
	{"ID" : "717", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_0_x1_U", "Parent" : "0"},
	{"ID" : "718", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_3_x1_U", "Parent" : "0"},
	{"ID" : "719", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_2_x1_U", "Parent" : "0"},
	{"ID" : "720", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_1_x1_U", "Parent" : "0"},
	{"ID" : "721", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_0_x1_U", "Parent" : "0"},
	{"ID" : "722", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_3_x1_U", "Parent" : "0"},
	{"ID" : "723", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_2_x1_U", "Parent" : "0"},
	{"ID" : "724", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_1_x1_U", "Parent" : "0"},
	{"ID" : "725", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_0_x1_U", "Parent" : "0"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_3_x1_U", "Parent" : "0"},
	{"ID" : "727", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_2_x1_U", "Parent" : "0"},
	{"ID" : "728", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_1_x1_U", "Parent" : "0"},
	{"ID" : "729", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_0_x1_U", "Parent" : "0"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_7_x1_U", "Parent" : "0"},
	{"ID" : "731", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_6_x1_U", "Parent" : "0"},
	{"ID" : "732", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_5_x1_U", "Parent" : "0"},
	{"ID" : "733", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_4_x1_U", "Parent" : "0"},
	{"ID" : "734", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_3_x1_U", "Parent" : "0"},
	{"ID" : "735", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_2_x1_U", "Parent" : "0"},
	{"ID" : "736", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_1_x1_U", "Parent" : "0"},
	{"ID" : "737", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_0_x1_U", "Parent" : "0"},
	{"ID" : "738", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x1 {
		gmem_C {Type I LastRead 72 FirstWrite -1}
		gmem_D {Type O LastRead 3 FirstWrite 4}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}}
	kernel0_x1_entry8 {
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}
		D_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x1_entry19 {
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}
		D_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x1 {
		fifo_A_A_IO_L3_in_serialize_x11 {Type O LastRead -1 FirstWrite 3}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L3_in_x1 {
		fifo_A_in {Type I LastRead 8 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_0_x1 {
		fifo_A_A_IO_L2_in_0_x15 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x16 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_0_0_x125 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x16 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x17 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x134 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_2_x1 {
		fifo_A_A_IO_L2_in_2_x17 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x18 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_2_0_x143 {Type O LastRead -1 FirstWrite 6}}
	A_IO_L2_in_boundary_x1 {
		fifo_A_A_IO_L2_in_3_x18 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_3_0_x152 {Type O LastRead -1 FirstWrite 6}}
	B_IO_L3_in_serialize_x1 {
		fifo_B_B_IO_L3_in_serialize_x12 {Type O LastRead -1 FirstWrite 3}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L3_in_x1 {
		fifo_B_in {Type I LastRead 6 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 6}}
	B_IO_L2_in_0_x1 {
		fifo_B_B_IO_L2_in_0_x19 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x110 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_0_x161 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_1_x1 {
		fifo_B_B_IO_L2_in_1_x110 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x111 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_1_x166 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_2_x1 {
		fifo_B_B_IO_L2_in_2_x111 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x112 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_2_x171 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_3_x1 {
		fifo_B_B_IO_L2_in_3_x112 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x113 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_3_x176 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_4_x1 {
		fifo_B_B_IO_L2_in_4_x113 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x114 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_4_x181 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_5_x1 {
		fifo_B_B_IO_L2_in_5_x114 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x115 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_5_x186 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_6_x1 {
		fifo_B_B_IO_L2_in_6_x115 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x116 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_6_x191 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L2_in_boundary_x1 {
		fifo_B_B_IO_L2_in_7_x116 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_0_7_x196 {Type O LastRead -1 FirstWrite 4}}
	C_IO_L3_in_serialize_x1 {
		gmem_C {Type I LastRead 72 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 73}
		C {Type I LastRead 0 FirstWrite -1}}
	C_IO_L3_in_x1 {
		fifo_C_in {Type I LastRead 6 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_0_x1 {
		fifo_C_C_IO_L2_in_0_x117 {Type I LastRead 5 FirstWrite -1}
		fifo_C_C_IO_L2_in_1_x118 {Type O LastRead -1 FirstWrite 5}
		fifo_C_PE_0_0_x1101 {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_1_x1 {
		fifo_C_C_IO_L2_in_1_x118 {Type I LastRead 5 FirstWrite -1}
		fifo_C_C_IO_L2_in_2_x119 {Type O LastRead -1 FirstWrite 5}
		fifo_C_PE_0_1_x1106 {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_2_x1 {
		fifo_C_C_IO_L2_in_2_x119 {Type I LastRead 5 FirstWrite -1}
		fifo_C_C_IO_L2_in_3_x120 {Type O LastRead -1 FirstWrite 5}
		fifo_C_PE_0_2_x1111 {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_3_x1 {
		fifo_C_C_IO_L2_in_3_x120 {Type I LastRead 5 FirstWrite -1}
		fifo_C_C_IO_L2_in_4_x121 {Type O LastRead -1 FirstWrite 5}
		fifo_C_PE_0_3_x1116 {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_4_x1 {
		fifo_C_C_IO_L2_in_4_x121 {Type I LastRead 5 FirstWrite -1}
		fifo_C_C_IO_L2_in_5_x122 {Type O LastRead -1 FirstWrite 5}
		fifo_C_PE_0_4_x1121 {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_5_x1 {
		fifo_C_C_IO_L2_in_5_x122 {Type I LastRead 5 FirstWrite -1}
		fifo_C_C_IO_L2_in_6_x123 {Type O LastRead -1 FirstWrite 5}
		fifo_C_PE_0_5_x1126 {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_6_x1 {
		fifo_C_C_IO_L2_in_6_x123 {Type I LastRead 5 FirstWrite -1}
		fifo_C_C_IO_L2_in_7_x124 {Type O LastRead -1 FirstWrite 5}
		fifo_C_PE_0_6_x1131 {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_boundary_x1 {
		fifo_C_C_IO_L2_in_7_x124 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_0_7_x1136 {Type O LastRead -1 FirstWrite 6}}
	PE_wrapper_0_0_x1 {
		fifo_A_PE_0_0_x125 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_1_x126 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_0_x161 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_0_x162 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_0_x1101 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_0_x1102 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_0_x1141 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_1_x1 {
		fifo_A_PE_0_1_x126 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x127 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_1_x166 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_1_x167 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_1_x1106 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_1_x1107 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_1_x1145 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_2_x1 {
		fifo_A_PE_0_2_x127 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_3_x128 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_2_x171 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_2_x172 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_2_x1111 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_2_x1112 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_2_x1149 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_3_x1 {
		fifo_A_PE_0_3_x128 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_4_x129 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_3_x176 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_3_x177 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_3_x1116 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_3_x1117 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_3_x1153 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_4_x1 {
		fifo_A_PE_0_4_x129 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_5_x130 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_4_x181 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_4_x182 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_4_x1121 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_4_x1122 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_4_x1157 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_5_x1 {
		fifo_A_PE_0_5_x130 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_6_x131 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_5_x186 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_5_x187 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_5_x1126 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_5_x1127 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_5_x1161 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_6_x1 {
		fifo_A_PE_0_6_x131 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_7_x132 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_6_x191 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_6_x192 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_6_x1131 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_6_x1132 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_6_x1165 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_7_x1 {
		fifo_A_PE_0_7_x132 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_8_x133 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_7_x196 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_7_x197 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_7_x1136 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_7_x1137 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_7_x1169 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_0_x1 {
		fifo_A_PE_1_0_x134 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x135 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_0_x162 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_0_x163 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_0_x1102 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_0_x1103 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_0_x1142 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_1_x1 {
		fifo_A_PE_1_1_x135 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_2_x136 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_1_x167 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_1_x168 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_1_x1107 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_1_x1108 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_1_x1146 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_2_x1 {
		fifo_A_PE_1_2_x136 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_3_x137 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_2_x172 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_2_x173 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_2_x1112 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_2_x1113 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_2_x1150 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_3_x1 {
		fifo_A_PE_1_3_x137 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_4_x138 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_3_x177 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_3_x178 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_3_x1117 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_3_x1118 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_3_x1154 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_4_x1 {
		fifo_A_PE_1_4_x138 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_5_x139 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_4_x182 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_4_x183 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_4_x1122 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_4_x1123 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_4_x1158 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_5_x1 {
		fifo_A_PE_1_5_x139 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_6_x140 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_5_x187 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_5_x188 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_5_x1127 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_5_x1128 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_5_x1162 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_6_x1 {
		fifo_A_PE_1_6_x140 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_7_x141 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_6_x192 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_6_x193 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_6_x1132 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_6_x1133 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_6_x1166 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_7_x1 {
		fifo_A_PE_1_7_x141 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_8_x142 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_7_x197 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_7_x198 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_7_x1137 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_7_x1138 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_7_x1170 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_0_x1 {
		fifo_A_PE_2_0_x143 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_1_x144 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_0_x163 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_0_x164 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_0_x1103 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_0_x1104 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_0_x1143 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_1_x1 {
		fifo_A_PE_2_1_x144 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_2_x145 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_1_x168 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_1_x169 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_1_x1108 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_1_x1109 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_1_x1147 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_2_x1 {
		fifo_A_PE_2_2_x145 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_3_x146 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_2_x173 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_2_x174 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_2_x1113 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_2_x1114 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_2_x1151 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_3_x1 {
		fifo_A_PE_2_3_x146 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_4_x147 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_3_x178 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_3_x179 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_3_x1118 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_3_x1119 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_3_x1155 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_4_x1 {
		fifo_A_PE_2_4_x147 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_5_x148 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_4_x183 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_4_x184 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_4_x1123 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_4_x1124 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_4_x1159 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_5_x1 {
		fifo_A_PE_2_5_x148 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_6_x149 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_5_x188 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_5_x189 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_5_x1128 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_5_x1129 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_5_x1163 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_6_x1 {
		fifo_A_PE_2_6_x149 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_7_x150 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_6_x193 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_6_x194 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_6_x1133 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_6_x1134 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_6_x1167 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_7_x1 {
		fifo_A_PE_2_7_x150 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_8_x151 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_7_x198 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_7_x199 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_7_x1138 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_7_x1139 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_7_x1171 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_0_x1 {
		fifo_A_PE_3_0_x152 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_1_x153 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_0_x164 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_0_x165 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_0_x1104 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_0_x1105 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_0_x1144 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_1_x1 {
		fifo_A_PE_3_1_x153 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_2_x154 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_1_x169 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_1_x170 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_1_x1109 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_1_x1110 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_1_x1148 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_2_x1 {
		fifo_A_PE_3_2_x154 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_3_x155 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_2_x174 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_2_x175 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_2_x1114 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_2_x1115 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_2_x1152 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_3_x1 {
		fifo_A_PE_3_3_x155 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_4_x156 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_3_x179 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_3_x180 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_3_x1119 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_3_x1120 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_3_x1156 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_4_x1 {
		fifo_A_PE_3_4_x156 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_5_x157 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_4_x184 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_4_x185 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_4_x1124 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_4_x1125 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_4_x1160 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_5_x1 {
		fifo_A_PE_3_5_x157 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_6_x158 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_5_x189 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_5_x190 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_5_x1129 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_5_x1130 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_5_x1164 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_6_x1 {
		fifo_A_PE_3_6_x158 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_7_x159 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_6_x194 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_6_x195 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_6_x1134 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_6_x1135 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_6_x1168 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_7_x1 {
		fifo_A_PE_3_7_x159 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_8_x160 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_7_x199 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_7_x1100 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_7_x1139 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_7_x1140 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_7_x1172 {Type O LastRead -1 FirstWrite 69}}
	A_PE_dummy_in_0_x1 {
		fifo_A_PE_0_8_x133 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_1_x1 {
		fifo_A_PE_1_8_x142 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_2_x1 {
		fifo_A_PE_2_8_x151 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_3_x1 {
		fifo_A_PE_3_8_x160 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_0_x1 {
		fifo_B_PE_4_0_x165 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_1_x1 {
		fifo_B_PE_4_1_x170 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_2_x1 {
		fifo_B_PE_4_2_x175 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_3_x1 {
		fifo_B_PE_4_3_x180 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_4_x1 {
		fifo_B_PE_4_4_x185 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_5_x1 {
		fifo_B_PE_4_5_x190 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_6_x1 {
		fifo_B_PE_4_6_x195 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_7_x1 {
		fifo_B_PE_4_7_x1100 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_0_x1 {
		fifo_C_PE_4_0_x1105 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_1_x1 {
		fifo_C_PE_4_1_x1110 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_2_x1 {
		fifo_C_PE_4_2_x1115 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_3_x1 {
		fifo_C_PE_4_3_x1120 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_4_x1 {
		fifo_C_PE_4_4_x1125 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_5_x1 {
		fifo_C_PE_4_5_x1130 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_6_x1 {
		fifo_C_PE_4_6_x1135 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_7_x1 {
		fifo_C_PE_4_7_x1140 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_0_3_x1176 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_0_x1144 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_0_3_x1176 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_2_x1175 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_0_x1143 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_0_2_x1175 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_1_x1174 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_0_x1142 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_0_1_x1174 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_0_x1173 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_0_x1141 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_1_3_x1180 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_1_x1148 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_1_3_x1180 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_2_x1179 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_1_x1147 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_1_2_x1179 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_1_x1178 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_1_x1146 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_1_1_x1178 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_0_x1177 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_1_x1145 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_2_3_x1184 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_2_x1152 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_2_3_x1184 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_2_x1183 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_2_x1151 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_2_2_x1183 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_1_x1182 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_2_x1150 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_2_1_x1182 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_0_x1181 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_2_x1149 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_3_x1 {
		fifo_D_drain_D_drain_IO_L1_out_3_3_x1188 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_3_x1156 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_3_3_x1188 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_2_x1187 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_3_x1155 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_3_2_x1187 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_1_x1186 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_3_x1154 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_3_1_x1186 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x1185 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_3_x1153 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_4_x1 {
		fifo_D_drain_D_drain_IO_L1_out_4_3_x1192 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_4_x1160 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_4_3_x1192 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_2_x1191 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_4_x1159 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_4_2_x1191 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_1_x1190 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_4_x1158 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_4_1_x1190 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_0_x1189 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_4_x1157 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_5_x1 {
		fifo_D_drain_D_drain_IO_L1_out_5_3_x1196 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_5_x1164 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_5_3_x1196 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_2_x1195 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_5_x1163 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_5_2_x1195 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_1_x1194 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_5_x1162 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_5_1_x1194 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_0_x1193 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_5_x1161 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_6_x1 {
		fifo_D_drain_D_drain_IO_L1_out_6_3_x1200 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_6_x1168 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_6_3_x1200 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_2_x1199 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_6_x1167 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_6_2_x1199 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_1_x1198 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_6_x1166 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_6_1_x1198 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_0_x1197 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_6_x1165 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_7_x1 {
		fifo_D_drain_D_drain_IO_L1_out_7_3_x1204 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_7_x1172 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_2_x1 {
		fifo_D_drain_D_drain_IO_L1_out_7_3_x1204 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_2_x1203 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_7_x1171 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_1_x1 {
		fifo_D_drain_D_drain_IO_L1_out_7_2_x1203 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_1_x1202 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_7_x1170 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_7_1_x1202 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_0_x1201 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_7_x1169 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L2_out_boundary_x1 {
		fifo_D_drain_D_drain_IO_L2_out_7_x1212 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_D_drain_IO_L1_out_7_0_x1201 {Type I LastRead 6 FirstWrite -1}}
	D_drain_IO_L2_out_6_x1 {
		fifo_D_drain_D_drain_IO_L2_out_7_x1212 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_6_x1211 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_6_0_x1197 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_5_x1 {
		fifo_D_drain_D_drain_IO_L2_out_6_x1211 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_5_x1210 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_5_0_x1193 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_4_x1 {
		fifo_D_drain_D_drain_IO_L2_out_5_x1210 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_4_x1209 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_4_0_x1189 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_3_x1 {
		fifo_D_drain_D_drain_IO_L2_out_4_x1209 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_3_x1208 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x1185 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_2_x1 {
		fifo_D_drain_D_drain_IO_L2_out_3_x1208 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_2_x1207 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_2_0_x1181 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_1_x1 {
		fifo_D_drain_D_drain_IO_L2_out_2_x1207 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_1_x1206 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_1_0_x1177 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_0_x1 {
		fifo_D_drain_D_drain_IO_L2_out_1_x1206 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_0_x1205 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_0_0_x1173 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L3_out_x1 {
		fifo_D_drain_out {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_local_in {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L3_out_serialize_x1 {
		gmem_D {Type O LastRead 3 FirstWrite 4}
		fifo_D_drain_local_in {Type I LastRead 3 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "79537545", "Max" : "79537553"}
	, {"Name" : "Interval", "Min" : "75502538", "Max" : "75502538"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 32 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 32 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
	gmem_D { m_axi {  { m_axi_gmem_D_AWVALID VALID 1 1 }  { m_axi_gmem_D_AWREADY READY 0 1 }  { m_axi_gmem_D_AWADDR ADDR 1 64 }  { m_axi_gmem_D_AWID ID 1 1 }  { m_axi_gmem_D_AWLEN LEN 1 32 }  { m_axi_gmem_D_AWSIZE SIZE 1 3 }  { m_axi_gmem_D_AWBURST BURST 1 2 }  { m_axi_gmem_D_AWLOCK LOCK 1 2 }  { m_axi_gmem_D_AWCACHE CACHE 1 4 }  { m_axi_gmem_D_AWPROT PROT 1 3 }  { m_axi_gmem_D_AWQOS QOS 1 4 }  { m_axi_gmem_D_AWREGION REGION 1 4 }  { m_axi_gmem_D_AWUSER USER 1 1 }  { m_axi_gmem_D_WVALID VALID 1 1 }  { m_axi_gmem_D_WREADY READY 0 1 }  { m_axi_gmem_D_WDATA DATA 1 512 }  { m_axi_gmem_D_WSTRB STRB 1 64 }  { m_axi_gmem_D_WLAST LAST 1 1 }  { m_axi_gmem_D_WID ID 1 1 }  { m_axi_gmem_D_WUSER USER 1 1 }  { m_axi_gmem_D_ARVALID VALID 1 1 }  { m_axi_gmem_D_ARREADY READY 0 1 }  { m_axi_gmem_D_ARADDR ADDR 1 64 }  { m_axi_gmem_D_ARID ID 1 1 }  { m_axi_gmem_D_ARLEN LEN 1 32 }  { m_axi_gmem_D_ARSIZE SIZE 1 3 }  { m_axi_gmem_D_ARBURST BURST 1 2 }  { m_axi_gmem_D_ARLOCK LOCK 1 2 }  { m_axi_gmem_D_ARCACHE CACHE 1 4 }  { m_axi_gmem_D_ARPROT PROT 1 3 }  { m_axi_gmem_D_ARQOS QOS 1 4 }  { m_axi_gmem_D_ARREGION REGION 1 4 }  { m_axi_gmem_D_ARUSER USER 1 1 }  { m_axi_gmem_D_RVALID VALID 0 1 }  { m_axi_gmem_D_RREADY READY 1 1 }  { m_axi_gmem_D_RDATA DATA 0 512 }  { m_axi_gmem_D_RLAST LAST 0 1 }  { m_axi_gmem_D_RID ID 0 1 }  { m_axi_gmem_D_RUSER USER 0 1 }  { m_axi_gmem_D_RRESP RESP 0 2 }  { m_axi_gmem_D_BVALID VALID 0 1 }  { m_axi_gmem_D_BREADY READY 1 1 }  { m_axi_gmem_D_BRESP RESP 0 2 }  { m_axi_gmem_D_BID ID 0 1 }  { m_axi_gmem_D_BUSER USER 0 1 } } }
	A { ap_memory {  { A_address0 mem_address 1 12 }  { A_ce0 mem_ce 1 1 }  { A_d0 mem_din 1 119 }  { A_q0 mem_dout 0 119 }  { A_we0 mem_we 1 1 }  { A_address1 mem_address 1 12 }  { A_ce1 mem_ce 1 1 }  { A_d1 mem_din 1 119 }  { A_q1 mem_dout 0 119 }  { A_we1 mem_we 1 1 } } }
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 119 }  { B_q0 mem_dout 0 119 }  { B_we0 mem_we 1 1 }  { B_address1 mem_address 1 12 }  { B_ce1 mem_ce 1 1 }  { B_d1 mem_din 1 119 }  { B_q1 mem_dout 0 119 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
	D { ap_none {  { D in_data 0 64 }  { D_ap_vld in_vld 0 1 } } }
}
