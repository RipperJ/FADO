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
	{ A int 512 regular {array 1024 { 1 3 } 1 1 }  }
	{ B int 512 regular {array 1024 { 1 3 } 1 1 }  }
	{ C int 64 regular  }
	{ D int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_D", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
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
	{ A_address0 sc_out sc_lv 10 signal 2 } 
	{ A_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_d0 sc_out sc_lv 512 signal 2 } 
	{ A_q0 sc_in sc_lv 512 signal 2 } 
	{ A_we0 sc_out sc_logic 1 signal 2 } 
	{ A_address1 sc_out sc_lv 10 signal 2 } 
	{ A_ce1 sc_out sc_logic 1 signal 2 } 
	{ A_d1 sc_out sc_lv 512 signal 2 } 
	{ A_q1 sc_in sc_lv 512 signal 2 } 
	{ A_we1 sc_out sc_logic 1 signal 2 } 
	{ B_address0 sc_out sc_lv 10 signal 3 } 
	{ B_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_d0 sc_out sc_lv 512 signal 3 } 
	{ B_q0 sc_in sc_lv 512 signal 3 } 
	{ B_we0 sc_out sc_logic 1 signal 3 } 
	{ B_address1 sc_out sc_lv 10 signal 3 } 
	{ B_ce1 sc_out sc_logic 1 signal 3 } 
	{ B_d1 sc_out sc_lv 512 signal 3 } 
	{ B_q1 sc_in sc_lv 512 signal 3 } 
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
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "d0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "d1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "12", "18", "24", "30", "31", "32", "38", "44", "50", "56", "62", "68", "74", "80", "81", "82", "88", "94", "100", "106", "112", "118", "124", "130", "136", "142", "148", "154", "160", "166", "172", "178", "184", "190", "196", "202", "208", "214", "220", "226", "232", "238", "244", "250", "256", "262", "268", "274", "280", "286", "292", "298", "304", "310", "316", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "345", "348", "351", "354", "357", "360", "363", "366", "369", "372", "375", "378", "381", "384", "387", "390", "393", "396", "399", "402", "405", "408", "411", "414", "417", "420", "423", "426", "429", "432", "435", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664"],
		"CDFG" : "kernel0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1463927139", "EstimateLatencyMax" : "1224218363",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x1_entry6_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x1_U0"},
			{"ID" : "30", "Name" : "B_IO_L3_in_serialize_x1_U0"},
			{"ID" : "80", "Name" : "C_IO_L3_in_serialize_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "322", "Name" : "A_PE_dummy_in_0_x1_U0"},
			{"ID" : "323", "Name" : "A_PE_dummy_in_1_x1_U0"},
			{"ID" : "324", "Name" : "A_PE_dummy_in_2_x1_U0"},
			{"ID" : "325", "Name" : "A_PE_dummy_in_3_x1_U0"},
			{"ID" : "326", "Name" : "B_PE_dummy_in_0_x1_U0"},
			{"ID" : "327", "Name" : "B_PE_dummy_in_1_x1_U0"},
			{"ID" : "328", "Name" : "B_PE_dummy_in_2_x1_U0"},
			{"ID" : "329", "Name" : "B_PE_dummy_in_3_x1_U0"},
			{"ID" : "330", "Name" : "B_PE_dummy_in_4_x1_U0"},
			{"ID" : "331", "Name" : "B_PE_dummy_in_5_x1_U0"},
			{"ID" : "332", "Name" : "B_PE_dummy_in_6_x1_U0"},
			{"ID" : "333", "Name" : "B_PE_dummy_in_7_x1_U0"},
			{"ID" : "334", "Name" : "C_PE_dummy_in_0_x1_U0"},
			{"ID" : "335", "Name" : "C_PE_dummy_in_1_x1_U0"},
			{"ID" : "336", "Name" : "C_PE_dummy_in_2_x1_U0"},
			{"ID" : "337", "Name" : "C_PE_dummy_in_3_x1_U0"},
			{"ID" : "338", "Name" : "C_PE_dummy_in_4_x1_U0"},
			{"ID" : "339", "Name" : "C_PE_dummy_in_5_x1_U0"},
			{"ID" : "340", "Name" : "C_PE_dummy_in_6_x1_U0"},
			{"ID" : "341", "Name" : "C_PE_dummy_in_7_x1_U0"},
			{"ID" : "447", "Name" : "D_drain_IO_L3_out_serialize_x1_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "C_IO_L3_in_serialize_x1_U0", "Port" : "gmem_C"}]},
			{"Name" : "gmem_D", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "447", "SubInstance" : "D_drain_IO_L3_out_serialize_x1_U0", "Port" : "gmem_D"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x1_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "B_IO_L3_in_serialize_x1_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"},
			{"Name" : "D", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x1_entry6_U0", "Parent" : "0",
		"CDFG" : "kernel0_x1_entry6",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x1_entry15_U0", "Parent" : "0",
		"CDFG" : "kernel0_x1_entry15",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "447", "DependentChan" : "452", "DependentChanDepth" : "29", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x1_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "A_IO_L3_in_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2049", "EstimateLatencyMax" : "2049",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L3_in_serialize_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L3_in_serialize_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x1_U0.add_11ns_11ns_11_1_1_U816", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11"],
		"CDFG" : "A_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13846718", "EstimateLatencyMax" : "168392894",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_ping_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.data_split_V_78_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.data_split_V_77_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.data_split_V_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17"],
		"CDFG" : "A_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10399934", "EstimateLatencyMax" : "164946110",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_ping_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.data_split_V_74_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.data_split_V_73_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.data_split_V_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23"],
		"CDFG" : "A_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6953150", "EstimateLatencyMax" : "161499326",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_ping_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.data_split_V_70_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.data_split_V_69_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.data_split_V_U", "Parent" : "18"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29"],
		"CDFG" : "A_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3500222", "EstimateLatencyMax" : "158046398",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_ping_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.data_split_V_66_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.data_split_V_65_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.data_split_V_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "463", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["33", "34", "35", "36", "37"],
		"CDFG" : "B_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125120", "EstimateLatencyMax" : "280629440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "463", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.local_B_ping_V_0_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.local_B_pong_V_0_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.data_split_V_62_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.data_split_V_61_U", "Parent" : "32"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.data_split_V_U", "Parent" : "32"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["39", "40", "41", "42", "43"],
		"CDFG" : "B_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125120", "EstimateLatencyMax" : "280629440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_1_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.local_B_ping_V_0_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.local_B_pong_V_0_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.data_split_V_58_U", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.data_split_V_57_U", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.data_split_V_U", "Parent" : "38"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["45", "46", "47", "48", "49"],
		"CDFG" : "B_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125120", "EstimateLatencyMax" : "280629440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_2_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.local_B_ping_V_0_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.local_B_pong_V_0_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.data_split_V_54_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.data_split_V_53_U", "Parent" : "44"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.data_split_V_U", "Parent" : "44"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["51", "52", "53", "54", "55"],
		"CDFG" : "B_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125120", "EstimateLatencyMax" : "280629440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_3_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.local_B_ping_V_0_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.local_B_pong_V_0_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.data_split_V_50_U", "Parent" : "50"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.data_split_V_49_U", "Parent" : "50"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.data_split_V_U", "Parent" : "50"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["57", "58", "59", "60", "61"],
		"CDFG" : "B_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125120", "EstimateLatencyMax" : "280629440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_4_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.local_B_ping_V_0_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.local_B_pong_V_0_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.data_split_V_46_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.data_split_V_45_U", "Parent" : "56"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.data_split_V_U", "Parent" : "56"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["63", "64", "65", "66", "67"],
		"CDFG" : "B_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125120", "EstimateLatencyMax" : "280629440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_5_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.local_B_ping_V_0_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.local_B_pong_V_0_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.data_split_V_42_U", "Parent" : "62"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.data_split_V_41_U", "Parent" : "62"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.data_split_V_U", "Parent" : "62"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["69", "70", "71", "72", "73"],
		"CDFG" : "B_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125120", "EstimateLatencyMax" : "280629440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_6_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.local_B_ping_V_0_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.local_B_pong_V_0_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.data_split_V_38_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.data_split_V_37_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.data_split_V_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["75", "76", "77", "78", "79"],
		"CDFG" : "B_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "100544", "EstimateLatencyMax" : "280488128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_ping_V_0_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_0_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.data_split_V_34_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.data_split_V_33_U", "Parent" : "74"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.data_split_V_U", "Parent" : "74"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_serialize_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["83", "84", "85", "86", "87"],
		"CDFG" : "C_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5463298", "EstimateLatencyMax" : "136468690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_0_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_0_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_1_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.local_C_ping_V_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.local_C_pong_V_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.data_split_V_30_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.data_split_V_29_U", "Parent" : "82"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.data_split_V_U", "Parent" : "82"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["89", "90", "91", "92", "93"],
		"CDFG" : "C_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5463298", "EstimateLatencyMax" : "136468690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_1_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_2_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.local_C_ping_V_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.local_C_pong_V_U", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.data_split_V_26_U", "Parent" : "88"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.data_split_V_25_U", "Parent" : "88"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.data_split_V_U", "Parent" : "88"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["95", "96", "97", "98", "99"],
		"CDFG" : "C_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5463298", "EstimateLatencyMax" : "136468690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_2_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_3_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x1111_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.local_C_ping_V_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.local_C_pong_V_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.data_split_V_22_U", "Parent" : "94"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.data_split_V_21_U", "Parent" : "94"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.data_split_V_U", "Parent" : "94"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["101", "102", "103", "104", "105"],
		"CDFG" : "C_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5463298", "EstimateLatencyMax" : "136468690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_3_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_4_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x1116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.local_C_ping_V_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.local_C_pong_V_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.data_split_V_18_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.data_split_V_17_U", "Parent" : "100"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.data_split_V_U", "Parent" : "100"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["107", "108", "109", "110", "111"],
		"CDFG" : "C_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5463298", "EstimateLatencyMax" : "136468690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_4_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_5_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "112", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x1121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.local_C_ping_V_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.local_C_pong_V_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.data_split_V_14_U", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.data_split_V_13_U", "Parent" : "106"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.data_split_V_U", "Parent" : "106"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["113", "114", "115", "116", "117"],
		"CDFG" : "C_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5463298", "EstimateLatencyMax" : "136468690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_5_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_6_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x1126_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.local_C_ping_V_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.local_C_pong_V_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.data_split_V_10_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.data_split_V_9_U", "Parent" : "112"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.data_split_V_U", "Parent" : "112"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["119", "120", "121", "122", "123"],
		"CDFG" : "C_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5463298", "EstimateLatencyMax" : "136468690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_6_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_7_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "124", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x1131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.local_C_ping_V_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.local_C_pong_V_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.data_split_V_6_U", "Parent" : "118"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.data_split_V_5_U", "Parent" : "118"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.data_split_V_U", "Parent" : "118"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["125", "126", "127", "128", "129"],
		"CDFG" : "C_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5456722", "EstimateLatencyMax" : "136422610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_7_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x1136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.local_C_ping_V_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.local_C_pong_V_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.data_split_V_2_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.data_split_V_1_U", "Parent" : "124"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.data_split_V_U", "Parent" : "124"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["131", "132", "133", "134", "135"],
		"CDFG" : "PE_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x1101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x1102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x1141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x1141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_A_0_0_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_C_0_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_D_U", "Parent" : "130"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U887", "Parent" : "130"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U888", "Parent" : "130"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["137", "138", "139", "140", "141"],
		"CDFG" : "PE_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x1106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x1145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x1145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_A_0_0_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_C_0_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_D_U", "Parent" : "136"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U896", "Parent" : "136"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U897", "Parent" : "136"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0", "Parent" : "0", "Child" : ["143", "144", "145", "146", "147"],
		"CDFG" : "PE_wrapper_0_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x1149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "375", "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x1149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.local_A_0_0_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.local_C_0_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.local_D_U", "Parent" : "142"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U905", "Parent" : "142"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U906", "Parent" : "142"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0", "Parent" : "0", "Child" : ["149", "150", "151", "152", "153"],
		"CDFG" : "PE_wrapper_0_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_3_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x1153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x1153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.local_A_0_0_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.local_C_0_U", "Parent" : "148"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.local_D_U", "Parent" : "148"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U914", "Parent" : "148"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U915", "Parent" : "148"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0", "Parent" : "0", "Child" : ["155", "156", "157", "158", "159"],
		"CDFG" : "PE_wrapper_0_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_4_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x1157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "399", "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x1157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.local_A_0_0_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.local_C_0_U", "Parent" : "154"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.local_D_U", "Parent" : "154"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U923", "Parent" : "154"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U924", "Parent" : "154"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0", "Parent" : "0", "Child" : ["161", "162", "163", "164", "165"],
		"CDFG" : "PE_wrapper_0_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_5_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x1161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "411", "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x1161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.local_A_0_0_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.local_C_0_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.local_D_U", "Parent" : "160"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U932", "Parent" : "160"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U933", "Parent" : "160"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0", "Parent" : "0", "Child" : ["167", "168", "169", "170", "171"],
		"CDFG" : "PE_wrapper_0_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_6_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x1165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "423", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x1165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.local_A_0_0_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.local_C_0_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.local_D_U", "Parent" : "166"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U941", "Parent" : "166"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U942", "Parent" : "166"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0", "Parent" : "0", "Child" : ["173", "174", "175", "176", "177"],
		"CDFG" : "PE_wrapper_0_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_7_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "322", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "124", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x1137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x1169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "435", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x1169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.local_A_0_0_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.local_C_0_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.local_D_U", "Parent" : "172"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U950", "Parent" : "172"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U951", "Parent" : "172"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["179", "180", "181", "182", "183"],
		"CDFG" : "PE_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x1102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x1103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x1142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "348", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x1142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_A_0_0_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_C_0_U", "Parent" : "178"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_D_U", "Parent" : "178"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U959", "Parent" : "178"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U960", "Parent" : "178"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["185", "186", "187", "188", "189"],
		"CDFG" : "PE_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x1108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x1146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "360", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x1146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_A_0_0_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_C_0_U", "Parent" : "184"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_D_U", "Parent" : "184"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U968", "Parent" : "184"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U969", "Parent" : "184"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0", "Parent" : "0", "Child" : ["191", "192", "193", "194", "195"],
		"CDFG" : "PE_wrapper_1_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x1150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "372", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x1150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.local_A_0_0_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.local_C_0_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.local_D_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U977", "Parent" : "190"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U978", "Parent" : "190"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0", "Parent" : "0", "Child" : ["197", "198", "199", "200", "201"],
		"CDFG" : "PE_wrapper_1_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_3_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x1154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x1154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.local_A_0_0_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.local_C_0_U", "Parent" : "196"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.local_D_U", "Parent" : "196"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U986", "Parent" : "196"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U987", "Parent" : "196"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0", "Parent" : "0", "Child" : ["203", "204", "205", "206", "207"],
		"CDFG" : "PE_wrapper_1_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x1158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x1158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.local_A_0_0_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.local_C_0_U", "Parent" : "202"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.local_D_U", "Parent" : "202"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U995", "Parent" : "202"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U996", "Parent" : "202"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0", "Parent" : "0", "Child" : ["209", "210", "211", "212", "213"],
		"CDFG" : "PE_wrapper_1_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_5_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x1162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "408", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x1162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.local_A_0_0_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.local_C_0_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.local_D_U", "Parent" : "208"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1004", "Parent" : "208"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1005", "Parent" : "208"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0", "Parent" : "0", "Child" : ["215", "216", "217", "218", "219"],
		"CDFG" : "PE_wrapper_1_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_6_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x1166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "420", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x1166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.local_A_0_0_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.local_C_0_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.local_D_U", "Parent" : "214"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1013", "Parent" : "214"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1014", "Parent" : "214"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0", "Parent" : "0", "Child" : ["221", "222", "223", "224", "225"],
		"CDFG" : "PE_wrapper_1_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_7_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "323", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x1137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x1138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x1170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "432", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x1170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.local_A_0_0_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.local_C_0_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.local_D_U", "Parent" : "220"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1022", "Parent" : "220"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1023", "Parent" : "220"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["227", "228", "229", "230", "231"],
		"CDFG" : "PE_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x1103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x1104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x1143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x1143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_A_0_0_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_C_0_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_D_U", "Parent" : "226"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1031", "Parent" : "226"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1032", "Parent" : "226"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["233", "234", "235", "236", "237"],
		"CDFG" : "PE_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x1108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x1147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "357", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x1147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_A_0_0_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_C_0_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_D_U", "Parent" : "232"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1040", "Parent" : "232"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1041", "Parent" : "232"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0", "Parent" : "0", "Child" : ["239", "240", "241", "242", "243"],
		"CDFG" : "PE_wrapper_2_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x1151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "369", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x1151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.local_A_0_0_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.local_C_0_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.local_D_U", "Parent" : "238"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1049", "Parent" : "238"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1050", "Parent" : "238"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0", "Parent" : "0", "Child" : ["245", "246", "247", "248", "249"],
		"CDFG" : "PE_wrapper_2_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_3_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x1155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "381", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x1155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.local_A_0_0_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.local_C_0_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.local_D_U", "Parent" : "244"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1058", "Parent" : "244"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1059", "Parent" : "244"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0", "Parent" : "0", "Child" : ["251", "252", "253", "254", "255"],
		"CDFG" : "PE_wrapper_2_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_4_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "298", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "298", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x1159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "393", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x1159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.local_A_0_0_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.local_C_0_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.local_D_U", "Parent" : "250"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1067", "Parent" : "250"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1068", "Parent" : "250"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0", "Parent" : "0", "Child" : ["257", "258", "259", "260", "261"],
		"CDFG" : "PE_wrapper_2_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_5_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x1163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "405", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x1163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.local_A_0_0_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.local_C_0_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.local_D_U", "Parent" : "256"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1076", "Parent" : "256"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1077", "Parent" : "256"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0", "Parent" : "0", "Child" : ["263", "264", "265", "266", "267"],
		"CDFG" : "PE_wrapper_2_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_6_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x1167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "417", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x1167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.local_A_0_0_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.local_C_0_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.local_D_U", "Parent" : "262"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1085", "Parent" : "262"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1086", "Parent" : "262"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0", "Parent" : "0", "Child" : ["269", "270", "271", "272", "273"],
		"CDFG" : "PE_wrapper_2_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_7_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "324", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x1138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x1139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x1139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x1171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x1171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.local_A_0_0_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.local_C_0_U", "Parent" : "268"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.local_D_U", "Parent" : "268"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1094", "Parent" : "268"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1095", "Parent" : "268"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["275", "276", "277", "278", "279"],
		"CDFG" : "PE_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "326", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x1104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_0_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "334", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x1105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x1144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "342", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x1144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_A_0_0_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_C_0_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_D_U", "Parent" : "274"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1103", "Parent" : "274"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1104", "Parent" : "274"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["281", "282", "283", "284", "285"],
		"CDFG" : "PE_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x1148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "354", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x1148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_A_0_0_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_C_0_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_D_U", "Parent" : "280"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1112", "Parent" : "280"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1113", "Parent" : "280"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0", "Parent" : "0", "Child" : ["287", "288", "289", "290", "291"],
		"CDFG" : "PE_wrapper_3_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "328", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_2_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "336", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x1152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "366", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x1152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.local_A_0_0_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.local_C_0_U", "Parent" : "286"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.local_D_U", "Parent" : "286"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1121", "Parent" : "286"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1122", "Parent" : "286"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0", "Parent" : "0", "Child" : ["293", "294", "295", "296", "297"],
		"CDFG" : "PE_wrapper_3_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_3_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "298", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "329", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_3_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "337", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x1156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "378", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x1156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.local_A_0_0_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.local_C_0_U", "Parent" : "292"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.local_D_U", "Parent" : "292"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1130", "Parent" : "292"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1131", "Parent" : "292"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0", "Parent" : "0", "Child" : ["299", "300", "301", "302", "303"],
		"CDFG" : "PE_wrapper_3_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_4_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_4_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "338", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x1160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "390", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x1160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.local_A_0_0_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.local_C_0_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.local_D_U", "Parent" : "298"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1139", "Parent" : "298"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1140", "Parent" : "298"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0", "Parent" : "0", "Child" : ["305", "306", "307", "308", "309"],
		"CDFG" : "PE_wrapper_3_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "298", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "331", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_5_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "339", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x1164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "402", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x1164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.local_A_0_0_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.local_C_0_U", "Parent" : "304"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.local_D_U", "Parent" : "304"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1148", "Parent" : "304"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1149", "Parent" : "304"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0", "Parent" : "0", "Child" : ["311", "312", "313", "314", "315"],
		"CDFG" : "PE_wrapper_3_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_6_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "332", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_6_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "340", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x1168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "414", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x1168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.local_A_0_0_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.local_C_0_U", "Parent" : "310"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.local_D_U", "Parent" : "310"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1157", "Parent" : "310"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1158", "Parent" : "310"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0", "Parent" : "0", "Child" : ["317", "318", "319", "320", "321"],
		"CDFG" : "PE_wrapper_3_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_7_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "333", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x1139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x1139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_7_x1140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x1140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x1172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x1172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.local_A_0_0_U", "Parent" : "316"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.local_C_0_U", "Parent" : "316"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.local_D_U", "Parent" : "316"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1166", "Parent" : "316"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1167", "Parent" : "316"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_0_8_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_1_8_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_2_8_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_3_8_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_2_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_3_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_4_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "298", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_5_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_6_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_7_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_0_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_0_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_1_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x1110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_2_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_2_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x1115_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_3_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_3_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x1120_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_4_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_4_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "298", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x1125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_5_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_5_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x1130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_6_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_6_x1135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x1135_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_7_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_7_x1140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x1140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x1_U0", "Parent" : "0", "Child" : ["343", "344"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33489", "EstimateLatencyMax" : "33489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x1144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x1144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x1_U0.local_D_V_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x1_U0.data_split_V_U", "Parent" : "342"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x1_U0", "Parent" : "0", "Child" : ["346", "347"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35889", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "342", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "348", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x1143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x1143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x1_U0.local_D_V_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x1_U0.data_split_V_U", "Parent" : "345"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["349", "350"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38241", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x1142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x1142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x1_U0.local_D_V_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x1_U0.data_split_V_U", "Parent" : "348"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["352", "353"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40593", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "348", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x1141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x1141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x1_U0.local_D_V_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x1_U0.data_split_V_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x1_U0", "Parent" : "0", "Child" : ["355", "356"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33489", "EstimateLatencyMax" : "33489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "357", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x1148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x1148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x1_U0.local_D_V_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x1_U0.data_split_V_U", "Parent" : "354"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x1_U0", "Parent" : "0", "Child" : ["358", "359"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35889", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "354", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "360", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x1147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x1147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x1_U0.local_D_V_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x1_U0.data_split_V_U", "Parent" : "357"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["361", "362"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38241", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "357", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x1146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x1146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x1_U0.local_D_V_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x1_U0.data_split_V_U", "Parent" : "360"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["364", "365"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40593", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "360", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "444", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x1145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x1145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x1_U0.local_D_V_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x1_U0.data_split_V_U", "Parent" : "363"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x1_U0", "Parent" : "0", "Child" : ["367", "368"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "33489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "369", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x1152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x1152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x1_U0.local_D_V_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x1_U0.data_split_V_U", "Parent" : "366"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x1_U0", "Parent" : "0", "Child" : ["370", "371"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "366", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "372", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x1151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x1151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x1_U0.local_D_V_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x1_U0.data_split_V_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["373", "374"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "369", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "375", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x1150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x1150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x1_U0.local_D_V_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x1_U0.data_split_V_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["376", "377"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "372", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x1149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x1149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x1_U0.local_D_V_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x1_U0.data_split_V_U", "Parent" : "375"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x1_U0", "Parent" : "0", "Child" : ["379", "380"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "33489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "381", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x1156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x1156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x1_U0.local_D_V_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x1_U0.data_split_V_U", "Parent" : "378"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x1_U0", "Parent" : "0", "Child" : ["382", "383"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "378", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x1155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x1155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x1_U0.local_D_V_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x1_U0.data_split_V_U", "Parent" : "381"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["385", "386"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "381", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x1154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x1154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x1_U0.local_D_V_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x1_U0.data_split_V_U", "Parent" : "384"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["388", "389"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "384", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x1153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x1153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x1_U0.local_D_V_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x1_U0.data_split_V_U", "Parent" : "387"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x1_U0", "Parent" : "0", "Child" : ["391", "392"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "33489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "393", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x1160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "298", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x1160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x1_U0.local_D_V_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x1_U0.data_split_V_U", "Parent" : "390"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x1_U0", "Parent" : "0", "Child" : ["394", "395"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "390", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x1159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x1159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x1_U0.local_D_V_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x1_U0.data_split_V_U", "Parent" : "393"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x1_U0", "Parent" : "0", "Child" : ["397", "398"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "393", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "399", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x1158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x1158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x1_U0.local_D_V_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x1_U0.data_split_V_U", "Parent" : "396"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x1_U0", "Parent" : "0", "Child" : ["400", "401"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "396", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "441", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x1157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x1157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x1_U0.local_D_V_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x1_U0.data_split_V_U", "Parent" : "399"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x1_U0", "Parent" : "0", "Child" : ["403", "404"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "33489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "405", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x1164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x1164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x1_U0.local_D_V_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x1_U0.data_split_V_U", "Parent" : "402"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x1_U0", "Parent" : "0", "Child" : ["406", "407"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "402", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "408", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x1163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x1163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x1_U0.local_D_V_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x1_U0.data_split_V_U", "Parent" : "405"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x1_U0", "Parent" : "0", "Child" : ["409", "410"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "405", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "411", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x1162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x1162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x1_U0.local_D_V_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x1_U0.data_split_V_U", "Parent" : "408"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x1_U0", "Parent" : "0", "Child" : ["412", "413"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "408", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x1161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x1161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x1_U0.local_D_V_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x1_U0.data_split_V_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x1_U0", "Parent" : "0", "Child" : ["415", "416"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "33489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "417", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x1168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x1168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x1_U0.local_D_V_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x1_U0.data_split_V_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x1_U0", "Parent" : "0", "Child" : ["418", "419"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "414", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "420", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x1167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x1167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x1_U0.local_D_V_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x1_U0.data_split_V_U", "Parent" : "417"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x1_U0", "Parent" : "0", "Child" : ["421", "422"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "417", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "423", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x1166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x1166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x1_U0.local_D_V_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x1_U0.data_split_V_U", "Parent" : "420"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x1_U0", "Parent" : "0", "Child" : ["424", "425"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "420", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "439", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x1165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x1165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x1_U0.local_D_V_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x1_U0.data_split_V_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x1_U0", "Parent" : "0", "Child" : ["427", "428"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "33489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x1172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x1172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x1_U0.local_D_V_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x1_U0.data_split_V_U", "Parent" : "426"},
	{"ID" : "429", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x1_U0", "Parent" : "0", "Child" : ["430", "431"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "426", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "432", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x1171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x1171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x1_U0.local_D_V_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x1_U0.data_split_V_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x1_U0", "Parent" : "0", "Child" : ["433", "434"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "429", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "435", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x1170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x1170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x1_U0.local_D_V_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x1_U0.data_split_V_U", "Parent" : "432"},
	{"ID" : "435", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x1_U0", "Parent" : "0", "Child" : ["436", "437"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "432", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "438", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x1169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x1169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x1_U0.local_D_V_U", "Parent" : "435"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x1_U0.data_split_V_U", "Parent" : "435"},
	{"ID" : "438", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_boundary_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "439", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "435", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "439", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_6_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "438", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "423", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_5_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "439", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "441", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "411", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_4_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "399", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_3_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "441", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "387", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "443", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_2_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "444", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "375", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "444", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_1_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "443", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "363", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "445", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_0_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "444", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x1205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x1205_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "351", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "446", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "447", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "445", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "447", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x1_U0", "Parent" : "0", "Child" : ["448"],
		"CDFG" : "D_drain_IO_L3_out_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13382", "EstimateLatencyMax" : "13382",
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
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "452", "DependentChanDepth" : "29", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x1_U0.mem_data_split_V_U", "Parent" : "447"},
	{"ID" : "449", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "450", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c2_U", "Parent" : "0"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "452", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c_U", "Parent" : "0"},
	{"ID" : "453", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "454", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "455", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "456", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "458", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "459", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "460", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "461", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "462", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "465", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "468", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "470", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "471", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "472", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "474", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "475", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "476", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "478", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "479", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "480", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "481", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "482", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "483", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "484", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "485", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "486", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "487", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "488", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "489", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "490", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "491", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "493", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "494", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "495", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "496", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "497", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "498", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "499", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "500", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "501", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "502", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "504", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "505", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "506", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "507", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "508", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "510", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "511", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "512", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "513", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "514", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "515", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "516", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "518", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "519", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "520", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "521", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "522", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "523", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "524", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x1_U", "Parent" : "0"},
	{"ID" : "525", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "526", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "528", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "529", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "531", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "532", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "534", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "537", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "541", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x1_U", "Parent" : "0"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "561", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "562", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "564", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "565", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "567", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "570", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "573", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "579", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "582", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "583", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x1_U", "Parent" : "0"},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "594", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x1_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_3_x1_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x1_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_4_x1_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x1_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_5_x1_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x1_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_6_x1_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x1_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x1_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_7_x1_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_3_x1_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_2_x1_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_1_x1_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_0_x1_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_3_x1_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_2_x1_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_1_x1_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_0_x1_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_3_x1_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_2_x1_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_1_x1_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_0_x1_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_3_x1_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_2_x1_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_1_x1_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_0_x1_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_3_x1_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_2_x1_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_1_x1_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_0_x1_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_3_x1_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_2_x1_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_1_x1_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_0_x1_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_3_x1_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_2_x1_U", "Parent" : "0"},
	{"ID" : "650", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_1_x1_U", "Parent" : "0"},
	{"ID" : "651", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_0_x1_U", "Parent" : "0"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_3_x1_U", "Parent" : "0"},
	{"ID" : "653", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_2_x1_U", "Parent" : "0"},
	{"ID" : "654", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_1_x1_U", "Parent" : "0"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_0_x1_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_7_x1_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_6_x1_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_5_x1_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_4_x1_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_3_x1_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_2_x1_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_1_x1_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_0_x1_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x1 {
		gmem_C {Type I LastRead 72 FirstWrite -1}
		gmem_D {Type O LastRead 3 FirstWrite 6}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}}
	kernel0_x1_entry6 {
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}
		D_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x1_entry15 {
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}
		D_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x1 {
		fifo_A_A_IO_L3_in_serialize_x11 {Type O LastRead -1 FirstWrite 2}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L3_in_x1 {
		fifo_A_in {Type I LastRead 8 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_0_x1 {
		fifo_A_A_IO_L2_in_0_x15 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x16 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_0_0_x125 {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x16 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x17 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_1_0_x134 {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_2_x1 {
		fifo_A_A_IO_L2_in_2_x17 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x18 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_2_0_x143 {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_boundary_x1 {
		fifo_A_A_IO_L2_in_3_x18 {Type I LastRead 7 FirstWrite -1}
		fifo_A_PE_3_0_x152 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L3_in_serialize_x1 {
		fifo_B_B_IO_L3_in_serialize_x12 {Type O LastRead -1 FirstWrite 3}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L3_in_x1 {
		fifo_B_in {Type I LastRead 6 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 6}}
	B_IO_L2_in_0_x1 {
		fifo_B_B_IO_L2_in_0_x19 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x110 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_0_x161 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_1_x1 {
		fifo_B_B_IO_L2_in_1_x110 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x111 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_1_x166 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_2_x1 {
		fifo_B_B_IO_L2_in_2_x111 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x112 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_2_x171 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_3_x1 {
		fifo_B_B_IO_L2_in_3_x112 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x113 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_3_x176 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_4_x1 {
		fifo_B_B_IO_L2_in_4_x113 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x114 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_4_x181 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_5_x1 {
		fifo_B_B_IO_L2_in_5_x114 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x115 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_5_x186 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_6_x1 {
		fifo_B_B_IO_L2_in_6_x115 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x116 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_6_x191 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_boundary_x1 {
		fifo_B_B_IO_L2_in_7_x116 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_0_7_x196 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L3_in_serialize_x1 {
		gmem_C {Type I LastRead 72 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 73}
		C {Type I LastRead 0 FirstWrite -1}}
	C_IO_L3_in_x1 {
		fifo_C_in {Type I LastRead 6 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_0_x1 {
		fifo_C_C_IO_L2_in_0_x117 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_1_x118 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_0_x1101 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_1_x1 {
		fifo_C_C_IO_L2_in_1_x118 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_2_x119 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_1_x1106 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_2_x1 {
		fifo_C_C_IO_L2_in_2_x119 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_3_x120 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_2_x1111 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_3_x1 {
		fifo_C_C_IO_L2_in_3_x120 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_4_x121 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_3_x1116 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_4_x1 {
		fifo_C_C_IO_L2_in_4_x121 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_5_x122 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_4_x1121 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_5_x1 {
		fifo_C_C_IO_L2_in_5_x122 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_6_x123 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_5_x1126 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_6_x1 {
		fifo_C_C_IO_L2_in_6_x123 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_7_x124 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_6_x1131 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_boundary_x1 {
		fifo_C_C_IO_L2_in_7_x124 {Type I LastRead 5 FirstWrite -1}
		fifo_C_PE_0_7_x1136 {Type O LastRead -1 FirstWrite 9}}
	PE_wrapper_0_0_x1 {
		fifo_A_PE_0_0_x125 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_1_x126 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_0_x161 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_0_x162 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_0_x1101 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_0_x1102 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_0_x1141 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_1_x1 {
		fifo_A_PE_0_1_x126 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_2_x127 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_1_x166 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_1_x167 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_1_x1106 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_1_x1107 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_1_x1145 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_2_x1 {
		fifo_A_PE_0_2_x127 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_3_x128 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_2_x171 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_2_x172 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_2_x1111 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_2_x1112 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_2_x1149 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_3_x1 {
		fifo_A_PE_0_3_x128 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_4_x129 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_3_x176 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_3_x177 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_3_x1116 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_3_x1117 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_3_x1153 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_4_x1 {
		fifo_A_PE_0_4_x129 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_5_x130 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_4_x181 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_4_x182 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_4_x1121 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_4_x1122 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_4_x1157 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_5_x1 {
		fifo_A_PE_0_5_x130 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_6_x131 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_5_x186 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_5_x187 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_5_x1126 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_5_x1127 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_5_x1161 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_6_x1 {
		fifo_A_PE_0_6_x131 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_7_x132 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_6_x191 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_6_x192 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_6_x1131 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_6_x1132 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_6_x1165 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_7_x1 {
		fifo_A_PE_0_7_x132 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_8_x133 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_7_x196 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_7_x197 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_7_x1136 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_7_x1137 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_7_x1169 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_0_x1 {
		fifo_A_PE_1_0_x134 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_1_x135 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_0_x162 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_0_x163 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_0_x1102 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_0_x1103 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_0_x1142 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_1_x1 {
		fifo_A_PE_1_1_x135 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_2_x136 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_1_x167 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_1_x168 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_1_x1107 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_1_x1108 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_1_x1146 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_2_x1 {
		fifo_A_PE_1_2_x136 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_3_x137 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_2_x172 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_2_x173 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_2_x1112 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_2_x1113 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_2_x1150 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_3_x1 {
		fifo_A_PE_1_3_x137 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_4_x138 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_3_x177 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_3_x178 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_3_x1117 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_3_x1118 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_3_x1154 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_4_x1 {
		fifo_A_PE_1_4_x138 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_5_x139 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_4_x182 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_4_x183 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_4_x1122 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_4_x1123 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_4_x1158 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_5_x1 {
		fifo_A_PE_1_5_x139 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_6_x140 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_5_x187 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_5_x188 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_5_x1127 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_5_x1128 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_5_x1162 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_6_x1 {
		fifo_A_PE_1_6_x140 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_7_x141 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_6_x192 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_6_x193 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_6_x1132 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_6_x1133 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_6_x1166 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_7_x1 {
		fifo_A_PE_1_7_x141 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_8_x142 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_7_x197 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_7_x198 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_7_x1137 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_7_x1138 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_7_x1170 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_0_x1 {
		fifo_A_PE_2_0_x143 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_1_x144 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_0_x163 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_0_x164 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_0_x1103 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_0_x1104 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_0_x1143 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_1_x1 {
		fifo_A_PE_2_1_x144 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_2_x145 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_1_x168 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_1_x169 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_1_x1108 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_1_x1109 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_1_x1147 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_2_x1 {
		fifo_A_PE_2_2_x145 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_3_x146 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_2_x173 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_2_x174 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_2_x1113 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_2_x1114 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_2_x1151 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_3_x1 {
		fifo_A_PE_2_3_x146 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_4_x147 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_3_x178 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_3_x179 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_3_x1118 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_3_x1119 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_3_x1155 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_4_x1 {
		fifo_A_PE_2_4_x147 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_5_x148 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_4_x183 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_4_x184 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_4_x1123 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_4_x1124 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_4_x1159 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_5_x1 {
		fifo_A_PE_2_5_x148 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_6_x149 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_5_x188 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_5_x189 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_5_x1128 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_5_x1129 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_5_x1163 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_6_x1 {
		fifo_A_PE_2_6_x149 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_7_x150 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_6_x193 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_6_x194 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_6_x1133 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_6_x1134 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_6_x1167 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_7_x1 {
		fifo_A_PE_2_7_x150 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_8_x151 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_7_x198 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_7_x199 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_7_x1138 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_7_x1139 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_7_x1171 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_0_x1 {
		fifo_A_PE_3_0_x152 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_1_x153 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_0_x164 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_0_x165 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_0_x1104 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_0_x1105 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_0_x1144 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_1_x1 {
		fifo_A_PE_3_1_x153 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_2_x154 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_1_x169 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_1_x170 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_1_x1109 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_1_x1110 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_1_x1148 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_2_x1 {
		fifo_A_PE_3_2_x154 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_3_x155 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_2_x174 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_2_x175 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_2_x1114 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_2_x1115 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_2_x1152 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_3_x1 {
		fifo_A_PE_3_3_x155 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_4_x156 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_3_x179 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_3_x180 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_3_x1119 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_3_x1120 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_3_x1156 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_4_x1 {
		fifo_A_PE_3_4_x156 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_5_x157 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_4_x184 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_4_x185 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_4_x1124 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_4_x1125 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_4_x1160 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_5_x1 {
		fifo_A_PE_3_5_x157 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_6_x158 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_5_x189 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_5_x190 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_5_x1129 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_5_x1130 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_5_x1164 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_6_x1 {
		fifo_A_PE_3_6_x158 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_7_x159 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_6_x194 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_6_x195 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_6_x1134 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_6_x1135 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_6_x1168 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_7_x1 {
		fifo_A_PE_3_7_x159 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_8_x160 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_7_x199 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_7_x1100 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_7_x1139 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_7_x1140 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_7_x1172 {Type O LastRead -1 FirstWrite 12}}
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
		gmem_D {Type O LastRead 3 FirstWrite 6}
		fifo_D_drain_local_in {Type I LastRead 4 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1463927139", "Max" : "1224218363"}
	, {"Name" : "Interval", "Min" : "-239708718", "Max" : "-239708718"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 32 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 32 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
	gmem_D { m_axi {  { m_axi_gmem_D_AWVALID VALID 1 1 }  { m_axi_gmem_D_AWREADY READY 0 1 }  { m_axi_gmem_D_AWADDR ADDR 1 64 }  { m_axi_gmem_D_AWID ID 1 1 }  { m_axi_gmem_D_AWLEN LEN 1 32 }  { m_axi_gmem_D_AWSIZE SIZE 1 3 }  { m_axi_gmem_D_AWBURST BURST 1 2 }  { m_axi_gmem_D_AWLOCK LOCK 1 2 }  { m_axi_gmem_D_AWCACHE CACHE 1 4 }  { m_axi_gmem_D_AWPROT PROT 1 3 }  { m_axi_gmem_D_AWQOS QOS 1 4 }  { m_axi_gmem_D_AWREGION REGION 1 4 }  { m_axi_gmem_D_AWUSER USER 1 1 }  { m_axi_gmem_D_WVALID VALID 1 1 }  { m_axi_gmem_D_WREADY READY 0 1 }  { m_axi_gmem_D_WDATA DATA 1 512 }  { m_axi_gmem_D_WSTRB STRB 1 64 }  { m_axi_gmem_D_WLAST LAST 1 1 }  { m_axi_gmem_D_WID ID 1 1 }  { m_axi_gmem_D_WUSER USER 1 1 }  { m_axi_gmem_D_ARVALID VALID 1 1 }  { m_axi_gmem_D_ARREADY READY 0 1 }  { m_axi_gmem_D_ARADDR ADDR 1 64 }  { m_axi_gmem_D_ARID ID 1 1 }  { m_axi_gmem_D_ARLEN LEN 1 32 }  { m_axi_gmem_D_ARSIZE SIZE 1 3 }  { m_axi_gmem_D_ARBURST BURST 1 2 }  { m_axi_gmem_D_ARLOCK LOCK 1 2 }  { m_axi_gmem_D_ARCACHE CACHE 1 4 }  { m_axi_gmem_D_ARPROT PROT 1 3 }  { m_axi_gmem_D_ARQOS QOS 1 4 }  { m_axi_gmem_D_ARREGION REGION 1 4 }  { m_axi_gmem_D_ARUSER USER 1 1 }  { m_axi_gmem_D_RVALID VALID 0 1 }  { m_axi_gmem_D_RREADY READY 1 1 }  { m_axi_gmem_D_RDATA DATA 0 512 }  { m_axi_gmem_D_RLAST LAST 0 1 }  { m_axi_gmem_D_RID ID 0 1 }  { m_axi_gmem_D_RUSER USER 0 1 }  { m_axi_gmem_D_RRESP RESP 0 2 }  { m_axi_gmem_D_BVALID VALID 0 1 }  { m_axi_gmem_D_BREADY READY 1 1 }  { m_axi_gmem_D_BRESP RESP 0 2 }  { m_axi_gmem_D_BID ID 0 1 }  { m_axi_gmem_D_BUSER USER 0 1 } } }
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_d0 mem_din 1 512 }  { A_q0 mem_dout 0 512 }  { A_we0 mem_we 1 1 }  { A_address1 mem_address 1 10 }  { A_ce1 mem_ce 1 1 }  { A_d1 mem_din 1 512 }  { A_q1 mem_dout 0 512 }  { A_we1 mem_we 1 1 } } }
	B { ap_memory {  { B_address0 mem_address 1 10 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 512 }  { B_q0 mem_dout 0 512 }  { B_we0 mem_we 1 1 }  { B_address1 mem_address 1 10 }  { B_ce1 mem_ce 1 1 }  { B_d1 mem_din 1 512 }  { B_q1 mem_dout 0 512 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
	D { ap_none {  { D in_data 0 64 }  { D_ap_vld in_vld 0 1 } } }
}
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
	{ A int 512 regular {array 1024 { 1 3 } 1 1 }  }
	{ B int 512 regular {array 1024 { 1 3 } 1 1 }  }
	{ C int 64 regular  }
	{ D int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_D", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
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
	{ A_address0 sc_out sc_lv 10 signal 2 } 
	{ A_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_d0 sc_out sc_lv 512 signal 2 } 
	{ A_q0 sc_in sc_lv 512 signal 2 } 
	{ A_we0 sc_out sc_logic 1 signal 2 } 
	{ A_address1 sc_out sc_lv 10 signal 2 } 
	{ A_ce1 sc_out sc_logic 1 signal 2 } 
	{ A_d1 sc_out sc_lv 512 signal 2 } 
	{ A_q1 sc_in sc_lv 512 signal 2 } 
	{ A_we1 sc_out sc_logic 1 signal 2 } 
	{ B_address0 sc_out sc_lv 10 signal 3 } 
	{ B_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_d0 sc_out sc_lv 512 signal 3 } 
	{ B_q0 sc_in sc_lv 512 signal 3 } 
	{ B_we0 sc_out sc_logic 1 signal 3 } 
	{ B_address1 sc_out sc_lv 10 signal 3 } 
	{ B_ce1 sc_out sc_logic 1 signal 3 } 
	{ B_d1 sc_out sc_lv 512 signal 3 } 
	{ B_q1 sc_in sc_lv 512 signal 3 } 
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
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "d0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "we0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "d1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "12", "18", "24", "30", "31", "32", "36", "40", "44", "48", "52", "56", "60", "66", "67", "68", "74", "80", "86", "92", "98", "104", "110", "116", "122", "128", "134", "140", "146", "152", "158", "164", "170", "176", "182", "188", "194", "200", "206", "212", "218", "224", "230", "236", "242", "248", "254", "260", "266", "272", "278", "284", "290", "296", "302", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "331", "334", "337", "340", "343", "346", "349", "352", "355", "358", "361", "364", "367", "370", "373", "376", "379", "382", "385", "388", "391", "394", "397", "400", "403", "406", "409", "412", "415", "418", "421", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649"],
		"CDFG" : "kernel0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1463821114", "EstimateLatencyMax" : "1224112338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x1_entry6_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x1_U0"},
			{"ID" : "30", "Name" : "B_IO_L3_in_serialize_x1_U0"},
			{"ID" : "66", "Name" : "C_IO_L3_in_serialize_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "308", "Name" : "A_PE_dummy_in_0_x1_U0"},
			{"ID" : "309", "Name" : "A_PE_dummy_in_1_x1_U0"},
			{"ID" : "310", "Name" : "A_PE_dummy_in_2_x1_U0"},
			{"ID" : "311", "Name" : "A_PE_dummy_in_3_x1_U0"},
			{"ID" : "312", "Name" : "B_PE_dummy_in_0_x1_U0"},
			{"ID" : "313", "Name" : "B_PE_dummy_in_1_x1_U0"},
			{"ID" : "314", "Name" : "B_PE_dummy_in_2_x1_U0"},
			{"ID" : "315", "Name" : "B_PE_dummy_in_3_x1_U0"},
			{"ID" : "316", "Name" : "B_PE_dummy_in_4_x1_U0"},
			{"ID" : "317", "Name" : "B_PE_dummy_in_5_x1_U0"},
			{"ID" : "318", "Name" : "B_PE_dummy_in_6_x1_U0"},
			{"ID" : "319", "Name" : "B_PE_dummy_in_7_x1_U0"},
			{"ID" : "320", "Name" : "C_PE_dummy_in_0_x1_U0"},
			{"ID" : "321", "Name" : "C_PE_dummy_in_1_x1_U0"},
			{"ID" : "322", "Name" : "C_PE_dummy_in_2_x1_U0"},
			{"ID" : "323", "Name" : "C_PE_dummy_in_3_x1_U0"},
			{"ID" : "324", "Name" : "C_PE_dummy_in_4_x1_U0"},
			{"ID" : "325", "Name" : "C_PE_dummy_in_5_x1_U0"},
			{"ID" : "326", "Name" : "C_PE_dummy_in_6_x1_U0"},
			{"ID" : "327", "Name" : "C_PE_dummy_in_7_x1_U0"},
			{"ID" : "433", "Name" : "D_drain_IO_L3_out_serialize_x1_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "C_IO_L3_in_serialize_x1_U0", "Port" : "gmem_C"}]},
			{"Name" : "gmem_D", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "D_drain_IO_L3_out_serialize_x1_U0", "Port" : "gmem_D"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x1_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "B_IO_L3_in_serialize_x1_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"},
			{"Name" : "D", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x1_entry6_U0", "Parent" : "0",
		"CDFG" : "kernel0_x1_entry6",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "434", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "435", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x1_entry15_U0", "Parent" : "0",
		"CDFG" : "kernel0_x1_entry15",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "434", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "435", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "436", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "433", "DependentChan" : "437", "DependentChanDepth" : "29", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x1_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "A_IO_L3_in_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2049", "EstimateLatencyMax" : "2049",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L3_in_serialize_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "438", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L3_in_serialize_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x1_U0.add_11ns_11ns_11_1_1_U827", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6291458", "EstimateLatencyMax" : "6291458",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "438", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "439", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11"],
		"CDFG" : "A_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12702722", "EstimateLatencyMax" : "113369090",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "439", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "440", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "441", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_ping_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.data_split_V_48_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.data_split_V_47_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x1_U0.data_split_V_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17"],
		"CDFG" : "A_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9547778", "EstimateLatencyMax" : "110214146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "440", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "442", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "164", "DependentChan" : "443", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_ping_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.data_split_V_44_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.data_split_V_43_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x1_U0.data_split_V_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23"],
		"CDFG" : "A_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6392834", "EstimateLatencyMax" : "107059202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "442", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "444", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "445", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_ping_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.data_split_V_40_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.data_split_V_39_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x1_U0.data_split_V_U", "Parent" : "18"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29"],
		"CDFG" : "A_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3231746", "EstimateLatencyMax" : "53572610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "444", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "446", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_ping_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.data_split_V_36_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.data_split_V_35_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x1_U0.data_split_V_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x1_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6145", "EstimateLatencyMax" : "6145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "447", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49154", "EstimateLatencyMax" : "49154",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "447", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "448", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["33", "34", "35"],
		"CDFG" : "B_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83976", "EstimateLatencyMax" : "25345032",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "448", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.local_B_ping_V_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.local_B_pong_V_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x1_U0.data_split_V_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["37", "38", "39"],
		"CDFG" : "B_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83976", "EstimateLatencyMax" : "25345032",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_1_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "122", "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.local_B_ping_V_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.local_B_pong_V_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x1_U0.data_split_V_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["41", "42", "43"],
		"CDFG" : "B_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83976", "EstimateLatencyMax" : "25345032",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_2_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "128", "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.local_B_ping_V_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.local_B_pong_V_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x1_U0.data_split_V_U", "Parent" : "40"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["45", "46", "47"],
		"CDFG" : "B_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83976", "EstimateLatencyMax" : "25345032",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_3_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "134", "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.local_B_ping_V_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.local_B_pong_V_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x1_U0.data_split_V_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["49", "50", "51"],
		"CDFG" : "B_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83976", "EstimateLatencyMax" : "25345032",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_4_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.local_B_ping_V_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.local_B_pong_V_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x1_U0.data_split_V_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["53", "54", "55"],
		"CDFG" : "B_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83976", "EstimateLatencyMax" : "25345032",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_5_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "146", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.local_B_ping_V_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.local_B_pong_V_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x1_U0.data_split_V_U", "Parent" : "52"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["57", "58", "59"],
		"CDFG" : "B_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83976", "EstimateLatencyMax" : "25345032",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_6_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.local_B_ping_V_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.local_B_pong_V_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x1_U0.data_split_V_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["61", "62", "63", "64", "65"],
		"CDFG" : "B_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "100544", "EstimateLatencyMax" : "280488128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "158", "DependentChan" : "463", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_ping_V_0_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_0_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.data_split_V_34_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.data_split_V_33_U", "Parent" : "60"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x1_U0.data_split_V_U", "Parent" : "60"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_serialize_x1_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "436", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_x1_U0", "Parent" : "0",
		"CDFG" : "C_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3193", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0", "Parent" : "0", "Child" : ["69", "70", "71", "72", "73"],
		"CDFG" : "C_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3152380", "EstimateLatencyMax" : "78695932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_0_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_0_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_1_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.local_C_ping_V_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.local_C_pong_V_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.data_split_V_30_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.data_split_V_29_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x1_U0.data_split_V_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0", "Parent" : "0", "Child" : ["75", "76", "77", "78", "79"],
		"CDFG" : "C_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3152380", "EstimateLatencyMax" : "78695932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_1_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_2_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "122", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.local_C_ping_V_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.local_C_pong_V_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.data_split_V_26_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.data_split_V_25_U", "Parent" : "74"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x1_U0.data_split_V_U", "Parent" : "74"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0", "Parent" : "0", "Child" : ["81", "82", "83", "84", "85"],
		"CDFG" : "C_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3152380", "EstimateLatencyMax" : "78695932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_2_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_3_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "128", "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x1111_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.local_C_ping_V_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.local_C_pong_V_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.data_split_V_22_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.data_split_V_21_U", "Parent" : "80"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x1_U0.data_split_V_U", "Parent" : "80"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0", "Parent" : "0", "Child" : ["87", "88", "89", "90", "91"],
		"CDFG" : "C_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3152380", "EstimateLatencyMax" : "78695932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_3_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_4_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "134", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x1116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.local_C_ping_V_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.local_C_pong_V_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.data_split_V_18_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.data_split_V_17_U", "Parent" : "86"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x1_U0.data_split_V_U", "Parent" : "86"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0", "Parent" : "0", "Child" : ["93", "94", "95", "96", "97"],
		"CDFG" : "C_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3152380", "EstimateLatencyMax" : "78695932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_4_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_5_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x1121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.local_C_ping_V_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.local_C_pong_V_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.data_split_V_14_U", "Parent" : "92"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.data_split_V_13_U", "Parent" : "92"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x1_U0.data_split_V_U", "Parent" : "92"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0", "Parent" : "0", "Child" : ["99", "100", "101", "102", "103"],
		"CDFG" : "C_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3152380", "EstimateLatencyMax" : "78695932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_5_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_6_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "104", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "146", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x1126_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.local_C_ping_V_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.local_C_pong_V_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.data_split_V_10_U", "Parent" : "98"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.data_split_V_9_U", "Parent" : "98"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x1_U0.data_split_V_U", "Parent" : "98"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0", "Parent" : "0", "Child" : ["105", "106", "107", "108", "109"],
		"CDFG" : "C_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3152380", "EstimateLatencyMax" : "78695932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_6_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "98", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_7_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x1131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.local_C_ping_V_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.local_C_pong_V_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.data_split_V_6_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.data_split_V_5_U", "Parent" : "104"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x1_U0.data_split_V_U", "Parent" : "104"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0", "Parent" : "0", "Child" : ["111", "112", "113", "114", "115"],
		"CDFG" : "C_IO_L2_in_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2097229", "EstimateLatencyMax" : "52435477",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_7_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "104", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "158", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x1136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.local_C_ping_V_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.local_C_pong_V_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.data_split_V_2_U", "Parent" : "110"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.data_split_V_1_U", "Parent" : "110"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x1_U0.data_split_V_U", "Parent" : "110"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["117", "118", "119", "120", "121"],
		"CDFG" : "PE_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "441", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "122", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "164", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x1101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "164", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x1102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x1141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "337", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x1141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_A_0_0_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_C_0_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.local_D_U", "Parent" : "116"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U899", "Parent" : "116"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U900", "Parent" : "116"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["123", "124", "125", "126", "127"],
		"CDFG" : "PE_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "128", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x1106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x1145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "349", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x1145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_A_0_0_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_C_0_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.local_D_U", "Parent" : "122"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U908", "Parent" : "122"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U909", "Parent" : "122"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0", "Parent" : "0", "Child" : ["129", "130", "131", "132", "133"],
		"CDFG" : "PE_wrapper_0_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "122", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "134", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x1149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "361", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x1149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.local_A_0_0_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.local_C_0_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.local_D_U", "Parent" : "128"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U917", "Parent" : "128"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U918", "Parent" : "128"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0", "Parent" : "0", "Child" : ["135", "136", "137", "138", "139"],
		"CDFG" : "PE_wrapper_0_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_3_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "182", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "182", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x1153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "373", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x1153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.local_A_0_0_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.local_C_0_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.local_D_U", "Parent" : "134"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U926", "Parent" : "134"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U927", "Parent" : "134"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0", "Parent" : "0", "Child" : ["141", "142", "143", "144", "145"],
		"CDFG" : "PE_wrapper_0_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_4_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "134", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "146", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x1157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x1157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.local_A_0_0_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.local_C_0_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.local_D_U", "Parent" : "140"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U935", "Parent" : "140"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U936", "Parent" : "140"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0", "Parent" : "0", "Child" : ["147", "148", "149", "150", "151"],
		"CDFG" : "PE_wrapper_0_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_5_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "98", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x1161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "397", "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x1161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.local_A_0_0_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.local_C_0_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.local_D_U", "Parent" : "146"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U944", "Parent" : "146"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U945", "Parent" : "146"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0", "Parent" : "0", "Child" : ["153", "154", "155", "156", "157"],
		"CDFG" : "PE_wrapper_0_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_6_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "146", "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "158", "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "104", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x1165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "409", "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x1165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.local_A_0_0_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.local_C_0_U", "Parent" : "152"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.local_D_U", "Parent" : "152"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U953", "Parent" : "152"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U954", "Parent" : "152"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0", "Parent" : "0", "Child" : ["159", "160", "161", "162", "163"],
		"CDFG" : "PE_wrapper_0_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_7_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "308", "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "463", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x1137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x1169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "421", "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x1169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.local_A_0_0_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.local_C_0_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.local_D_U", "Parent" : "158"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U962", "Parent" : "158"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U963", "Parent" : "158"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["165", "166", "167", "168", "169"],
		"CDFG" : "PE_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "443", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x1102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x1103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x1142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "334", "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x1142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_A_0_0_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_C_0_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.local_D_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U971", "Parent" : "164"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U972", "Parent" : "164"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["171", "172", "173", "174", "175"],
		"CDFG" : "PE_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "122", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "122", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x1107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x1108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x1146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "346", "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x1146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_A_0_0_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_C_0_U", "Parent" : "170"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.local_D_U", "Parent" : "170"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U980", "Parent" : "170"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U981", "Parent" : "170"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0", "Parent" : "0", "Child" : ["177", "178", "179", "180", "181"],
		"CDFG" : "PE_wrapper_1_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "182", "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x1150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "358", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x1150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.local_A_0_0_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.local_C_0_U", "Parent" : "176"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.local_D_U", "Parent" : "176"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U989", "Parent" : "176"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U990", "Parent" : "176"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0", "Parent" : "0", "Child" : ["183", "184", "185", "186", "187"],
		"CDFG" : "PE_wrapper_1_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_3_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "134", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "134", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x1154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "370", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x1154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.local_A_0_0_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.local_C_0_U", "Parent" : "182"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.local_D_U", "Parent" : "182"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U998", "Parent" : "182"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U999", "Parent" : "182"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0", "Parent" : "0", "Child" : ["189", "190", "191", "192", "193"],
		"CDFG" : "PE_wrapper_1_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x1158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "382", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x1158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.local_A_0_0_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.local_C_0_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.local_D_U", "Parent" : "188"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1007", "Parent" : "188"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1008", "Parent" : "188"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0", "Parent" : "0", "Child" : ["195", "196", "197", "198", "199"],
		"CDFG" : "PE_wrapper_1_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_5_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "146", "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "146", "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x1162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x1162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.local_A_0_0_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.local_C_0_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.local_D_U", "Parent" : "194"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1016", "Parent" : "194"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1017", "Parent" : "194"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0", "Parent" : "0", "Child" : ["201", "202", "203", "204", "205"],
		"CDFG" : "PE_wrapper_1_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_6_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "194", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x1166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "406", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x1166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.local_A_0_0_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.local_C_0_U", "Parent" : "200"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.local_D_U", "Parent" : "200"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1025", "Parent" : "200"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1026", "Parent" : "200"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0", "Parent" : "0", "Child" : ["207", "208", "209", "210", "211"],
		"CDFG" : "PE_wrapper_1_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_7_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "309", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "158", "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x1137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "158", "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x1137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x1138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x1170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "418", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x1170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.local_A_0_0_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.local_C_0_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.local_D_U", "Parent" : "206"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1034", "Parent" : "206"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1035", "Parent" : "206"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["213", "214", "215", "216", "217"],
		"CDFG" : "PE_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "445", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x1103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x1104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x1143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "331", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x1143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_A_0_0_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_C_0_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.local_D_U", "Parent" : "212"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1043", "Parent" : "212"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1044", "Parent" : "212"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["219", "220", "221", "222", "223"],
		"CDFG" : "PE_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x1108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x1147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "343", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x1147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_A_0_0_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_C_0_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.local_D_U", "Parent" : "218"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1052", "Parent" : "218"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1053", "Parent" : "218"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0", "Parent" : "0", "Child" : ["225", "226", "227", "228", "229"],
		"CDFG" : "PE_wrapper_2_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x1151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "355", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x1151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.local_A_0_0_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.local_C_0_U", "Parent" : "224"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.local_D_U", "Parent" : "224"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1061", "Parent" : "224"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1062", "Parent" : "224"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0", "Parent" : "0", "Child" : ["231", "232", "233", "234", "235"],
		"CDFG" : "PE_wrapper_2_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_3_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x1155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "367", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x1155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.local_A_0_0_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.local_C_0_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.local_D_U", "Parent" : "230"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1070", "Parent" : "230"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1071", "Parent" : "230"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0", "Parent" : "0", "Child" : ["237", "238", "239", "240", "241"],
		"CDFG" : "PE_wrapper_2_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_4_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x1159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "379", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x1159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.local_A_0_0_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.local_C_0_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.local_D_U", "Parent" : "236"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1079", "Parent" : "236"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1080", "Parent" : "236"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0", "Parent" : "0", "Child" : ["243", "244", "245", "246", "247"],
		"CDFG" : "PE_wrapper_2_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_5_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "194", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "194", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x1163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "391", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x1163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.local_A_0_0_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.local_C_0_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.local_D_U", "Parent" : "242"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1088", "Parent" : "242"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1089", "Parent" : "242"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0", "Parent" : "0", "Child" : ["249", "250", "251", "252", "253"],
		"CDFG" : "PE_wrapper_2_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_6_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x1167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "403", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x1167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.local_A_0_0_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.local_C_0_U", "Parent" : "248"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.local_D_U", "Parent" : "248"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1097", "Parent" : "248"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1098", "Parent" : "248"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0", "Parent" : "0", "Child" : ["255", "256", "257", "258", "259"],
		"CDFG" : "PE_wrapper_2_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_7_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "248", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "206", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x1138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "206", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x1138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x1139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x1139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x1171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "415", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x1171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.local_A_0_0_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.local_C_0_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.local_D_U", "Parent" : "254"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1106", "Parent" : "254"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1107", "Parent" : "254"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["261", "262", "263", "264", "265"],
		"CDFG" : "PE_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "446", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "312", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x1104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_0_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "320", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x1105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x1144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "328", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x1144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_A_0_0_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_C_0_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.local_D_U", "Parent" : "260"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1115", "Parent" : "260"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1116", "Parent" : "260"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["267", "268", "269", "270", "271"],
		"CDFG" : "PE_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4055258577", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "313", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "321", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x1148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "340", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x1148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_A_0_0_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_C_0_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.local_D_U", "Parent" : "266"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1124", "Parent" : "266"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1125", "Parent" : "266"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0", "Parent" : "0", "Child" : ["273", "274", "275", "276", "277"],
		"CDFG" : "PE_wrapper_3_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "314", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_2_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "322", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x1152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "352", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x1152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.local_A_0_0_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.local_C_0_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.local_D_U", "Parent" : "272"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1133", "Parent" : "272"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1134", "Parent" : "272"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0", "Parent" : "0", "Child" : ["279", "280", "281", "282", "283"],
		"CDFG" : "PE_wrapper_3_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_3_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "315", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_3_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "323", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x1156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "364", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x1156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.local_A_0_0_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.local_C_0_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.local_D_U", "Parent" : "278"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1142", "Parent" : "278"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1143", "Parent" : "278"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0", "Parent" : "0", "Child" : ["285", "286", "287", "288", "289"],
		"CDFG" : "PE_wrapper_3_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_4_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "278", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_4_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "324", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x1160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "376", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x1160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.local_A_0_0_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.local_C_0_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.local_D_U", "Parent" : "284"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1151", "Parent" : "284"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1152", "Parent" : "284"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0", "Parent" : "0", "Child" : ["291", "292", "293", "294", "295"],
		"CDFG" : "PE_wrapper_3_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_5_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "317", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_5_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x1164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "388", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x1164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.local_A_0_0_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.local_C_0_U", "Parent" : "290"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.local_D_U", "Parent" : "290"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1160", "Parent" : "290"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1161", "Parent" : "290"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0", "Parent" : "0", "Child" : ["297", "298", "299", "300", "301"],
		"CDFG" : "PE_wrapper_3_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_6_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "248", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "318", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "248", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_6_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "326", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x1168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "400", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x1168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.local_A_0_0_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.local_C_0_U", "Parent" : "296"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.local_D_U", "Parent" : "296"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1169", "Parent" : "296"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1170", "Parent" : "296"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0", "Parent" : "0", "Child" : ["303", "304", "305", "306", "307"],
		"CDFG" : "PE_wrapper_3_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4055258577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_7_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "311", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "319", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x1139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x1139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_7_x1140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x1140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x1172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "412", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x1172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.local_A_0_0_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.local_C_0_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.local_D_U", "Parent" : "302"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1178", "Parent" : "302"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1179", "Parent" : "302"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_8_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "158", "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_8_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "206", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_8_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x1_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_8_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25165826", "EstimateLatencyMax" : "25165826",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25165826", "EstimateLatencyMax" : "25165826",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_2_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_3_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "278", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_4_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_5_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_6_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x1_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_PE_4_7_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_0_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25165826", "EstimateLatencyMax" : "25165826",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_0_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_1_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25165826", "EstimateLatencyMax" : "25165826",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x1110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_2_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_2_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x1115_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_3_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_3_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "278", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x1120_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_4_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_4_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x1125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_5_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_5_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x1130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_6_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_6_x1135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x1135_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_7_x1_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25165897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_PE_4_7_x1140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x1140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x1_U0", "Parent" : "0", "Child" : ["329", "330"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16273", "EstimateLatencyMax" : "16273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "331", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x1144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x1144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x1_U0.local_D_V_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x1_U0.data_split_V_U", "Parent" : "328"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x1_U0", "Parent" : "0", "Child" : ["332", "333"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35889", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "328", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x1176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "334", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x1143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x1143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x1_U0.local_D_V_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x1_U0.data_split_V_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x1_U0", "Parent" : "0", "Child" : ["335", "336"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38241", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "331", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x1175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "337", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x1142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x1142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x1_U0.local_D_V_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x1_U0.data_split_V_U", "Parent" : "334"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x1_U0", "Parent" : "0", "Child" : ["338", "339"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40593", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "334", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x1174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x1141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x1141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x1_U0.local_D_V_U", "Parent" : "337"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x1_U0.data_split_V_U", "Parent" : "337"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x1_U0", "Parent" : "0", "Child" : ["341", "342"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16273", "EstimateLatencyMax" : "16273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "343", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x1148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x1148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x1_U0.local_D_V_U", "Parent" : "340"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x1_U0.data_split_V_U", "Parent" : "340"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x1_U0", "Parent" : "0", "Child" : ["344", "345"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35889", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "340", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x1180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "346", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x1147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x1147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x1_U0.local_D_V_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x1_U0.data_split_V_U", "Parent" : "343"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x1_U0", "Parent" : "0", "Child" : ["347", "348"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38241", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "343", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x1179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "349", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x1146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x1146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x1_U0.local_D_V_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x1_U0.data_split_V_U", "Parent" : "346"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x1_U0", "Parent" : "0", "Child" : ["350", "351"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40593", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "346", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x1178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "430", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x1145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "122", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x1145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x1_U0.local_D_V_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x1_U0.data_split_V_U", "Parent" : "349"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x1_U0", "Parent" : "0", "Child" : ["353", "354"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "16273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "355", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x1152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x1152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x1_U0.local_D_V_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x1_U0.data_split_V_U", "Parent" : "352"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x1_U0", "Parent" : "0", "Child" : ["356", "357"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "352", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x1184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "358", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x1151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x1151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x1_U0.local_D_V_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x1_U0.data_split_V_U", "Parent" : "355"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x1_U0", "Parent" : "0", "Child" : ["359", "360"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "355", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x1183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "361", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x1150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x1150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x1_U0.local_D_V_U", "Parent" : "358"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x1_U0.data_split_V_U", "Parent" : "358"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x1_U0", "Parent" : "0", "Child" : ["362", "363"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "358", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x1182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x1149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x1149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x1_U0.local_D_V_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x1_U0.data_split_V_U", "Parent" : "361"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x1_U0", "Parent" : "0", "Child" : ["365", "366"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "16273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "367", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x1156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "278", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x1156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x1_U0.local_D_V_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x1_U0.data_split_V_U", "Parent" : "364"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x1_U0", "Parent" : "0", "Child" : ["368", "369"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "364", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x1188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "370", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x1155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x1155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x1_U0.local_D_V_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x1_U0.data_split_V_U", "Parent" : "367"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x1_U0", "Parent" : "0", "Child" : ["371", "372"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "367", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x1187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "373", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x1154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x1154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x1_U0.local_D_V_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x1_U0.data_split_V_U", "Parent" : "370"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x1_U0", "Parent" : "0", "Child" : ["374", "375"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "370", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x1186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "428", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x1153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "134", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x1153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x1_U0.local_D_V_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x1_U0.data_split_V_U", "Parent" : "373"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x1_U0", "Parent" : "0", "Child" : ["377", "378"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "16273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "379", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x1160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x1160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x1_U0.local_D_V_U", "Parent" : "376"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x1_U0.data_split_V_U", "Parent" : "376"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x1_U0", "Parent" : "0", "Child" : ["380", "381"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "376", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x1192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "382", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x1159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x1159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x1_U0.local_D_V_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x1_U0.data_split_V_U", "Parent" : "379"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x1_U0", "Parent" : "0", "Child" : ["383", "384"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "379", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x1191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x1158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x1158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x1_U0.local_D_V_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x1_U0.data_split_V_U", "Parent" : "382"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x1_U0", "Parent" : "0", "Child" : ["386", "387"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "382", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x1190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "427", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x1157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x1157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x1_U0.local_D_V_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x1_U0.data_split_V_U", "Parent" : "385"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x1_U0", "Parent" : "0", "Child" : ["389", "390"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "16273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "391", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x1164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x1164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x1_U0.local_D_V_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x1_U0.data_split_V_U", "Parent" : "388"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x1_U0", "Parent" : "0", "Child" : ["392", "393"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "388", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x1196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x1163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x1163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x1_U0.local_D_V_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x1_U0.data_split_V_U", "Parent" : "391"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x1_U0", "Parent" : "0", "Child" : ["395", "396"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "391", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x1195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "397", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x1162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "194", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x1162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x1_U0.local_D_V_U", "Parent" : "394"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x1_U0.data_split_V_U", "Parent" : "394"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x1_U0", "Parent" : "0", "Child" : ["398", "399"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "394", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x1194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x1161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "146", "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x1161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x1_U0.local_D_V_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x1_U0.data_split_V_U", "Parent" : "397"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x1_U0", "Parent" : "0", "Child" : ["401", "402"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "16273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "403", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x1168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x1168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x1_U0.local_D_V_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x1_U0.data_split_V_U", "Parent" : "400"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x1_U0", "Parent" : "0", "Child" : ["404", "405"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "400", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x1200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "406", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x1167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "248", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x1167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x1_U0.local_D_V_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x1_U0.data_split_V_U", "Parent" : "403"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x1_U0", "Parent" : "0", "Child" : ["407", "408"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "403", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x1199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "409", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x1166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x1166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x1_U0.local_D_V_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x1_U0.data_split_V_U", "Parent" : "406"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x1_U0", "Parent" : "0", "Child" : ["410", "411"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "406", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x1198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "425", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x1165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x1165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x1_U0.local_D_V_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x1_U0.data_split_V_U", "Parent" : "409"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x1_U0", "Parent" : "0", "Child" : ["413", "414"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "16273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "415", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x1172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x1172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x1_U0.local_D_V_U", "Parent" : "412"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x1_U0.data_split_V_U", "Parent" : "412"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x1_U0", "Parent" : "0", "Child" : ["416", "417"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "35889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x1204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "418", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x1171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x1171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x1_U0.local_D_V_U", "Parent" : "415"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x1_U0.data_split_V_U", "Parent" : "415"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x1_U0", "Parent" : "0", "Child" : ["419", "420"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "38241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "415", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x1203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "421", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x1170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "206", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x1170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x1_U0.local_D_V_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x1_U0.data_split_V_U", "Parent" : "418"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x1_U0", "Parent" : "0", "Child" : ["422", "423"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "40593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "418", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x1202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "424", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x1169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "158", "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x1169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x1_U0.local_D_V_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x1_U0.data_split_V_U", "Parent" : "421"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_boundary_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_boundary_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "3145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "425", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "421", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x1201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_6_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6337", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "424", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x1212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "409", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x1197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_5_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6337", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "425", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x1211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "427", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "397", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x1193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "427", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_4_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6337", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "426", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x1210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "428", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "385", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x1189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "428", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_3_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6337", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "427", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x1209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "373", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x1185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "429", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_2_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6337", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "428", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x1208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "430", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "361", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x1181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "430", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_1_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6337", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "429", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x1207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "349", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x1177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_0_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6337", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "430", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x1206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x1205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "432", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x1205_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "337", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x1173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "432", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L3_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3193", "EstimateLatencyMax" : "25201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_D_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "433", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "431", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "433", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x1_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L3_out_serialize_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4167", "EstimateLatencyMax" : "4167",
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
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "432", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "437", "DependentChanDepth" : "29", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c1_U", "Parent" : "0"},
	{"ID" : "435", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c2_U", "Parent" : "0"},
	{"ID" : "436", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_c_U", "Parent" : "0"},
	{"ID" : "437", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c_U", "Parent" : "0"},
	{"ID" : "438", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "439", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "441", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "443", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "444", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "445", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "446", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "447", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "448", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "449", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "450", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "452", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "453", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "454", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "455", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "456", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "458", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "459", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "460", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "461", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "462", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L3_in_serialize_x1_U", "Parent" : "0"},
	{"ID" : "465", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_0_x1_U", "Parent" : "0"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_1_x1_U", "Parent" : "0"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "468", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_2_x1_U", "Parent" : "0"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "470", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_3_x1_U", "Parent" : "0"},
	{"ID" : "471", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "472", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_4_x1_U", "Parent" : "0"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "474", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_5_x1_U", "Parent" : "0"},
	{"ID" : "475", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "476", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_6_x1_U", "Parent" : "0"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "478", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_7_x1_U", "Parent" : "0"},
	{"ID" : "479", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "480", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "481", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "482", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "483", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "484", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_0_x1_U", "Parent" : "0"},
	{"ID" : "485", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "486", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "487", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "488", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_1_x1_U", "Parent" : "0"},
	{"ID" : "489", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "490", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "491", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_2_x1_U", "Parent" : "0"},
	{"ID" : "493", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "494", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "495", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "496", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_3_x1_U", "Parent" : "0"},
	{"ID" : "497", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "498", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "499", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "500", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_4_x1_U", "Parent" : "0"},
	{"ID" : "501", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "502", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "504", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_5_x1_U", "Parent" : "0"},
	{"ID" : "505", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "506", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "507", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "508", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_6_x1_U", "Parent" : "0"},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x1_U", "Parent" : "0"},
	{"ID" : "510", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "511", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "512", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_7_x1_U", "Parent" : "0"},
	{"ID" : "513", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "514", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "515", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "516", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_0_x1_U", "Parent" : "0"},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "518", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "519", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "520", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_1_x1_U", "Parent" : "0"},
	{"ID" : "521", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "522", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "523", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "524", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_2_x1_U", "Parent" : "0"},
	{"ID" : "525", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "526", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "528", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_3_x1_U", "Parent" : "0"},
	{"ID" : "529", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "531", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "532", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_4_x1_U", "Parent" : "0"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "534", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_5_x1_U", "Parent" : "0"},
	{"ID" : "537", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_6_x1_U", "Parent" : "0"},
	{"ID" : "541", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x1_U", "Parent" : "0"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_7_x1_U", "Parent" : "0"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_0_x1_U", "Parent" : "0"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_1_x1_U", "Parent" : "0"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_2_x1_U", "Parent" : "0"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_3_x1_U", "Parent" : "0"},
	{"ID" : "561", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "562", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "564", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_4_x1_U", "Parent" : "0"},
	{"ID" : "565", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "567", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_5_x1_U", "Parent" : "0"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "570", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_6_x1_U", "Parent" : "0"},
	{"ID" : "573", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x1_U", "Parent" : "0"},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_7_x1_U", "Parent" : "0"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "579", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_0_x1_U", "Parent" : "0"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_0_x1_U", "Parent" : "0"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "582", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "583", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_1_x1_U", "Parent" : "0"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_1_x1_U", "Parent" : "0"},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_2_x1_U", "Parent" : "0"},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_2_x1_U", "Parent" : "0"},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x1_U", "Parent" : "0"},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_3_x1_U", "Parent" : "0"},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_3_x1_U", "Parent" : "0"},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "594", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x1_U", "Parent" : "0"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_4_x1_U", "Parent" : "0"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_4_x1_U", "Parent" : "0"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x1_U", "Parent" : "0"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_5_x1_U", "Parent" : "0"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_5_x1_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x1_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_6_x1_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_6_x1_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x1_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x1_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_7_x1_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_7_x1_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_3_x1_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_2_x1_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_1_x1_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_0_x1_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_3_x1_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_2_x1_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_1_x1_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_0_x1_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_3_x1_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_2_x1_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_1_x1_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_0_x1_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_3_x1_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_2_x1_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_1_x1_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_0_x1_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_3_x1_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_2_x1_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_1_x1_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_0_x1_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_3_x1_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_2_x1_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_1_x1_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_0_x1_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_3_x1_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_2_x1_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_1_x1_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_0_x1_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_3_x1_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_2_x1_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_1_x1_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_0_x1_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_7_x1_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_6_x1_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_5_x1_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_4_x1_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_3_x1_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_2_x1_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_1_x1_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_0_x1_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x1 {
		gmem_C {Type I LastRead 72 FirstWrite -1}
		gmem_D {Type O LastRead 3 FirstWrite 7}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}}
	kernel0_x1_entry6 {
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}
		D_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x1_entry15 {
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}
		D_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x1 {
		fifo_A_A_IO_L3_in_serialize_x11 {Type O LastRead -1 FirstWrite 2}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L3_in_x1 {
		fifo_A_in {Type I LastRead 2 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 2}}
	A_IO_L2_in_0_x1 {
		fifo_A_A_IO_L2_in_0_x15 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x16 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_0_0_x125 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x16 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x17 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x134 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_2_x1 {
		fifo_A_A_IO_L2_in_2_x17 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x18 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_2_0_x143 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_boundary_x1 {
		fifo_A_A_IO_L2_in_3_x18 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_3_0_x152 {Type O LastRead -1 FirstWrite 7}}
	B_IO_L3_in_serialize_x1 {
		fifo_B_B_IO_L3_in_serialize_x12 {Type O LastRead -1 FirstWrite 4}
		B {Type I LastRead 1 FirstWrite -1}}
	B_IO_L3_in_x1 {
		fifo_B_in {Type I LastRead 17 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 2}}
	B_IO_L2_in_0_x1 {
		fifo_B_B_IO_L2_in_0_x19 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x110 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_0_x161 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_1_x1 {
		fifo_B_B_IO_L2_in_1_x110 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x111 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_1_x166 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_2_x1 {
		fifo_B_B_IO_L2_in_2_x111 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x112 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_2_x171 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_3_x1 {
		fifo_B_B_IO_L2_in_3_x112 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x113 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_3_x176 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_4_x1 {
		fifo_B_B_IO_L2_in_4_x113 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x114 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_4_x181 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_5_x1 {
		fifo_B_B_IO_L2_in_5_x114 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x115 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_5_x186 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_6_x1 {
		fifo_B_B_IO_L2_in_6_x115 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x116 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_6_x191 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_boundary_x1 {
		fifo_B_B_IO_L2_in_7_x116 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_0_7_x196 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L3_in_serialize_x1 {
		gmem_C {Type I LastRead 72 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 73}
		C {Type I LastRead 0 FirstWrite -1}}
	C_IO_L3_in_x1 {
		fifo_C_in {Type I LastRead 4 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 4}}
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
		fifo_A_PE_0_0_x125 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_1_x126 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_0_x161 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_0_x162 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_0_x1101 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_0_x1102 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_0_x1141 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_1_x1 {
		fifo_A_PE_0_1_x126 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_2_x127 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_1_x166 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_1_x167 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_1_x1106 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_1_x1107 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_1_x1145 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_2_x1 {
		fifo_A_PE_0_2_x127 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_3_x128 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_2_x171 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_2_x172 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_2_x1111 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_2_x1112 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_2_x1149 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_3_x1 {
		fifo_A_PE_0_3_x128 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_4_x129 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_3_x176 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_3_x177 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_3_x1116 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_3_x1117 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_3_x1153 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_4_x1 {
		fifo_A_PE_0_4_x129 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_5_x130 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_4_x181 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_4_x182 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_4_x1121 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_4_x1122 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_4_x1157 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_5_x1 {
		fifo_A_PE_0_5_x130 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_6_x131 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_5_x186 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_5_x187 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_5_x1126 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_5_x1127 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_5_x1161 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_6_x1 {
		fifo_A_PE_0_6_x131 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_7_x132 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_6_x191 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_6_x192 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_6_x1131 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_6_x1132 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_6_x1165 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_7_x1 {
		fifo_A_PE_0_7_x132 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_8_x133 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_7_x196 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_7_x197 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_7_x1136 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_7_x1137 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_7_x1169 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_0_x1 {
		fifo_A_PE_1_0_x134 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_1_x135 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_0_x162 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_0_x163 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_0_x1102 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_0_x1103 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_0_x1142 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_1_x1 {
		fifo_A_PE_1_1_x135 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_2_x136 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_1_x167 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_1_x168 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_1_x1107 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_1_x1108 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_1_x1146 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_2_x1 {
		fifo_A_PE_1_2_x136 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_3_x137 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_2_x172 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_2_x173 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_2_x1112 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_2_x1113 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_2_x1150 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_3_x1 {
		fifo_A_PE_1_3_x137 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_4_x138 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_3_x177 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_3_x178 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_3_x1117 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_3_x1118 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_3_x1154 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_4_x1 {
		fifo_A_PE_1_4_x138 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_5_x139 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_4_x182 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_4_x183 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_4_x1122 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_4_x1123 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_4_x1158 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_5_x1 {
		fifo_A_PE_1_5_x139 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_6_x140 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_5_x187 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_5_x188 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_5_x1127 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_5_x1128 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_5_x1162 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_6_x1 {
		fifo_A_PE_1_6_x140 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_7_x141 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_6_x192 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_6_x193 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_6_x1132 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_6_x1133 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_6_x1166 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_7_x1 {
		fifo_A_PE_1_7_x141 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_8_x142 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_7_x197 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_7_x198 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_7_x1137 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_7_x1138 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_7_x1170 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_0_x1 {
		fifo_A_PE_2_0_x143 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_1_x144 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_0_x163 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_0_x164 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_0_x1103 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_0_x1104 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_0_x1143 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_1_x1 {
		fifo_A_PE_2_1_x144 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_2_x145 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_1_x168 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_1_x169 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_1_x1108 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_1_x1109 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_1_x1147 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_2_x1 {
		fifo_A_PE_2_2_x145 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_3_x146 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_2_x173 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_2_x174 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_2_x1113 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_2_x1114 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_2_x1151 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_3_x1 {
		fifo_A_PE_2_3_x146 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_4_x147 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_3_x178 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_3_x179 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_3_x1118 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_3_x1119 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_3_x1155 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_4_x1 {
		fifo_A_PE_2_4_x147 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_5_x148 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_4_x183 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_4_x184 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_4_x1123 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_4_x1124 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_4_x1159 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_5_x1 {
		fifo_A_PE_2_5_x148 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_6_x149 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_5_x188 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_5_x189 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_5_x1128 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_5_x1129 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_5_x1163 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_6_x1 {
		fifo_A_PE_2_6_x149 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_7_x150 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_6_x193 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_6_x194 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_6_x1133 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_6_x1134 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_6_x1167 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_7_x1 {
		fifo_A_PE_2_7_x150 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_8_x151 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_7_x198 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_7_x199 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_7_x1138 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_7_x1139 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_7_x1171 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_0_x1 {
		fifo_A_PE_3_0_x152 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_1_x153 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_0_x164 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_0_x165 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_0_x1104 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_0_x1105 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_0_x1144 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_1_x1 {
		fifo_A_PE_3_1_x153 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_2_x154 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_1_x169 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_1_x170 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_1_x1109 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_1_x1110 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_1_x1148 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_2_x1 {
		fifo_A_PE_3_2_x154 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_3_x155 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_2_x174 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_2_x175 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_2_x1114 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_2_x1115 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_2_x1152 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_3_x1 {
		fifo_A_PE_3_3_x155 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_4_x156 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_3_x179 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_3_x180 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_3_x1119 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_3_x1120 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_3_x1156 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_4_x1 {
		fifo_A_PE_3_4_x156 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_5_x157 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_4_x184 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_4_x185 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_4_x1124 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_4_x1125 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_4_x1160 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_5_x1 {
		fifo_A_PE_3_5_x157 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_6_x158 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_5_x189 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_5_x190 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_5_x1129 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_5_x1130 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_5_x1164 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_6_x1 {
		fifo_A_PE_3_6_x158 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_7_x159 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_6_x194 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_6_x195 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_6_x1134 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_6_x1135 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_6_x1168 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_7_x1 {
		fifo_A_PE_3_7_x159 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_8_x160 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_7_x199 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_7_x1100 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_7_x1139 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_7_x1140 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_7_x1172 {Type O LastRead -1 FirstWrite 12}}
	A_PE_dummy_in_0_x1 {
		fifo_A_PE_0_8_x133 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_in_1_x1 {
		fifo_A_PE_1_8_x142 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_in_2_x1 {
		fifo_A_PE_2_8_x151 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_in_3_x1 {
		fifo_A_PE_3_8_x160 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_in_0_x1 {
		fifo_B_PE_4_0_x165 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_1_x1 {
		fifo_B_PE_4_1_x170 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_in_2_x1 {
		fifo_B_PE_4_2_x175 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_in_3_x1 {
		fifo_B_PE_4_3_x180 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_in_4_x1 {
		fifo_B_PE_4_4_x185 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_in_5_x1 {
		fifo_B_PE_4_5_x190 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_in_6_x1 {
		fifo_B_PE_4_6_x195 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_in_7_x1 {
		fifo_B_PE_4_7_x1100 {Type I LastRead 3 FirstWrite -1}}
	C_PE_dummy_in_0_x1 {
		fifo_C_PE_4_0_x1105 {Type I LastRead 2 FirstWrite -1}}
	C_PE_dummy_in_1_x1 {
		fifo_C_PE_4_1_x1110 {Type I LastRead 2 FirstWrite -1}}
	C_PE_dummy_in_2_x1 {
		fifo_C_PE_4_2_x1115 {Type I LastRead 3 FirstWrite -1}}
	C_PE_dummy_in_3_x1 {
		fifo_C_PE_4_3_x1120 {Type I LastRead 3 FirstWrite -1}}
	C_PE_dummy_in_4_x1 {
		fifo_C_PE_4_4_x1125 {Type I LastRead 3 FirstWrite -1}}
	C_PE_dummy_in_5_x1 {
		fifo_C_PE_4_5_x1130 {Type I LastRead 3 FirstWrite -1}}
	C_PE_dummy_in_6_x1 {
		fifo_C_PE_4_6_x1135 {Type I LastRead 3 FirstWrite -1}}
	C_PE_dummy_in_7_x1 {
		fifo_C_PE_4_7_x1140 {Type I LastRead 3 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_0_x1 {
		fifo_D_drain_D_drain_IO_L1_out_0_3_x1176 {Type O LastRead -1 FirstWrite 5}
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
		fifo_D_drain_D_drain_IO_L1_out_1_3_x1180 {Type O LastRead -1 FirstWrite 5}
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
		fifo_D_drain_D_drain_IO_L1_out_2_3_x1184 {Type O LastRead -1 FirstWrite 5}
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
		fifo_D_drain_D_drain_IO_L1_out_3_3_x1188 {Type O LastRead -1 FirstWrite 5}
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
		fifo_D_drain_D_drain_IO_L1_out_4_3_x1192 {Type O LastRead -1 FirstWrite 5}
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
		fifo_D_drain_D_drain_IO_L1_out_5_3_x1196 {Type O LastRead -1 FirstWrite 5}
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
		fifo_D_drain_D_drain_IO_L1_out_6_3_x1200 {Type O LastRead -1 FirstWrite 5}
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
		fifo_D_drain_D_drain_IO_L1_out_7_3_x1204 {Type O LastRead -1 FirstWrite 5}
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
		fifo_D_drain_D_drain_IO_L2_out_7_x1212 {Type O LastRead -1 FirstWrite 3}
		fifo_D_drain_D_drain_IO_L1_out_7_0_x1201 {Type I LastRead 3 FirstWrite -1}}
	D_drain_IO_L2_out_6_x1 {
		fifo_D_drain_D_drain_IO_L2_out_7_x1212 {Type I LastRead 4 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_6_x1211 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_D_drain_IO_L1_out_6_0_x1197 {Type I LastRead 4 FirstWrite -1}}
	D_drain_IO_L2_out_5_x1 {
		fifo_D_drain_D_drain_IO_L2_out_6_x1211 {Type I LastRead 4 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_5_x1210 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_D_drain_IO_L1_out_5_0_x1193 {Type I LastRead 4 FirstWrite -1}}
	D_drain_IO_L2_out_4_x1 {
		fifo_D_drain_D_drain_IO_L2_out_5_x1210 {Type I LastRead 4 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_4_x1209 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_D_drain_IO_L1_out_4_0_x1189 {Type I LastRead 4 FirstWrite -1}}
	D_drain_IO_L2_out_3_x1 {
		fifo_D_drain_D_drain_IO_L2_out_4_x1209 {Type I LastRead 4 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_3_x1208 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x1185 {Type I LastRead 4 FirstWrite -1}}
	D_drain_IO_L2_out_2_x1 {
		fifo_D_drain_D_drain_IO_L2_out_3_x1208 {Type I LastRead 4 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_2_x1207 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_D_drain_IO_L1_out_2_0_x1181 {Type I LastRead 4 FirstWrite -1}}
	D_drain_IO_L2_out_1_x1 {
		fifo_D_drain_D_drain_IO_L2_out_2_x1207 {Type I LastRead 4 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_1_x1206 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_D_drain_IO_L1_out_1_0_x1177 {Type I LastRead 4 FirstWrite -1}}
	D_drain_IO_L2_out_0_x1 {
		fifo_D_drain_D_drain_IO_L2_out_1_x1206 {Type I LastRead 4 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_0_x1205 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_D_drain_IO_L1_out_0_0_x1173 {Type I LastRead 4 FirstWrite -1}}
	D_drain_IO_L3_out_x1 {
		fifo_D_drain_out {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_local_in {Type I LastRead 4 FirstWrite -1}}
	D_drain_IO_L3_out_serialize_x1 {
		gmem_D {Type O LastRead 3 FirstWrite 7}
		fifo_D_drain_local_in {Type I LastRead 6 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1463821114", "Max" : "1224112338"}
	, {"Name" : "Interval", "Min" : "-239708718", "Max" : "-239708718"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 32 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 32 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
	gmem_D { m_axi {  { m_axi_gmem_D_AWVALID VALID 1 1 }  { m_axi_gmem_D_AWREADY READY 0 1 }  { m_axi_gmem_D_AWADDR ADDR 1 64 }  { m_axi_gmem_D_AWID ID 1 1 }  { m_axi_gmem_D_AWLEN LEN 1 32 }  { m_axi_gmem_D_AWSIZE SIZE 1 3 }  { m_axi_gmem_D_AWBURST BURST 1 2 }  { m_axi_gmem_D_AWLOCK LOCK 1 2 }  { m_axi_gmem_D_AWCACHE CACHE 1 4 }  { m_axi_gmem_D_AWPROT PROT 1 3 }  { m_axi_gmem_D_AWQOS QOS 1 4 }  { m_axi_gmem_D_AWREGION REGION 1 4 }  { m_axi_gmem_D_AWUSER USER 1 1 }  { m_axi_gmem_D_WVALID VALID 1 1 }  { m_axi_gmem_D_WREADY READY 0 1 }  { m_axi_gmem_D_WDATA DATA 1 512 }  { m_axi_gmem_D_WSTRB STRB 1 64 }  { m_axi_gmem_D_WLAST LAST 1 1 }  { m_axi_gmem_D_WID ID 1 1 }  { m_axi_gmem_D_WUSER USER 1 1 }  { m_axi_gmem_D_ARVALID VALID 1 1 }  { m_axi_gmem_D_ARREADY READY 0 1 }  { m_axi_gmem_D_ARADDR ADDR 1 64 }  { m_axi_gmem_D_ARID ID 1 1 }  { m_axi_gmem_D_ARLEN LEN 1 32 }  { m_axi_gmem_D_ARSIZE SIZE 1 3 }  { m_axi_gmem_D_ARBURST BURST 1 2 }  { m_axi_gmem_D_ARLOCK LOCK 1 2 }  { m_axi_gmem_D_ARCACHE CACHE 1 4 }  { m_axi_gmem_D_ARPROT PROT 1 3 }  { m_axi_gmem_D_ARQOS QOS 1 4 }  { m_axi_gmem_D_ARREGION REGION 1 4 }  { m_axi_gmem_D_ARUSER USER 1 1 }  { m_axi_gmem_D_RVALID VALID 0 1 }  { m_axi_gmem_D_RREADY READY 1 1 }  { m_axi_gmem_D_RDATA DATA 0 512 }  { m_axi_gmem_D_RLAST LAST 0 1 }  { m_axi_gmem_D_RID ID 0 1 }  { m_axi_gmem_D_RUSER USER 0 1 }  { m_axi_gmem_D_RRESP RESP 0 2 }  { m_axi_gmem_D_BVALID VALID 0 1 }  { m_axi_gmem_D_BREADY READY 1 1 }  { m_axi_gmem_D_BRESP RESP 0 2 }  { m_axi_gmem_D_BID ID 0 1 }  { m_axi_gmem_D_BUSER USER 0 1 } } }
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_d0 mem_din 1 512 }  { A_q0 mem_dout 0 512 }  { A_we0 mem_we 1 1 }  { A_address1 mem_address 1 10 }  { A_ce1 mem_ce 1 1 }  { A_d1 mem_din 1 512 }  { A_q1 mem_dout 0 512 }  { A_we1 mem_we 1 1 } } }
	B { ap_memory {  { B_address0 mem_address 1 10 }  { B_ce0 mem_ce 1 1 }  { B_d0 mem_din 1 512 }  { B_q0 mem_dout 0 512 }  { B_we0 mem_we 1 1 }  { B_address1 mem_address 1 10 }  { B_ce1 mem_ce 1 1 }  { B_d1 mem_din 1 512 }  { B_q1 mem_dout 0 512 }  { B_we1 mem_we 1 1 } } }
	C { ap_none {  { C in_data 0 64 }  { C_ap_vld in_vld 0 1 } } }
	D { ap_none {  { D in_data 0 64 }  { D_ap_vld in_vld 0 1 } } }
}
