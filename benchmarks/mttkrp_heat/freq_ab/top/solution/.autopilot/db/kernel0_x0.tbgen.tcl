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
	{ gmem_A int 512 regular {axi_master 0}  }
	{ gmem_B int 512 regular {axi_master 0}  }
	{ A int 64 regular  }
	{ B int 64 regular  }
	{ C int 512 regular {array 1024 { 1 3 } 1 1 }  }
	{ D int 512 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_A", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_B", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 121
set portList { 
	{ m_axi_gmem_A_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_A_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_A_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_A_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_A_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_A_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_A_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_A_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_A_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_A_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_A_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_A_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_B_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_B_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_B_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_B_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem_B_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_B_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_B_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_B_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_B_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_B_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem_B_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_BUSER sc_in sc_lv 1 signal 1 } 
	{ A sc_in sc_lv 64 signal 2 } 
	{ B sc_in sc_lv 64 signal 3 } 
	{ C_address0 sc_out sc_lv 10 signal 4 } 
	{ C_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_d0 sc_out sc_lv 512 signal 4 } 
	{ C_q0 sc_in sc_lv 512 signal 4 } 
	{ C_we0 sc_out sc_logic 1 signal 4 } 
	{ C_address1 sc_out sc_lv 10 signal 4 } 
	{ C_ce1 sc_out sc_logic 1 signal 4 } 
	{ C_d1 sc_out sc_lv 512 signal 4 } 
	{ C_q1 sc_in sc_lv 512 signal 4 } 
	{ C_we1 sc_out sc_logic 1 signal 4 } 
	{ D_address0 sc_out sc_lv 10 signal 5 } 
	{ D_ce0 sc_out sc_logic 1 signal 5 } 
	{ D_d0 sc_out sc_lv 512 signal 5 } 
	{ D_q0 sc_in sc_lv 512 signal 5 } 
	{ D_we0 sc_out sc_logic 1 signal 5 } 
	{ D_address1 sc_out sc_lv 10 signal 5 } 
	{ D_ce1 sc_out sc_logic 1 signal 5 } 
	{ D_d1 sc_out sc_lv 512 signal 5 } 
	{ D_q1 sc_in sc_lv 512 signal 5 } 
	{ D_we1 sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ A_ap_vld sc_in sc_logic 1 invld 2 } 
	{ B_ap_vld sc_in sc_logic 1 invld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem_A_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_A_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_A_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_A_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_A_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_A_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_A_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_A_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_A_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_A_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_A_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_A_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_A_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_A_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_A_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_A_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_A", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_A_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_A", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_A_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_A_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_A_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_A_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_A_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_A_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_A_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_A_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_A_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_A_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_A_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_A_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_A_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_A_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_A_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_A_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_A_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_A_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_A_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_A", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_A_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_A_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_A_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_A_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_A_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_A_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_A_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_A_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_A_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "BUSER" }} , 
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
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
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
 	{ "name": "D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "D", "role": "address0" }} , 
 	{ "name": "D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce0" }} , 
 	{ "name": "D_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "D", "role": "d0" }} , 
 	{ "name": "D_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "D", "role": "q0" }} , 
 	{ "name": "D_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "we0" }} , 
 	{ "name": "D_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "D", "role": "address1" }} , 
 	{ "name": "D_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce1" }} , 
 	{ "name": "D_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "D", "role": "d1" }} , 
 	{ "name": "D_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "D", "role": "q1" }} , 
 	{ "name": "D_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "A_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "A", "role": "ap_vld" }} , 
 	{ "name": "B_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "12", "18", "24", "30", "31", "32", "38", "44", "50", "56", "62", "68", "74", "80", "81", "82", "88", "94", "100", "106", "112", "118", "124", "130", "136", "142", "148", "154", "160", "166", "172", "178", "184", "190", "196", "202", "208", "214", "220", "226", "232", "238", "244", "250", "256", "262", "268", "274", "280", "286", "292", "298", "304", "310", "316", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "345", "348", "351", "354", "357", "360", "363", "366", "369", "372", "375", "378", "381", "384", "387", "390", "393", "396", "399", "402", "405", "408", "411", "414", "417", "420", "423", "426", "429", "432", "435", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664"],
		"CDFG" : "kernel0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1463927210", "EstimateLatencyMax" : "1224218434",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x0_entry3_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x0_U0"},
			{"ID" : "30", "Name" : "B_IO_L3_in_serialize_x0_U0"},
			{"ID" : "80", "Name" : "C_IO_L3_in_serialize_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "322", "Name" : "A_PE_dummy_in_0_x0_U0"},
			{"ID" : "323", "Name" : "A_PE_dummy_in_1_x0_U0"},
			{"ID" : "324", "Name" : "A_PE_dummy_in_2_x0_U0"},
			{"ID" : "325", "Name" : "A_PE_dummy_in_3_x0_U0"},
			{"ID" : "326", "Name" : "B_PE_dummy_in_0_x0_U0"},
			{"ID" : "327", "Name" : "B_PE_dummy_in_1_x0_U0"},
			{"ID" : "328", "Name" : "B_PE_dummy_in_2_x0_U0"},
			{"ID" : "329", "Name" : "B_PE_dummy_in_3_x0_U0"},
			{"ID" : "330", "Name" : "B_PE_dummy_in_4_x0_U0"},
			{"ID" : "331", "Name" : "B_PE_dummy_in_5_x0_U0"},
			{"ID" : "332", "Name" : "B_PE_dummy_in_6_x0_U0"},
			{"ID" : "333", "Name" : "B_PE_dummy_in_7_x0_U0"},
			{"ID" : "334", "Name" : "C_PE_dummy_in_0_x0_U0"},
			{"ID" : "335", "Name" : "C_PE_dummy_in_1_x0_U0"},
			{"ID" : "336", "Name" : "C_PE_dummy_in_2_x0_U0"},
			{"ID" : "337", "Name" : "C_PE_dummy_in_3_x0_U0"},
			{"ID" : "338", "Name" : "C_PE_dummy_in_4_x0_U0"},
			{"ID" : "339", "Name" : "C_PE_dummy_in_5_x0_U0"},
			{"ID" : "340", "Name" : "C_PE_dummy_in_6_x0_U0"},
			{"ID" : "341", "Name" : "C_PE_dummy_in_7_x0_U0"},
			{"ID" : "447", "Name" : "D_drain_IO_L3_out_serialize_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x0_U0", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "B_IO_L3_in_serialize_x0_U0", "Port" : "gmem_B"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "C_IO_L3_in_serialize_x0_U0", "Port" : "C"}]},
			{"Name" : "D", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "447", "SubInstance" : "D_drain_IO_L3_out_serialize_x0_U0", "Port" : "D"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry3_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry3",
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
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry11_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry11",
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
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "A_IO_L3_in_serialize_x0",
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
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_A_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_A_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0.add_11ns_11ns_11_1_1_U9", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_x0",
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
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11"],
		"CDFG" : "A_IO_L2_in_0_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x025_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_ping_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_pong_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.data_split_V_80_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.data_split_V_79_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.data_split_V_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17"],
		"CDFG" : "A_IO_L2_in_1_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x034_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_ping_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.data_split_V_76_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.data_split_V_75_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.data_split_V_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23"],
		"CDFG" : "A_IO_L2_in_2_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x043_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_ping_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.data_split_V_72_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.data_split_V_71_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.data_split_V_U", "Parent" : "18"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29"],
		"CDFG" : "A_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x052_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_ping_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.data_split_V_68_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.data_split_V_67_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.data_split_V_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6215", "EstimateLatencyMax" : "6215",
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
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x0",
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
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["33", "34", "35", "36", "37"],
		"CDFG" : "B_IO_L2_in_0_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "463", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x061_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_ping_V_0_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_pong_V_0_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.data_split_V_64_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.data_split_V_63_U", "Parent" : "32"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.data_split_V_U", "Parent" : "32"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["39", "40", "41", "42", "43"],
		"CDFG" : "B_IO_L2_in_1_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x066_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_ping_V_0_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_pong_V_0_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.data_split_V_60_U", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.data_split_V_59_U", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.data_split_V_U", "Parent" : "38"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["45", "46", "47", "48", "49"],
		"CDFG" : "B_IO_L2_in_2_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_2_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x012", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x071_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_ping_V_0_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_pong_V_0_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.data_split_V_56_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.data_split_V_55_U", "Parent" : "44"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.data_split_V_U", "Parent" : "44"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["51", "52", "53", "54", "55"],
		"CDFG" : "B_IO_L2_in_3_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_3_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x076_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_ping_V_0_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_pong_V_0_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.data_split_V_52_U", "Parent" : "50"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.data_split_V_51_U", "Parent" : "50"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.data_split_V_U", "Parent" : "50"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["57", "58", "59", "60", "61"],
		"CDFG" : "B_IO_L2_in_4_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_4_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x014", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x081_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_ping_V_0_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_pong_V_0_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.data_split_V_48_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.data_split_V_47_U", "Parent" : "56"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.data_split_V_U", "Parent" : "56"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["63", "64", "65", "66", "67"],
		"CDFG" : "B_IO_L2_in_5_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_5_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_ping_V_0_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_pong_V_0_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.data_split_V_44_U", "Parent" : "62"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.data_split_V_43_U", "Parent" : "62"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.data_split_V_U", "Parent" : "62"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["69", "70", "71", "72", "73"],
		"CDFG" : "B_IO_L2_in_6_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_6_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_ping_V_0_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_pong_V_0_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.data_split_V_40_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.data_split_V_39_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.data_split_V_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["75", "76", "77", "78", "79"],
		"CDFG" : "B_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_7_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_ping_V_0_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_0_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.data_split_V_36_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.data_split_V_35_U", "Parent" : "74"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.data_split_V_U", "Parent" : "74"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "C_IO_L3_in_serialize_x0",
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
			{"Name" : "fifo_C_C_IO_L3_in_serialize_x03", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L3_in_serialize_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "C_IO_L3_in_x0",
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
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["83", "84", "85", "86", "87"],
		"CDFG" : "C_IO_L2_in_0_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_0_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_0_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_1_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.local_C_ping_V_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.local_C_pong_V_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.data_split_V_32_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.data_split_V_31_U", "Parent" : "82"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.data_split_V_U", "Parent" : "82"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["89", "90", "91", "92", "93"],
		"CDFG" : "C_IO_L2_in_1_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_1_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_2_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.local_C_ping_V_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.local_C_pong_V_U", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.data_split_V_28_U", "Parent" : "88"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.data_split_V_27_U", "Parent" : "88"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.data_split_V_U", "Parent" : "88"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["95", "96", "97", "98", "99"],
		"CDFG" : "C_IO_L2_in_2_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_2_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_3_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x0111_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.local_C_ping_V_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.local_C_pong_V_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.data_split_V_24_U", "Parent" : "94"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.data_split_V_23_U", "Parent" : "94"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.data_split_V_U", "Parent" : "94"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["101", "102", "103", "104", "105"],
		"CDFG" : "C_IO_L2_in_3_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_3_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_4_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x0116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.local_C_ping_V_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.local_C_pong_V_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.data_split_V_20_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.data_split_V_19_U", "Parent" : "100"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.data_split_V_U", "Parent" : "100"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["107", "108", "109", "110", "111"],
		"CDFG" : "C_IO_L2_in_4_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_4_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_5_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "112", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x0121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.local_C_ping_V_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.local_C_pong_V_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.data_split_V_16_U", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.data_split_V_15_U", "Parent" : "106"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.data_split_V_U", "Parent" : "106"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["113", "114", "115", "116", "117"],
		"CDFG" : "C_IO_L2_in_5_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_5_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_6_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.local_C_ping_V_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.local_C_pong_V_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.data_split_V_12_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.data_split_V_11_U", "Parent" : "112"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.data_split_V_U", "Parent" : "112"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["119", "120", "121", "122", "123"],
		"CDFG" : "C_IO_L2_in_6_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_6_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_7_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "124", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x0131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.local_C_ping_V_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.local_C_pong_V_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.data_split_V_8_U", "Parent" : "118"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.data_split_V_7_U", "Parent" : "118"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.data_split_V_U", "Parent" : "118"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["125", "126", "127", "128", "129"],
		"CDFG" : "C_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_7_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x0136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.local_C_ping_V_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.local_C_pong_V_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.data_split_V_4_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.data_split_V_3_U", "Parent" : "124"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.data_split_V_U", "Parent" : "124"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["131", "132", "133", "134", "135"],
		"CDFG" : "PE_wrapper_0_0_x0",
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
			{"Name" : "fifo_A_PE_0_0_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x0141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x0141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_A_0_0_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_C_0_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_D_U", "Parent" : "130"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U86", "Parent" : "130"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U87", "Parent" : "130"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["137", "138", "139", "140", "141"],
		"CDFG" : "PE_wrapper_0_1_x0",
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
			{"Name" : "fifo_A_PE_0_1_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x0145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_A_0_0_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_C_0_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_D_U", "Parent" : "136"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U99", "Parent" : "136"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U100", "Parent" : "136"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["143", "144", "145", "146", "147"],
		"CDFG" : "PE_wrapper_0_2_x0",
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
			{"Name" : "fifo_A_PE_0_2_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "375", "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x0149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_A_0_0_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_C_0_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_D_U", "Parent" : "142"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U108", "Parent" : "142"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U109", "Parent" : "142"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["149", "150", "151", "152", "153"],
		"CDFG" : "PE_wrapper_0_3_x0",
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
			{"Name" : "fifo_A_PE_0_3_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_A_0_0_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_C_0_U", "Parent" : "148"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_D_U", "Parent" : "148"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U117", "Parent" : "148"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U118", "Parent" : "148"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["155", "156", "157", "158", "159"],
		"CDFG" : "PE_wrapper_0_4_x0",
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
			{"Name" : "fifo_A_PE_0_4_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "160", "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "399", "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x0157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_A_0_0_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_C_0_U", "Parent" : "154"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_D_U", "Parent" : "154"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U126", "Parent" : "154"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U127", "Parent" : "154"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["161", "162", "163", "164", "165"],
		"CDFG" : "PE_wrapper_0_5_x0",
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
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "411", "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_A_0_0_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_C_0_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_D_U", "Parent" : "160"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U135", "Parent" : "160"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U136", "Parent" : "160"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["167", "168", "169", "170", "171"],
		"CDFG" : "PE_wrapper_0_6_x0",
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
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x091_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x0165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "423", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_A_0_0_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_C_0_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_D_U", "Parent" : "166"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U144", "Parent" : "166"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U145", "Parent" : "166"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0", "Parent" : "0", "Child" : ["173", "174", "175", "176", "177"],
		"CDFG" : "PE_wrapper_0_7_x0",
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
			{"Name" : "fifo_A_PE_0_7_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "322", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "124", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x0137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "435", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_A_0_0_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_C_0_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_D_U", "Parent" : "172"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U153", "Parent" : "172"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U154", "Parent" : "172"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["179", "180", "181", "182", "183"],
		"CDFG" : "PE_wrapper_1_0_x0",
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
			{"Name" : "fifo_A_PE_1_0_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x0142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "348", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x0142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_A_0_0_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_C_0_U", "Parent" : "178"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_D_U", "Parent" : "178"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U162", "Parent" : "178"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U163", "Parent" : "178"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["185", "186", "187", "188", "189"],
		"CDFG" : "PE_wrapper_1_1_x0",
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
			{"Name" : "fifo_A_PE_1_1_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "360", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_A_0_0_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_C_0_U", "Parent" : "184"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_D_U", "Parent" : "184"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U171", "Parent" : "184"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U172", "Parent" : "184"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["191", "192", "193", "194", "195"],
		"CDFG" : "PE_wrapper_1_2_x0",
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
			{"Name" : "fifo_A_PE_1_2_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x0150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "372", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x0150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_A_0_0_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_C_0_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_D_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U180", "Parent" : "190"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U181", "Parent" : "190"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["197", "198", "199", "200", "201"],
		"CDFG" : "PE_wrapper_1_3_x0",
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
			{"Name" : "fifo_A_PE_1_3_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x0154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_A_0_0_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_C_0_U", "Parent" : "196"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_D_U", "Parent" : "196"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U189", "Parent" : "196"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U190", "Parent" : "196"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["203", "204", "205", "206", "207"],
		"CDFG" : "PE_wrapper_1_4_x0",
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
			{"Name" : "fifo_A_PE_1_4_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x0158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_A_0_0_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_C_0_U", "Parent" : "202"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_D_U", "Parent" : "202"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U198", "Parent" : "202"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U199", "Parent" : "202"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["209", "210", "211", "212", "213"],
		"CDFG" : "PE_wrapper_1_5_x0",
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
			{"Name" : "fifo_A_PE_1_5_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x0162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "408", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x0162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_A_0_0_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_C_0_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_D_U", "Parent" : "208"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U207", "Parent" : "208"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U208", "Parent" : "208"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["215", "216", "217", "218", "219"],
		"CDFG" : "PE_wrapper_1_6_x0",
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
			{"Name" : "fifo_A_PE_1_6_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x0166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "420", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_A_0_0_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_C_0_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_D_U", "Parent" : "214"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U216", "Parent" : "214"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U217", "Parent" : "214"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0", "Parent" : "0", "Child" : ["221", "222", "223", "224", "225"],
		"CDFG" : "PE_wrapper_1_7_x0",
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
			{"Name" : "fifo_A_PE_1_7_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "323", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x0170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "432", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_A_0_0_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_C_0_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_D_U", "Parent" : "220"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U225", "Parent" : "220"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U226", "Parent" : "220"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["227", "228", "229", "230", "231"],
		"CDFG" : "PE_wrapper_2_0_x0",
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
			{"Name" : "fifo_A_PE_2_0_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x0143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_A_0_0_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_C_0_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_D_U", "Parent" : "226"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U234", "Parent" : "226"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U235", "Parent" : "226"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["233", "234", "235", "236", "237"],
		"CDFG" : "PE_wrapper_2_1_x0",
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
			{"Name" : "fifo_A_PE_2_1_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "357", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x0147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_A_0_0_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_C_0_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_D_U", "Parent" : "232"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U243", "Parent" : "232"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U244", "Parent" : "232"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["239", "240", "241", "242", "243"],
		"CDFG" : "PE_wrapper_2_2_x0",
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
			{"Name" : "fifo_A_PE_2_2_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "369", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x0151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_A_0_0_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_C_0_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_D_U", "Parent" : "238"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U252", "Parent" : "238"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U253", "Parent" : "238"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["245", "246", "247", "248", "249"],
		"CDFG" : "PE_wrapper_2_3_x0",
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
			{"Name" : "fifo_A_PE_2_3_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x0155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "381", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_A_0_0_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_C_0_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_D_U", "Parent" : "244"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U261", "Parent" : "244"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U262", "Parent" : "244"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["251", "252", "253", "254", "255"],
		"CDFG" : "PE_wrapper_2_4_x0",
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
			{"Name" : "fifo_A_PE_2_4_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "298", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "298", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "393", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x0159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_A_0_0_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_C_0_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_D_U", "Parent" : "250"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U270", "Parent" : "250"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U271", "Parent" : "250"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["257", "258", "259", "260", "261"],
		"CDFG" : "PE_wrapper_2_5_x0",
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
			{"Name" : "fifo_A_PE_2_5_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x0163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "405", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_A_0_0_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_C_0_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_D_U", "Parent" : "256"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U279", "Parent" : "256"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U280", "Parent" : "256"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["263", "264", "265", "266", "267"],
		"CDFG" : "PE_wrapper_2_6_x0",
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
			{"Name" : "fifo_A_PE_2_6_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "417", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_A_0_0_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_C_0_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_D_U", "Parent" : "262"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U288", "Parent" : "262"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U289", "Parent" : "262"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0", "Parent" : "0", "Child" : ["269", "270", "271", "272", "273"],
		"CDFG" : "PE_wrapper_2_7_x0",
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
			{"Name" : "fifo_A_PE_2_7_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "324", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x0171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_A_0_0_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_C_0_U", "Parent" : "268"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_D_U", "Parent" : "268"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U297", "Parent" : "268"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U298", "Parent" : "268"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["275", "276", "277", "278", "279"],
		"CDFG" : "PE_wrapper_3_0_x0",
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
			{"Name" : "fifo_A_PE_3_0_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "326", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_0_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "334", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x0144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "342", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x0144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_A_0_0_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_C_0_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_D_U", "Parent" : "274"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U306", "Parent" : "274"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U307", "Parent" : "274"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["281", "282", "283", "284", "285"],
		"CDFG" : "PE_wrapper_3_1_x0",
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
			{"Name" : "fifo_A_PE_3_1_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_1_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x0148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "354", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x0148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_A_0_0_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_C_0_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_D_U", "Parent" : "280"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U315", "Parent" : "280"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U316", "Parent" : "280"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["287", "288", "289", "290", "291"],
		"CDFG" : "PE_wrapper_3_2_x0",
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
			{"Name" : "fifo_A_PE_3_2_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "596", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "328", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_2_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "336", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x0152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "366", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x0152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_A_0_0_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_C_0_U", "Parent" : "286"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_D_U", "Parent" : "286"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U324", "Parent" : "286"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U325", "Parent" : "286"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["293", "294", "295", "296", "297"],
		"CDFG" : "PE_wrapper_3_3_x0",
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
			{"Name" : "fifo_A_PE_3_3_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "600", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "298", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "329", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "337", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x0156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "378", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x0156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_A_0_0_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_C_0_U", "Parent" : "292"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_D_U", "Parent" : "292"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U333", "Parent" : "292"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U334", "Parent" : "292"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["299", "300", "301", "302", "303"],
		"CDFG" : "PE_wrapper_3_4_x0",
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
			{"Name" : "fifo_A_PE_3_4_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_4_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "338", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x0160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "390", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x0160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_A_0_0_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_C_0_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_D_U", "Parent" : "298"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U342", "Parent" : "298"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U343", "Parent" : "298"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["305", "306", "307", "308", "309"],
		"CDFG" : "PE_wrapper_3_5_x0",
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
			{"Name" : "fifo_A_PE_3_5_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "298", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "310", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "331", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_5_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "339", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x0164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "402", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_A_0_0_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_C_0_U", "Parent" : "304"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_D_U", "Parent" : "304"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U351", "Parent" : "304"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U352", "Parent" : "304"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["311", "312", "313", "314", "315"],
		"CDFG" : "PE_wrapper_3_6_x0",
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
			{"Name" : "fifo_A_PE_3_6_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "332", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_6_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "340", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "414", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_A_0_0_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_C_0_U", "Parent" : "310"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_D_U", "Parent" : "310"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U360", "Parent" : "310"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U361", "Parent" : "310"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0", "Parent" : "0", "Child" : ["317", "318", "319", "320", "321"],
		"CDFG" : "PE_wrapper_3_7_x0",
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
			{"Name" : "fifo_A_PE_3_7_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "333", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_7_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x0172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_A_0_0_U", "Parent" : "316"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_C_0_U", "Parent" : "316"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_D_U", "Parent" : "316"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U369", "Parent" : "316"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U370", "Parent" : "316"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_0_x0",
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
			{"Name" : "fifo_A_PE_0_8_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x033_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_1_x0",
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
			{"Name" : "fifo_A_PE_1_8_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x042_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_2_x0",
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
			{"Name" : "fifo_A_PE_2_8_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x051_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_3_x0",
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
			{"Name" : "fifo_A_PE_3_8_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x060_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_0_x0",
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
			{"Name" : "fifo_B_PE_4_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_1_x0",
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
			{"Name" : "fifo_B_PE_4_1_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "597", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x070_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_2_x0",
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
			{"Name" : "fifo_B_PE_4_2_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x075_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_3_x0",
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
			{"Name" : "fifo_B_PE_4_3_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x080_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_4_x0",
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
			{"Name" : "fifo_B_PE_4_4_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "298", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_5_x0",
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
			{"Name" : "fifo_B_PE_4_5_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_6_x0",
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
			{"Name" : "fifo_B_PE_4_6_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_7_x0",
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
			{"Name" : "fifo_B_PE_4_7_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_0_x0",
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
			{"Name" : "fifo_C_PE_4_0_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_1_x0",
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
			{"Name" : "fifo_C_PE_4_1_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "598", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x0110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_2_x0",
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
			{"Name" : "fifo_C_PE_4_2_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "602", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x0115_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_3_x0",
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
			{"Name" : "fifo_C_PE_4_3_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x0120_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_4_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_4_x0",
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
			{"Name" : "fifo_C_PE_4_4_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "298", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x0125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_5_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_5_x0",
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
			{"Name" : "fifo_C_PE_4_5_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x0130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_6_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_6_x0",
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
			{"Name" : "fifo_C_PE_4_6_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x0135_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_7_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_7_x0",
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
			{"Name" : "fifo_C_PE_4_7_x0140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x0140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x0_U0", "Parent" : "0", "Child" : ["343", "344"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x0144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "595", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x0144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x0_U0.local_D_V_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x0_U0.data_split_V_U", "Parent" : "342"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["346", "347"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "342", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "348", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x0143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x0143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x0_U0.local_D_V_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x0_U0.data_split_V_U", "Parent" : "345"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["349", "350"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x0142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x0_U0.local_D_V_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x0_U0.data_split_V_U", "Parent" : "348"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["352", "353"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "348", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x0141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "130", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x0141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x0_U0.local_D_V_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x0_U0.data_split_V_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x0_U0", "Parent" : "0", "Child" : ["355", "356"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "357", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "599", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x0148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x0_U0.local_D_V_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x0_U0.data_split_V_U", "Parent" : "354"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["358", "359"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "354", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "360", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x0147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x0147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x0_U0.local_D_V_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x0_U0.data_split_V_U", "Parent" : "357"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["361", "362"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "357", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x0_U0.local_D_V_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x0_U0.data_split_V_U", "Parent" : "360"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["364", "365"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "360", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "444", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x0145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x0_U0.local_D_V_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x0_U0.data_split_V_U", "Parent" : "363"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x0_U0", "Parent" : "0", "Child" : ["367", "368"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "369", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x0152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x0_U0.local_D_V_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x0_U0.data_split_V_U", "Parent" : "366"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["370", "371"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "366", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "372", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x0151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x0151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x0_U0.local_D_V_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x0_U0.data_split_V_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["373", "374"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "369", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "375", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x0150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x0_U0.local_D_V_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x0_U0.data_split_V_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["376", "377"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "372", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x0149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x0149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x0_U0.local_D_V_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x0_U0.data_split_V_U", "Parent" : "375"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x0_U0", "Parent" : "0", "Child" : ["379", "380"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_3_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "381", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x0156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x0_U0.local_D_V_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x0_U0.data_split_V_U", "Parent" : "378"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["382", "383"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "378", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x0155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x0_U0.local_D_V_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x0_U0.data_split_V_U", "Parent" : "381"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["385", "386"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "381", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x0154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x0_U0.local_D_V_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x0_U0.data_split_V_U", "Parent" : "384"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["388", "389"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "384", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x0_U0.local_D_V_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x0_U0.data_split_V_U", "Parent" : "387"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x0_U0", "Parent" : "0", "Child" : ["391", "392"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_4_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "393", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "298", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x0160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x0_U0.local_D_V_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x0_U0.data_split_V_U", "Parent" : "390"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["394", "395"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "390", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x0159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x0159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x0_U0.local_D_V_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x0_U0.data_split_V_U", "Parent" : "393"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["397", "398"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "393", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "399", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x0158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x0_U0.local_D_V_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x0_U0.data_split_V_U", "Parent" : "396"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["400", "401"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "396", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "441", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x0157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x0157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x0_U0.local_D_V_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x0_U0.data_split_V_U", "Parent" : "399"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x0_U0", "Parent" : "0", "Child" : ["403", "404"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_5_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "405", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x0164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "304", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x0_U0.local_D_V_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x0_U0.data_split_V_U", "Parent" : "402"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["406", "407"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "402", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "408", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x0163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x0_U0.local_D_V_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x0_U0.data_split_V_U", "Parent" : "405"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["409", "410"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "405", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "411", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x0162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "208", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x0162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x0_U0.local_D_V_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x0_U0.data_split_V_U", "Parent" : "408"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["412", "413"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "408", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x0_U0.local_D_V_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x0_U0.data_split_V_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x0_U0", "Parent" : "0", "Child" : ["415", "416"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_6_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "417", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x0168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x0_U0.local_D_V_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x0_U0.data_split_V_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["418", "419"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "414", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "420", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x0167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x0_U0.local_D_V_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x0_U0.data_split_V_U", "Parent" : "417"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["421", "422"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "417", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "423", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x0_U0.local_D_V_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x0_U0.data_split_V_U", "Parent" : "420"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["424", "425"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "420", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "439", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x0165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x0_U0.local_D_V_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x0_U0.data_split_V_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x0_U0", "Parent" : "0", "Child" : ["427", "428"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_7_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "429", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x0172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x0_U0.local_D_V_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x0_U0.data_split_V_U", "Parent" : "426"},
	{"ID" : "429", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["430", "431"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "426", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "432", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x0171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x0_U0.local_D_V_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x0_U0.data_split_V_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["433", "434"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "429", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "435", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x0170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x0_U0.local_D_V_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x0_U0.data_split_V_U", "Parent" : "432"},
	{"ID" : "435", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["436", "437"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "432", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "438", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x0169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x0_U0.local_D_V_U", "Parent" : "435"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x0_U0.data_split_V_U", "Parent" : "435"},
	{"ID" : "438", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_boundary_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_boundary_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "439", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "435", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "439", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_6_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_6_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "438", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "423", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_5_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_5_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "439", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "441", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "411", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_4_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_4_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "399", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_3_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_3_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "441", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "387", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "443", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_2_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "444", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "375", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "444", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_1_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "443", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "445", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "363", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "445", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_0_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "444", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x0205_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "351", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "446", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L3_out_x0",
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
	{"ID" : "447", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x0_U0", "Parent" : "0", "Child" : ["448"],
		"CDFG" : "D_drain_IO_L3_out_serialize_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L3_out_serialize_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L3_out_serialize_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x0_U0.mem_data_split_V_U", "Parent" : "447"},
	{"ID" : "449", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_c1_U", "Parent" : "0"},
	{"ID" : "450", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c2_U", "Parent" : "0"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_c_U", "Parent" : "0"},
	{"ID" : "452", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c_U", "Parent" : "0"},
	{"ID" : "453", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "454", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "455", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "456", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "458", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "459", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "460", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "461", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "462", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "465", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "468", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "470", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "471", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "472", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "474", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "475", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "476", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "478", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "479", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "480", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "481", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "482", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "483", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "484", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "485", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "486", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "487", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "488", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "489", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "490", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "491", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "493", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "494", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "495", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "496", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "497", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "498", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "499", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "500", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "501", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "502", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "504", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "505", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "506", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "507", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "508", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "510", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "511", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "512", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "513", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "514", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "515", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "516", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "518", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "519", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "520", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "521", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "522", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "523", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "524", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x0_U", "Parent" : "0"},
	{"ID" : "525", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "526", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "528", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "529", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "531", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "532", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "534", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "537", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "541", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x0_U", "Parent" : "0"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "561", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "562", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "564", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "565", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "567", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "570", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "573", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "579", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "582", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "583", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x0_U", "Parent" : "0"},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "594", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "603", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "611", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "612", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "613", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "615", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "616", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "617", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "618", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "619", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "620", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x0_U", "Parent" : "0"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "622", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "623", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "624", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_3_x0_U", "Parent" : "0"},
	{"ID" : "625", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_2_x0_U", "Parent" : "0"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_1_x0_U", "Parent" : "0"},
	{"ID" : "627", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_0_x0_U", "Parent" : "0"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_3_x0_U", "Parent" : "0"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_2_x0_U", "Parent" : "0"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_1_x0_U", "Parent" : "0"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_0_x0_U", "Parent" : "0"},
	{"ID" : "632", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_3_x0_U", "Parent" : "0"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_2_x0_U", "Parent" : "0"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_1_x0_U", "Parent" : "0"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_0_x0_U", "Parent" : "0"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_3_x0_U", "Parent" : "0"},
	{"ID" : "637", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_2_x0_U", "Parent" : "0"},
	{"ID" : "638", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_1_x0_U", "Parent" : "0"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_0_x0_U", "Parent" : "0"},
	{"ID" : "640", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_3_x0_U", "Parent" : "0"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_2_x0_U", "Parent" : "0"},
	{"ID" : "642", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_1_x0_U", "Parent" : "0"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_0_x0_U", "Parent" : "0"},
	{"ID" : "644", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_3_x0_U", "Parent" : "0"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_2_x0_U", "Parent" : "0"},
	{"ID" : "646", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_1_x0_U", "Parent" : "0"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_0_x0_U", "Parent" : "0"},
	{"ID" : "648", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_3_x0_U", "Parent" : "0"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_2_x0_U", "Parent" : "0"},
	{"ID" : "650", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_1_x0_U", "Parent" : "0"},
	{"ID" : "651", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_0_x0_U", "Parent" : "0"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_3_x0_U", "Parent" : "0"},
	{"ID" : "653", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_2_x0_U", "Parent" : "0"},
	{"ID" : "654", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_1_x0_U", "Parent" : "0"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_0_x0_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_7_x0_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_6_x0_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_5_x0_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_4_x0_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_3_x0_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_2_x0_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_1_x0_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_0_x0_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L3_out_serialize_x0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		gmem_B {Type I LastRead 72 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 1 FirstWrite -1}
		D {Type O LastRead -1 FirstWrite 4}}
	kernel0_x0_entry3 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x0_entry11 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 73}
		A {Type I LastRead 0 FirstWrite -1}}
	A_IO_L3_in_x0 {
		fifo_A_in {Type I LastRead 8 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_0_x0 {
		fifo_A_A_IO_L2_in_0_x05 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x06 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_0_0_x025 {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x06 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x07 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_1_0_x034 {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_2_x0 {
		fifo_A_A_IO_L2_in_2_x07 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x08 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_2_0_x043 {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_boundary_x0 {
		fifo_A_A_IO_L2_in_3_x08 {Type I LastRead 7 FirstWrite -1}
		fifo_A_PE_3_0_x052 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L3_in_serialize_x0 {
		gmem_B {Type I LastRead 72 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 74}
		B {Type I LastRead 0 FirstWrite -1}}
	B_IO_L3_in_x0 {
		fifo_B_in {Type I LastRead 6 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 6}}
	B_IO_L2_in_0_x0 {
		fifo_B_B_IO_L2_in_0_x09 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x010 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_0_x061 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_1_x0 {
		fifo_B_B_IO_L2_in_1_x010 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x011 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_1_x066 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_2_x0 {
		fifo_B_B_IO_L2_in_2_x011 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x012 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_2_x071 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_3_x0 {
		fifo_B_B_IO_L2_in_3_x012 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x013 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_3_x076 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_4_x0 {
		fifo_B_B_IO_L2_in_4_x013 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x014 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_4_x081 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_5_x0 {
		fifo_B_B_IO_L2_in_5_x014 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x015 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_5_x086 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_6_x0 {
		fifo_B_B_IO_L2_in_6_x015 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x016 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_6_x091 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L2_in_boundary_x0 {
		fifo_B_B_IO_L2_in_7_x016 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_0_7_x096 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L3_in_serialize_x0 {
		fifo_C_C_IO_L3_in_serialize_x03 {Type O LastRead -1 FirstWrite 2}
		C {Type I LastRead 1 FirstWrite -1}}
	C_IO_L3_in_x0 {
		fifo_C_in {Type I LastRead 6 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_0_x0 {
		fifo_C_C_IO_L2_in_0_x017 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_1_x018 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_0_x0101 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_1_x0 {
		fifo_C_C_IO_L2_in_1_x018 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_2_x019 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_1_x0106 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_2_x0 {
		fifo_C_C_IO_L2_in_2_x019 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_3_x020 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_2_x0111 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_3_x0 {
		fifo_C_C_IO_L2_in_3_x020 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_4_x021 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_3_x0116 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_4_x0 {
		fifo_C_C_IO_L2_in_4_x021 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_5_x022 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_4_x0121 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_5_x0 {
		fifo_C_C_IO_L2_in_5_x022 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_6_x023 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_5_x0126 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_6_x0 {
		fifo_C_C_IO_L2_in_6_x023 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_7_x024 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_6_x0131 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_boundary_x0 {
		fifo_C_C_IO_L2_in_7_x024 {Type I LastRead 5 FirstWrite -1}
		fifo_C_PE_0_7_x0136 {Type O LastRead -1 FirstWrite 9}}
	PE_wrapper_0_0_x0 {
		fifo_A_PE_0_0_x025 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_1_x026 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_0_x061 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_0_x062 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_0_x0101 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_0_x0102 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_0_x0141 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_1_x0 {
		fifo_A_PE_0_1_x026 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_2_x027 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_1_x066 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_1_x067 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_1_x0106 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_1_x0107 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_1_x0145 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_2_x0 {
		fifo_A_PE_0_2_x027 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_3_x028 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_2_x071 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_2_x072 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_2_x0111 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_2_x0112 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_2_x0149 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x028 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_4_x029 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_3_x076 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_3_x077 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_3_x0116 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_3_x0117 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_3_x0153 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_4_x0 {
		fifo_A_PE_0_4_x029 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_5_x030 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_4_x081 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_4_x082 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_4_x0121 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_4_x0122 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_4_x0157 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x030 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_6_x031 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_5_x086 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_5_x087 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_5_x0126 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_5_x0127 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_5_x0161 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_6_x0 {
		fifo_A_PE_0_6_x031 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_7_x032 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_6_x091 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_6_x092 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_6_x0131 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_6_x0132 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_6_x0165 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_7_x0 {
		fifo_A_PE_0_7_x032 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_8_x033 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_0_7_x096 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_7_x097 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_0_7_x0136 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_7_x0137 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_0_7_x0169 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x034 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_1_x035 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_0_x062 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_0_x063 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_0_x0102 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_0_x0103 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_0_x0142 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x035 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_2_x036 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_1_x067 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_1_x068 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_1_x0107 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_1_x0108 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_1_x0146 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_2_x0 {
		fifo_A_PE_1_2_x036 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_3_x037 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_2_x072 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_2_x073 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_2_x0112 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_2_x0113 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_2_x0150 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_3_x0 {
		fifo_A_PE_1_3_x037 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_4_x038 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_3_x077 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_3_x078 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_3_x0117 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_3_x0118 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_3_x0154 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x038 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_5_x039 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_4_x082 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_4_x083 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_4_x0122 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_4_x0123 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_4_x0158 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_5_x0 {
		fifo_A_PE_1_5_x039 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_6_x040 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_5_x087 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_5_x088 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_5_x0127 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_5_x0128 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_5_x0162 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_6_x0 {
		fifo_A_PE_1_6_x040 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_7_x041 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_6_x092 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_6_x093 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_6_x0132 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_6_x0133 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_6_x0166 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_7_x0 {
		fifo_A_PE_1_7_x041 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_8_x042 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_1_7_x097 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_7_x098 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_1_7_x0137 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_7_x0138 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_1_7_x0170 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_0_x0 {
		fifo_A_PE_2_0_x043 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_1_x044 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_0_x063 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_0_x064 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_0_x0103 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_0_x0104 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_0_x0143 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x044 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_2_x045 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_1_x068 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_1_x069 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_1_x0108 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_1_x0109 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_1_x0147 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_2_x0 {
		fifo_A_PE_2_2_x045 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_3_x046 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_2_x073 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_2_x074 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_2_x0113 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_2_x0114 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_2_x0151 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_3_x0 {
		fifo_A_PE_2_3_x046 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_4_x047 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_3_x078 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_3_x079 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_3_x0118 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_3_x0119 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_3_x0155 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_4_x0 {
		fifo_A_PE_2_4_x047 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_5_x048 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_4_x083 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_4_x084 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_4_x0123 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_4_x0124 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_4_x0159 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_5_x0 {
		fifo_A_PE_2_5_x048 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_6_x049 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_5_x088 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_5_x089 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_5_x0128 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_5_x0129 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_5_x0163 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x049 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_7_x050 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_6_x093 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_6_x094 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_6_x0133 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_6_x0134 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_6_x0167 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_7_x0 {
		fifo_A_PE_2_7_x050 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_8_x051 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_2_7_x098 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_7_x099 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_2_7_x0138 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_7_x0139 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_2_7_x0171 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_0_x0 {
		fifo_A_PE_3_0_x052 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_1_x053 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_0_x064 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_0_x065 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_0_x0104 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_0_x0105 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_0_x0144 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_1_x0 {
		fifo_A_PE_3_1_x053 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_2_x054 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_1_x069 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_1_x070 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_1_x0109 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_1_x0110 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_1_x0148 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_2_x0 {
		fifo_A_PE_3_2_x054 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_3_x055 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_2_x074 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_2_x075 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_2_x0114 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_2_x0115 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_2_x0152 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_3_x0 {
		fifo_A_PE_3_3_x055 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_4_x056 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_3_x079 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_3_x080 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_3_x0119 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_3_x0120 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_3_x0156 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x056 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_5_x057 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_4_x084 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_4_x085 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_4_x0124 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_4_x0125 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_4_x0160 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_5_x0 {
		fifo_A_PE_3_5_x057 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_6_x058 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_5_x089 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_5_x090 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_5_x0129 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_5_x0130 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_5_x0164 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_6_x0 {
		fifo_A_PE_3_6_x058 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_7_x059 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_6_x094 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_6_x095 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_6_x0134 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_6_x0135 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_6_x0168 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_7_x0 {
		fifo_A_PE_3_7_x059 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_8_x060 {Type O LastRead -1 FirstWrite 16}
		fifo_B_PE_3_7_x099 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_7_x0100 {Type O LastRead -1 FirstWrite 16}
		fifo_C_PE_3_7_x0139 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_7_x0140 {Type O LastRead -1 FirstWrite 16}
		fifo_D_drain_PE_3_7_x0172 {Type O LastRead -1 FirstWrite 12}}
	A_PE_dummy_in_0_x0 {
		fifo_A_PE_0_8_x033 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_1_x0 {
		fifo_A_PE_1_8_x042 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_2_x0 {
		fifo_A_PE_2_8_x051 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_3_x0 {
		fifo_A_PE_3_8_x060 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_0_x0 {
		fifo_B_PE_4_0_x065 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_1_x0 {
		fifo_B_PE_4_1_x070 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_2_x0 {
		fifo_B_PE_4_2_x075 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_3_x0 {
		fifo_B_PE_4_3_x080 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_4_x0 {
		fifo_B_PE_4_4_x085 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_5_x0 {
		fifo_B_PE_4_5_x090 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_6_x0 {
		fifo_B_PE_4_6_x095 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_7_x0 {
		fifo_B_PE_4_7_x0100 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_0_x0 {
		fifo_C_PE_4_0_x0105 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_1_x0 {
		fifo_C_PE_4_1_x0110 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_2_x0 {
		fifo_C_PE_4_2_x0115 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_3_x0 {
		fifo_C_PE_4_3_x0120 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_4_x0 {
		fifo_C_PE_4_4_x0125 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_5_x0 {
		fifo_C_PE_4_5_x0130 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_6_x0 {
		fifo_C_PE_4_6_x0135 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_7_x0 {
		fifo_C_PE_4_7_x0140 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_0_3_x0176 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_0_x0144 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_0_3_x0176 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_2_x0175 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_0_x0143 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_0_2_x0175 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_1_x0174 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_0_x0142 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_0_1_x0174 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_0_x0173 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_0_x0141 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_1_3_x0180 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_1_x0148 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_1_3_x0180 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_2_x0179 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_1_x0147 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_1_2_x0179 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_1_x0178 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_1_x0146 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_1_1_x0178 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_0_x0177 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_1_x0145 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_2_3_x0184 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_2_x0152 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_2_3_x0184 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_2_x0183 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_2_x0151 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_2_2_x0183 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_1_x0182 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_2_x0150 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_2_1_x0182 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_0_x0181 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_2_x0149 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_3_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_3_x0188 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_3_x0156 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_3_x0188 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_2_x0187 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_3_x0155 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_2_x0187 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_3_x0154 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_3_x0153 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_4_x0 {
		fifo_D_drain_D_drain_IO_L1_out_4_3_x0192 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_4_x0160 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_4_3_x0192 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_2_x0191 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_4_x0159 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_4_2_x0191 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_1_x0190 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_4_x0158 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_4_1_x0190 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_0_x0189 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_4_x0157 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_5_x0 {
		fifo_D_drain_D_drain_IO_L1_out_5_3_x0196 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_5_x0164 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_5_3_x0196 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_2_x0195 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_5_x0163 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_5_2_x0195 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_1_x0194 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_5_x0162 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_5_1_x0194 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_0_x0193 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_5_x0161 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_6_x0 {
		fifo_D_drain_D_drain_IO_L1_out_6_3_x0200 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_6_x0168 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_6_3_x0200 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_2_x0199 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_6_x0167 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_6_2_x0199 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_1_x0198 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_6_x0166 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_6_1_x0198 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_0_x0197 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_6_x0165 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_7_x0 {
		fifo_D_drain_D_drain_IO_L1_out_7_3_x0204 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_7_x0172 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_7_3_x0204 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_2_x0203 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_7_x0171 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_7_2_x0203 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_1_x0202 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_7_x0170 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_7_1_x0202 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_0_x0201 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_7_x0169 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L2_out_boundary_x0 {
		fifo_D_drain_D_drain_IO_L2_out_7_x0212 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_D_drain_IO_L1_out_7_0_x0201 {Type I LastRead 6 FirstWrite -1}}
	D_drain_IO_L2_out_6_x0 {
		fifo_D_drain_D_drain_IO_L2_out_7_x0212 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_6_x0211 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_6_0_x0197 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_5_x0 {
		fifo_D_drain_D_drain_IO_L2_out_6_x0211 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_5_x0210 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_5_0_x0193 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_4_x0 {
		fifo_D_drain_D_drain_IO_L2_out_5_x0210 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_4_x0209 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_4_0_x0189 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_3_x0 {
		fifo_D_drain_D_drain_IO_L2_out_4_x0209 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_3_x0208 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_2_x0 {
		fifo_D_drain_D_drain_IO_L2_out_3_x0208 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_2_x0207 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_2_0_x0181 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_1_x0 {
		fifo_D_drain_D_drain_IO_L2_out_2_x0207 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_1_x0206 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_1_0_x0177 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_0_x0 {
		fifo_D_drain_D_drain_IO_L2_out_1_x0206 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_0_x0205 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_0_0_x0173 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L3_out_x0 {
		fifo_D_drain_out {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_local_in {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L3_out_serialize_x0 {
		fifo_D_drain_D_drain_IO_L3_out_serialize_x04 {Type I LastRead 3 FirstWrite -1}
		D {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1463927210", "Max" : "1224218434"}
	, {"Name" : "Interval", "Min" : "-239708718", "Max" : "-239708718"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_A { m_axi {  { m_axi_gmem_A_AWVALID VALID 1 1 }  { m_axi_gmem_A_AWREADY READY 0 1 }  { m_axi_gmem_A_AWADDR ADDR 1 64 }  { m_axi_gmem_A_AWID ID 1 1 }  { m_axi_gmem_A_AWLEN LEN 1 32 }  { m_axi_gmem_A_AWSIZE SIZE 1 3 }  { m_axi_gmem_A_AWBURST BURST 1 2 }  { m_axi_gmem_A_AWLOCK LOCK 1 2 }  { m_axi_gmem_A_AWCACHE CACHE 1 4 }  { m_axi_gmem_A_AWPROT PROT 1 3 }  { m_axi_gmem_A_AWQOS QOS 1 4 }  { m_axi_gmem_A_AWREGION REGION 1 4 }  { m_axi_gmem_A_AWUSER USER 1 1 }  { m_axi_gmem_A_WVALID VALID 1 1 }  { m_axi_gmem_A_WREADY READY 0 1 }  { m_axi_gmem_A_WDATA DATA 1 512 }  { m_axi_gmem_A_WSTRB STRB 1 64 }  { m_axi_gmem_A_WLAST LAST 1 1 }  { m_axi_gmem_A_WID ID 1 1 }  { m_axi_gmem_A_WUSER USER 1 1 }  { m_axi_gmem_A_ARVALID VALID 1 1 }  { m_axi_gmem_A_ARREADY READY 0 1 }  { m_axi_gmem_A_ARADDR ADDR 1 64 }  { m_axi_gmem_A_ARID ID 1 1 }  { m_axi_gmem_A_ARLEN LEN 1 32 }  { m_axi_gmem_A_ARSIZE SIZE 1 3 }  { m_axi_gmem_A_ARBURST BURST 1 2 }  { m_axi_gmem_A_ARLOCK LOCK 1 2 }  { m_axi_gmem_A_ARCACHE CACHE 1 4 }  { m_axi_gmem_A_ARPROT PROT 1 3 }  { m_axi_gmem_A_ARQOS QOS 1 4 }  { m_axi_gmem_A_ARREGION REGION 1 4 }  { m_axi_gmem_A_ARUSER USER 1 1 }  { m_axi_gmem_A_RVALID VALID 0 1 }  { m_axi_gmem_A_RREADY READY 1 1 }  { m_axi_gmem_A_RDATA DATA 0 512 }  { m_axi_gmem_A_RLAST LAST 0 1 }  { m_axi_gmem_A_RID ID 0 1 }  { m_axi_gmem_A_RUSER USER 0 1 }  { m_axi_gmem_A_RRESP RESP 0 2 }  { m_axi_gmem_A_BVALID VALID 0 1 }  { m_axi_gmem_A_BREADY READY 1 1 }  { m_axi_gmem_A_BRESP RESP 0 2 }  { m_axi_gmem_A_BID ID 0 1 }  { m_axi_gmem_A_BUSER USER 0 1 } } }
	gmem_B { m_axi {  { m_axi_gmem_B_AWVALID VALID 1 1 }  { m_axi_gmem_B_AWREADY READY 0 1 }  { m_axi_gmem_B_AWADDR ADDR 1 64 }  { m_axi_gmem_B_AWID ID 1 1 }  { m_axi_gmem_B_AWLEN LEN 1 32 }  { m_axi_gmem_B_AWSIZE SIZE 1 3 }  { m_axi_gmem_B_AWBURST BURST 1 2 }  { m_axi_gmem_B_AWLOCK LOCK 1 2 }  { m_axi_gmem_B_AWCACHE CACHE 1 4 }  { m_axi_gmem_B_AWPROT PROT 1 3 }  { m_axi_gmem_B_AWQOS QOS 1 4 }  { m_axi_gmem_B_AWREGION REGION 1 4 }  { m_axi_gmem_B_AWUSER USER 1 1 }  { m_axi_gmem_B_WVALID VALID 1 1 }  { m_axi_gmem_B_WREADY READY 0 1 }  { m_axi_gmem_B_WDATA DATA 1 512 }  { m_axi_gmem_B_WSTRB STRB 1 64 }  { m_axi_gmem_B_WLAST LAST 1 1 }  { m_axi_gmem_B_WID ID 1 1 }  { m_axi_gmem_B_WUSER USER 1 1 }  { m_axi_gmem_B_ARVALID VALID 1 1 }  { m_axi_gmem_B_ARREADY READY 0 1 }  { m_axi_gmem_B_ARADDR ADDR 1 64 }  { m_axi_gmem_B_ARID ID 1 1 }  { m_axi_gmem_B_ARLEN LEN 1 32 }  { m_axi_gmem_B_ARSIZE SIZE 1 3 }  { m_axi_gmem_B_ARBURST BURST 1 2 }  { m_axi_gmem_B_ARLOCK LOCK 1 2 }  { m_axi_gmem_B_ARCACHE CACHE 1 4 }  { m_axi_gmem_B_ARPROT PROT 1 3 }  { m_axi_gmem_B_ARQOS QOS 1 4 }  { m_axi_gmem_B_ARREGION REGION 1 4 }  { m_axi_gmem_B_ARUSER USER 1 1 }  { m_axi_gmem_B_RVALID VALID 0 1 }  { m_axi_gmem_B_RREADY READY 1 1 }  { m_axi_gmem_B_RDATA DATA 0 512 }  { m_axi_gmem_B_RLAST LAST 0 1 }  { m_axi_gmem_B_RID ID 0 1 }  { m_axi_gmem_B_RUSER USER 0 1 }  { m_axi_gmem_B_RRESP RESP 0 2 }  { m_axi_gmem_B_BVALID VALID 0 1 }  { m_axi_gmem_B_BREADY READY 1 1 }  { m_axi_gmem_B_BRESP RESP 0 2 }  { m_axi_gmem_B_BID ID 0 1 }  { m_axi_gmem_B_BUSER USER 0 1 } } }
	A { ap_none {  { A in_data 0 64 }  { A_ap_vld in_vld 0 1 } } }
	B { ap_none {  { B in_data 0 64 }  { B_ap_vld in_vld 0 1 } } }
	C { ap_memory {  { C_address0 mem_address 1 10 }  { C_ce0 mem_ce 1 1 }  { C_d0 mem_din 1 512 }  { C_q0 mem_dout 0 512 }  { C_we0 mem_we 1 1 }  { C_address1 mem_address 1 10 }  { C_ce1 mem_ce 1 1 }  { C_d1 mem_din 1 512 }  { C_q1 mem_dout 0 512 }  { C_we1 mem_we 1 1 } } }
	D { ap_memory {  { D_address0 mem_address 1 10 }  { D_ce0 mem_ce 1 1 }  { D_d0 mem_din 1 512 }  { D_q0 mem_dout 0 512 }  { D_we0 mem_we 1 1 }  { D_address1 mem_address 1 10 }  { D_ce1 mem_ce 1 1 }  { D_d1 mem_din 1 512 }  { D_q1 mem_dout 0 512 }  { D_we1 mem_we 1 1 } } }
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
	{ gmem_A int 512 regular {axi_master 0}  }
	{ gmem_B int 512 regular {axi_master 0}  }
	{ A int 64 regular  }
	{ B int 64 regular  }
	{ C int 512 regular {array 1024 { 1 3 } 1 1 }  }
	{ D int 512 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_A", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_B", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 121
set portList { 
	{ m_axi_gmem_A_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_A_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_A_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_A_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_A_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_A_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_A_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_A_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_A_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_A_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_A_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_A_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_A_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_A_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_B_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_B_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_B_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_B_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_B_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem_B_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_B_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_B_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_B_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_B_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_B_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_B_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem_B_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_B_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_B_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_B_BUSER sc_in sc_lv 1 signal 1 } 
	{ A sc_in sc_lv 64 signal 2 } 
	{ B sc_in sc_lv 64 signal 3 } 
	{ C_address0 sc_out sc_lv 10 signal 4 } 
	{ C_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_d0 sc_out sc_lv 512 signal 4 } 
	{ C_q0 sc_in sc_lv 512 signal 4 } 
	{ C_we0 sc_out sc_logic 1 signal 4 } 
	{ C_address1 sc_out sc_lv 10 signal 4 } 
	{ C_ce1 sc_out sc_logic 1 signal 4 } 
	{ C_d1 sc_out sc_lv 512 signal 4 } 
	{ C_q1 sc_in sc_lv 512 signal 4 } 
	{ C_we1 sc_out sc_logic 1 signal 4 } 
	{ D_address0 sc_out sc_lv 10 signal 5 } 
	{ D_ce0 sc_out sc_logic 1 signal 5 } 
	{ D_d0 sc_out sc_lv 512 signal 5 } 
	{ D_q0 sc_in sc_lv 512 signal 5 } 
	{ D_we0 sc_out sc_logic 1 signal 5 } 
	{ D_address1 sc_out sc_lv 10 signal 5 } 
	{ D_ce1 sc_out sc_logic 1 signal 5 } 
	{ D_d1 sc_out sc_lv 512 signal 5 } 
	{ D_q1 sc_in sc_lv 512 signal 5 } 
	{ D_we1 sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ A_ap_vld sc_in sc_logic 1 invld 2 } 
	{ B_ap_vld sc_in sc_logic 1 invld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem_A_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_A_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_A_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_A_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_A_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_A_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_A_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_A_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_A_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_A_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_A_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_A_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_A_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_A_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_A_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_A_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_A", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_A_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_A", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_A_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_A_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_A_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_A_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_A_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_A_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_A_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_A_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_A_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_A_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_A_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_A_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_A_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_A_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_A_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_A_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_A_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_A_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_A_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_A", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_A_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_A_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_A_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_A_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_A_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_A_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_A_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_A", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_A_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_A_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "BUSER" }} , 
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
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
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
 	{ "name": "D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "D", "role": "address0" }} , 
 	{ "name": "D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce0" }} , 
 	{ "name": "D_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "D", "role": "d0" }} , 
 	{ "name": "D_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "D", "role": "q0" }} , 
 	{ "name": "D_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "we0" }} , 
 	{ "name": "D_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "D", "role": "address1" }} , 
 	{ "name": "D_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce1" }} , 
 	{ "name": "D_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "D", "role": "d1" }} , 
 	{ "name": "D_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "D", "role": "q1" }} , 
 	{ "name": "D_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "A_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "A", "role": "ap_vld" }} , 
 	{ "name": "B_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "12", "18", "24", "30", "31", "32", "36", "40", "44", "48", "52", "56", "60", "64", "65", "66", "72", "78", "84", "90", "96", "102", "108", "114", "140", "166", "192", "218", "244", "270", "296", "322", "348", "374", "400", "426", "452", "478", "504", "530", "556", "582", "608", "634", "660", "686", "712", "738", "764", "790", "816", "842", "868", "894", "920", "946", "947", "948", "949", "950", "951", "952", "953", "954", "955", "956", "957", "958", "959", "960", "961", "962", "963", "964", "965", "966", "969", "972", "975", "978", "981", "984", "987", "990", "993", "996", "999", "1002", "1005", "1008", "1011", "1014", "1017", "1020", "1023", "1026", "1029", "1032", "1035", "1038", "1041", "1044", "1047", "1050", "1053", "1056", "1059", "1062", "1063", "1064", "1065", "1066", "1067", "1068", "1069", "1070", "1071", "1073", "1074", "1075", "1076", "1077", "1078", "1079", "1080", "1081", "1082", "1083", "1084", "1085", "1086", "1087", "1088", "1089", "1090", "1091", "1092", "1093", "1094", "1095", "1096", "1097", "1098", "1099", "1100", "1101", "1102", "1103", "1104", "1105", "1106", "1107", "1108", "1109", "1110", "1111", "1112", "1113", "1114", "1115", "1116", "1117", "1118", "1119", "1120", "1121", "1122", "1123", "1124", "1125", "1126", "1127", "1128", "1129", "1130", "1131", "1132", "1133", "1134", "1135", "1136", "1137", "1138", "1139", "1140", "1141", "1142", "1143", "1144", "1145", "1146", "1147", "1148", "1149", "1150", "1151", "1152", "1153", "1154", "1155", "1156", "1157", "1158", "1159", "1160", "1161", "1162", "1163", "1164", "1165", "1166", "1167", "1168", "1169", "1170", "1171", "1172", "1173", "1174", "1175", "1176", "1177", "1178", "1179", "1180", "1181", "1182", "1183", "1184", "1185", "1186", "1187", "1188", "1189", "1190", "1191", "1192", "1193", "1194", "1195", "1196", "1197", "1198", "1199", "1200", "1201", "1202", "1203", "1204", "1205", "1206", "1207", "1208", "1209", "1210", "1211", "1212", "1213", "1214", "1215", "1216", "1217", "1218", "1219", "1220", "1221", "1222", "1223", "1224", "1225", "1226", "1227", "1228", "1229", "1230", "1231", "1232", "1233", "1234", "1235", "1236", "1237", "1238", "1239", "1240", "1241", "1242", "1243", "1244", "1245", "1246", "1247", "1248", "1249", "1250", "1251", "1252", "1253", "1254", "1255", "1256", "1257", "1258", "1259", "1260", "1261", "1262", "1263", "1264", "1265", "1266", "1267", "1268", "1269", "1270", "1271", "1272", "1273", "1274", "1275", "1276", "1277", "1278", "1279", "1280", "1281", "1282", "1283", "1284", "1285", "1286", "1287", "1288"],
		"CDFG" : "kernel0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125677961", "EstimateLatencyMax" : "158046471",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x0_entry3_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x0_U0"},
			{"ID" : "30", "Name" : "B_IO_L3_in_serialize_x0_U0"},
			{"ID" : "64", "Name" : "C_IO_L3_in_serialize_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "946", "Name" : "A_PE_dummy_in_0_x0_U0"},
			{"ID" : "947", "Name" : "A_PE_dummy_in_1_x0_U0"},
			{"ID" : "948", "Name" : "A_PE_dummy_in_2_x0_U0"},
			{"ID" : "949", "Name" : "A_PE_dummy_in_3_x0_U0"},
			{"ID" : "950", "Name" : "B_PE_dummy_in_0_x0_U0"},
			{"ID" : "951", "Name" : "B_PE_dummy_in_1_x0_U0"},
			{"ID" : "952", "Name" : "B_PE_dummy_in_2_x0_U0"},
			{"ID" : "953", "Name" : "B_PE_dummy_in_3_x0_U0"},
			{"ID" : "954", "Name" : "B_PE_dummy_in_4_x0_U0"},
			{"ID" : "955", "Name" : "B_PE_dummy_in_5_x0_U0"},
			{"ID" : "956", "Name" : "B_PE_dummy_in_6_x0_U0"},
			{"ID" : "957", "Name" : "B_PE_dummy_in_7_x0_U0"},
			{"ID" : "958", "Name" : "C_PE_dummy_in_0_x0_U0"},
			{"ID" : "959", "Name" : "C_PE_dummy_in_1_x0_U0"},
			{"ID" : "960", "Name" : "C_PE_dummy_in_2_x0_U0"},
			{"ID" : "961", "Name" : "C_PE_dummy_in_3_x0_U0"},
			{"ID" : "962", "Name" : "C_PE_dummy_in_4_x0_U0"},
			{"ID" : "963", "Name" : "C_PE_dummy_in_5_x0_U0"},
			{"ID" : "964", "Name" : "C_PE_dummy_in_6_x0_U0"},
			{"ID" : "965", "Name" : "C_PE_dummy_in_7_x0_U0"},
			{"ID" : "1071", "Name" : "D_drain_IO_L3_out_serialize_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x0_U0", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "B_IO_L3_in_serialize_x0_U0", "Port" : "gmem_B"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "C_IO_L3_in_serialize_x0_U0", "Port" : "C"}]},
			{"Name" : "D", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1071", "SubInstance" : "D_drain_IO_L3_out_serialize_x0_U0", "Port" : "D"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry3_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry3",
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
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "1073", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "1074", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry11_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry11",
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
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "1073", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "1074", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "1075", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "1076", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "A_IO_L3_in_serialize_x0",
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
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_A_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_A_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "1077", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "1075", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0.add_11ns_11ns_11_1_1_U9", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "A_IO_L3_in_x0",
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
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "1077", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "1078", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11"],
		"CDFG" : "A_IO_L2_in_0_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "1078", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "1079", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "1080", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x025_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_ping_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_pong_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.data_split_V_64_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.data_split_V_63_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.data_split_V_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17"],
		"CDFG" : "A_IO_L2_in_1_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "1079", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "1081", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "322", "DependentChan" : "1082", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x034_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_ping_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.data_split_V_60_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.data_split_V_59_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.data_split_V_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23"],
		"CDFG" : "A_IO_L2_in_2_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "1081", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "1083", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "1084", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x043_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_ping_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.data_split_V_56_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.data_split_V_55_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.data_split_V_U", "Parent" : "18"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29"],
		"CDFG" : "A_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "1083", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "738", "DependentChan" : "1085", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x052_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_ping_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.data_split_V_52_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.data_split_V_51_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.data_split_V_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_serialize_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6215", "EstimateLatencyMax" : "6215",
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
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "1086", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "1076", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "B_IO_L3_in_x0",
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
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "1086", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "1087", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["33", "34", "35"],
		"CDFG" : "B_IO_L2_in_0_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "1087", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "1088", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "1089", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x061_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_ping_V_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_pong_V_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.data_split_V_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["37", "38", "39"],
		"CDFG" : "B_IO_L2_in_1_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "1088", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "1090", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "1091", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x066_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_ping_V_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_pong_V_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.data_split_V_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["41", "42", "43"],
		"CDFG" : "B_IO_L2_in_2_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_2_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "1090", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x012", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "1092", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "1093", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x071_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_ping_V_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_pong_V_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.data_split_V_U", "Parent" : "40"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["45", "46", "47"],
		"CDFG" : "B_IO_L2_in_3_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_3_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "1092", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "1094", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "1095", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x076_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_ping_V_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_pong_V_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.data_split_V_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["49", "50", "51"],
		"CDFG" : "B_IO_L2_in_4_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_4_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "1094", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x014", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "1096", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "1097", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x081_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_ping_V_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_pong_V_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.data_split_V_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["53", "54", "55"],
		"CDFG" : "B_IO_L2_in_5_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_5_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "1096", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "1098", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "1099", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_ping_V_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_pong_V_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.data_split_V_U", "Parent" : "52"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["57", "58", "59"],
		"CDFG" : "B_IO_L2_in_6_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_6_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "1098", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "1100", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "1101", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_ping_V_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_pong_V_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.data_split_V_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["61", "62", "63"],
		"CDFG" : "B_IO_L2_in_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "53256", "EstimateLatencyMax" : "25231368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "1100", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "1102", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_ping_V_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.data_split_V_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "C_IO_L3_in_serialize_x0",
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
			{"Name" : "fifo_C_C_IO_L3_in_serialize_x03", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "1103", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L3_in_serialize_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_x0_U0", "Parent" : "0",
		"CDFG" : "C_IO_L3_in_x0",
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
			{"Name" : "fifo_C_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "1103", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "1104", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["67", "68", "69", "70", "71"],
		"CDFG" : "C_IO_L2_in_0_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_0_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "1104", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_0_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_1_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "1105", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "1106", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.local_C_ping_V_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.local_C_pong_V_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.data_split_V_32_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.data_split_V_31_U", "Parent" : "66"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.data_split_V_U", "Parent" : "66"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["73", "74", "75", "76", "77"],
		"CDFG" : "C_IO_L2_in_1_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_1_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "1105", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_2_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "1107", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "1108", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.local_C_ping_V_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.local_C_pong_V_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.data_split_V_28_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.data_split_V_27_U", "Parent" : "72"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.data_split_V_U", "Parent" : "72"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["79", "80", "81", "82", "83"],
		"CDFG" : "C_IO_L2_in_2_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_2_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "1107", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_3_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "1109", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "1110", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x0111_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.local_C_ping_V_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.local_C_pong_V_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.data_split_V_24_U", "Parent" : "78"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.data_split_V_23_U", "Parent" : "78"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.data_split_V_U", "Parent" : "78"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["85", "86", "87", "88", "89"],
		"CDFG" : "C_IO_L2_in_3_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_3_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "1109", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_4_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "1111", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "1112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x0116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.local_C_ping_V_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.local_C_pong_V_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.data_split_V_20_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.data_split_V_19_U", "Parent" : "84"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.data_split_V_U", "Parent" : "84"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["91", "92", "93", "94", "95"],
		"CDFG" : "C_IO_L2_in_4_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_4_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "1111", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_5_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "1113", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "1114", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x0121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.local_C_ping_V_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.local_C_pong_V_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.data_split_V_16_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.data_split_V_15_U", "Parent" : "90"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.data_split_V_U", "Parent" : "90"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["97", "98", "99", "100", "101"],
		"CDFG" : "C_IO_L2_in_5_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_5_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "1113", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_6_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "1115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "1116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.local_C_ping_V_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.local_C_pong_V_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.data_split_V_12_U", "Parent" : "96"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.data_split_V_11_U", "Parent" : "96"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.data_split_V_U", "Parent" : "96"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["103", "104", "105", "106", "107"],
		"CDFG" : "C_IO_L2_in_6_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_6_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "1115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_7_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "108", "DependentChan" : "1117", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "1118", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x0131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.local_C_ping_V_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.local_C_pong_V_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.data_split_V_8_U", "Parent" : "102"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.data_split_V_7_U", "Parent" : "102"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.data_split_V_U", "Parent" : "102"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["109", "110", "111", "112", "113"],
		"CDFG" : "C_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_C_C_IO_L2_in_7_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "1117", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "1119", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x0136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.local_C_ping_V_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.local_C_pong_V_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.data_split_V_4_U", "Parent" : "108"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.data_split_V_3_U", "Parent" : "108"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.data_split_V_U", "Parent" : "108"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139"],
		"CDFG" : "PE_wrapper_0_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "1080", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "1120", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "1089", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "322", "DependentChan" : "1121", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "1106", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "322", "DependentChan" : "1122", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x0141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "975", "DependentChan" : "1123", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x0141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_D_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U89", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U90", "Parent" : "114"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U91", "Parent" : "114"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U92", "Parent" : "114"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U93", "Parent" : "114"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U94", "Parent" : "114"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "114"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U96", "Parent" : "114"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U97", "Parent" : "114"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U98", "Parent" : "114"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U99", "Parent" : "114"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U100", "Parent" : "114"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U101", "Parent" : "114"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U102", "Parent" : "114"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U103", "Parent" : "114"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U104", "Parent" : "114"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U105", "Parent" : "114"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U106", "Parent" : "114"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U107", "Parent" : "114"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U108", "Parent" : "114"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U109", "Parent" : "114"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U110", "Parent" : "114"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U111", "Parent" : "114"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U112", "Parent" : "114"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165"],
		"CDFG" : "PE_wrapper_0_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "1120", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "1124", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "1091", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "348", "DependentChan" : "1125", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "1108", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "348", "DependentChan" : "1126", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x0145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "987", "DependentChan" : "1127", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_D_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U123", "Parent" : "140"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U124", "Parent" : "140"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U125", "Parent" : "140"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U126", "Parent" : "140"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U127", "Parent" : "140"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U128", "Parent" : "140"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U129", "Parent" : "140"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U130", "Parent" : "140"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U131", "Parent" : "140"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U132", "Parent" : "140"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U133", "Parent" : "140"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U134", "Parent" : "140"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U135", "Parent" : "140"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U136", "Parent" : "140"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U137", "Parent" : "140"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U138", "Parent" : "140"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U139", "Parent" : "140"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U140", "Parent" : "140"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U141", "Parent" : "140"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U142", "Parent" : "140"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U143", "Parent" : "140"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U144", "Parent" : "140"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U145", "Parent" : "140"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U146", "Parent" : "140"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191"],
		"CDFG" : "PE_wrapper_0_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_2_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "1124", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "1128", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "1093", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "1129", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "1110", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "1130", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "999", "DependentChan" : "1131", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x0149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_D_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U154", "Parent" : "166"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U155", "Parent" : "166"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U156", "Parent" : "166"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U157", "Parent" : "166"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U158", "Parent" : "166"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U159", "Parent" : "166"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U160", "Parent" : "166"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U161", "Parent" : "166"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U162", "Parent" : "166"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U163", "Parent" : "166"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U164", "Parent" : "166"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U165", "Parent" : "166"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U166", "Parent" : "166"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U167", "Parent" : "166"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U168", "Parent" : "166"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U169", "Parent" : "166"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U170", "Parent" : "166"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U171", "Parent" : "166"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U172", "Parent" : "166"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U173", "Parent" : "166"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U174", "Parent" : "166"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U175", "Parent" : "166"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U176", "Parent" : "166"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U177", "Parent" : "166"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217"],
		"CDFG" : "PE_wrapper_0_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_3_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "1128", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "1132", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "1095", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "400", "DependentChan" : "1133", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "1112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "400", "DependentChan" : "1134", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1011", "DependentChan" : "1135", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_D_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U185", "Parent" : "192"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U186", "Parent" : "192"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U187", "Parent" : "192"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U188", "Parent" : "192"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U189", "Parent" : "192"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U190", "Parent" : "192"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U191", "Parent" : "192"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U192", "Parent" : "192"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U193", "Parent" : "192"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U194", "Parent" : "192"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U195", "Parent" : "192"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U196", "Parent" : "192"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U197", "Parent" : "192"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U198", "Parent" : "192"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U199", "Parent" : "192"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U200", "Parent" : "192"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U201", "Parent" : "192"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U202", "Parent" : "192"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U203", "Parent" : "192"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U204", "Parent" : "192"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U205", "Parent" : "192"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U206", "Parent" : "192"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U207", "Parent" : "192"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U208", "Parent" : "192"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243"],
		"CDFG" : "PE_wrapper_0_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_4_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "1132", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "1136", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "1097", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "1137", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "1114", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "1138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1023", "DependentChan" : "1139", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x0157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_D_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U216", "Parent" : "218"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U217", "Parent" : "218"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U218", "Parent" : "218"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U219", "Parent" : "218"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U220", "Parent" : "218"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U221", "Parent" : "218"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U222", "Parent" : "218"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U223", "Parent" : "218"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U224", "Parent" : "218"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U225", "Parent" : "218"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U226", "Parent" : "218"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U227", "Parent" : "218"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U228", "Parent" : "218"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U229", "Parent" : "218"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U230", "Parent" : "218"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U231", "Parent" : "218"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U232", "Parent" : "218"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U233", "Parent" : "218"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U234", "Parent" : "218"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U235", "Parent" : "218"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U236", "Parent" : "218"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U237", "Parent" : "218"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U238", "Parent" : "218"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U239", "Parent" : "218"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269"],
		"CDFG" : "PE_wrapper_0_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "1136", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "270", "DependentChan" : "1140", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "1099", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "1141", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "1116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "1142", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1035", "DependentChan" : "1143", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_D_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U247", "Parent" : "244"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U248", "Parent" : "244"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U249", "Parent" : "244"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U250", "Parent" : "244"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U251", "Parent" : "244"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U252", "Parent" : "244"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U253", "Parent" : "244"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U254", "Parent" : "244"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U255", "Parent" : "244"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U256", "Parent" : "244"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U257", "Parent" : "244"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U258", "Parent" : "244"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U259", "Parent" : "244"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U260", "Parent" : "244"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U261", "Parent" : "244"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U262", "Parent" : "244"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U263", "Parent" : "244"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U264", "Parent" : "244"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U265", "Parent" : "244"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U266", "Parent" : "244"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U267", "Parent" : "244"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U268", "Parent" : "244"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U269", "Parent" : "244"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U270", "Parent" : "244"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295"],
		"CDFG" : "PE_wrapper_0_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "1140", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "1144", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "1101", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x091_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "478", "DependentChan" : "1145", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "1118", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "478", "DependentChan" : "1146", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x0165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1047", "DependentChan" : "1147", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_D_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U278", "Parent" : "270"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U279", "Parent" : "270"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U280", "Parent" : "270"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U281", "Parent" : "270"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U282", "Parent" : "270"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U283", "Parent" : "270"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U284", "Parent" : "270"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U285", "Parent" : "270"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U286", "Parent" : "270"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U287", "Parent" : "270"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U288", "Parent" : "270"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U289", "Parent" : "270"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U290", "Parent" : "270"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U291", "Parent" : "270"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U292", "Parent" : "270"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U293", "Parent" : "270"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U294", "Parent" : "270"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U295", "Parent" : "270"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U296", "Parent" : "270"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U297", "Parent" : "270"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U298", "Parent" : "270"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U299", "Parent" : "270"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U300", "Parent" : "270"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U301", "Parent" : "270"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0", "Parent" : "0", "Child" : ["297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321"],
		"CDFG" : "PE_wrapper_0_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_7_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "1144", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "946", "DependentChan" : "1148", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "1102", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "504", "DependentChan" : "1149", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "108", "DependentChan" : "1119", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x0137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "504", "DependentChan" : "1150", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1059", "DependentChan" : "1151", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_D_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U309", "Parent" : "296"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U310", "Parent" : "296"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U311", "Parent" : "296"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U312", "Parent" : "296"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U313", "Parent" : "296"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U314", "Parent" : "296"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U315", "Parent" : "296"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U316", "Parent" : "296"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U317", "Parent" : "296"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U318", "Parent" : "296"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U319", "Parent" : "296"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U320", "Parent" : "296"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U321", "Parent" : "296"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U322", "Parent" : "296"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U323", "Parent" : "296"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U324", "Parent" : "296"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U325", "Parent" : "296"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U326", "Parent" : "296"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U327", "Parent" : "296"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U328", "Parent" : "296"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U329", "Parent" : "296"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U330", "Parent" : "296"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U331", "Parent" : "296"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U332", "Parent" : "296"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347"],
		"CDFG" : "PE_wrapper_1_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "1082", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "348", "DependentChan" : "1152", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "1121", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "1153", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "1122", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "1154", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x0142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "972", "DependentChan" : "1155", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x0142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_D_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U340", "Parent" : "322"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U341", "Parent" : "322"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U342", "Parent" : "322"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U343", "Parent" : "322"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U344", "Parent" : "322"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U345", "Parent" : "322"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U346", "Parent" : "322"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U347", "Parent" : "322"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U348", "Parent" : "322"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U349", "Parent" : "322"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U350", "Parent" : "322"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U351", "Parent" : "322"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U352", "Parent" : "322"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U353", "Parent" : "322"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U354", "Parent" : "322"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U355", "Parent" : "322"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U356", "Parent" : "322"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U357", "Parent" : "322"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U358", "Parent" : "322"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U359", "Parent" : "322"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U360", "Parent" : "322"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U361", "Parent" : "322"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U362", "Parent" : "322"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U363", "Parent" : "322"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373"],
		"CDFG" : "PE_wrapper_1_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "322", "DependentChan" : "1152", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "1156", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "1125", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "556", "DependentChan" : "1157", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "1126", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "556", "DependentChan" : "1158", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "984", "DependentChan" : "1159", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_D_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U371", "Parent" : "348"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U372", "Parent" : "348"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U373", "Parent" : "348"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U374", "Parent" : "348"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U375", "Parent" : "348"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U376", "Parent" : "348"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U377", "Parent" : "348"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U378", "Parent" : "348"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U379", "Parent" : "348"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U380", "Parent" : "348"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U381", "Parent" : "348"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U382", "Parent" : "348"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U383", "Parent" : "348"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U384", "Parent" : "348"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U385", "Parent" : "348"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U386", "Parent" : "348"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U387", "Parent" : "348"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U388", "Parent" : "348"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U389", "Parent" : "348"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U390", "Parent" : "348"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U391", "Parent" : "348"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U392", "Parent" : "348"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U393", "Parent" : "348"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U394", "Parent" : "348"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399"],
		"CDFG" : "PE_wrapper_1_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_2_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "348", "DependentChan" : "1156", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "400", "DependentChan" : "1160", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "1129", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "582", "DependentChan" : "1161", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "1130", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "582", "DependentChan" : "1162", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x0150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "996", "DependentChan" : "1163", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x0150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_D_U", "Parent" : "374"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U402", "Parent" : "374"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U403", "Parent" : "374"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U404", "Parent" : "374"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U405", "Parent" : "374"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U406", "Parent" : "374"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U407", "Parent" : "374"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U408", "Parent" : "374"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U409", "Parent" : "374"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U410", "Parent" : "374"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U411", "Parent" : "374"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U412", "Parent" : "374"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U413", "Parent" : "374"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U414", "Parent" : "374"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U415", "Parent" : "374"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U416", "Parent" : "374"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U417", "Parent" : "374"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U418", "Parent" : "374"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U419", "Parent" : "374"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U420", "Parent" : "374"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U421", "Parent" : "374"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U422", "Parent" : "374"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U423", "Parent" : "374"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U424", "Parent" : "374"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U425", "Parent" : "374"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425"],
		"CDFG" : "PE_wrapper_1_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_3_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "1160", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "426", "DependentChan" : "1164", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "1133", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "608", "DependentChan" : "1165", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "1134", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "608", "DependentChan" : "1166", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x0154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1008", "DependentChan" : "1167", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_D_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U433", "Parent" : "400"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U434", "Parent" : "400"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U435", "Parent" : "400"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U436", "Parent" : "400"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U437", "Parent" : "400"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U438", "Parent" : "400"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U439", "Parent" : "400"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U440", "Parent" : "400"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U441", "Parent" : "400"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U442", "Parent" : "400"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U443", "Parent" : "400"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U444", "Parent" : "400"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U445", "Parent" : "400"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U446", "Parent" : "400"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U447", "Parent" : "400"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U448", "Parent" : "400"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U449", "Parent" : "400"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U450", "Parent" : "400"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U451", "Parent" : "400"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U452", "Parent" : "400"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U453", "Parent" : "400"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U454", "Parent" : "400"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U455", "Parent" : "400"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U456", "Parent" : "400"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451"],
		"CDFG" : "PE_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "400", "DependentChan" : "1164", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "1168", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "1137", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "634", "DependentChan" : "1169", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "1138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "634", "DependentChan" : "1170", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1020", "DependentChan" : "1171", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x0158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_D_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U464", "Parent" : "426"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U465", "Parent" : "426"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U466", "Parent" : "426"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U467", "Parent" : "426"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U468", "Parent" : "426"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U469", "Parent" : "426"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U470", "Parent" : "426"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U471", "Parent" : "426"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U472", "Parent" : "426"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U473", "Parent" : "426"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U474", "Parent" : "426"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U475", "Parent" : "426"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U476", "Parent" : "426"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U477", "Parent" : "426"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U478", "Parent" : "426"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U479", "Parent" : "426"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U480", "Parent" : "426"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U481", "Parent" : "426"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U482", "Parent" : "426"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U483", "Parent" : "426"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U484", "Parent" : "426"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U485", "Parent" : "426"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U486", "Parent" : "426"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U487", "Parent" : "426"},
	{"ID" : "452", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477"],
		"CDFG" : "PE_wrapper_1_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_5_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "426", "DependentChan" : "1168", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "478", "DependentChan" : "1172", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "1141", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "660", "DependentChan" : "1173", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "1142", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "660", "DependentChan" : "1174", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x0162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1032", "DependentChan" : "1175", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x0162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_D_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U495", "Parent" : "452"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U496", "Parent" : "452"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U497", "Parent" : "452"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U498", "Parent" : "452"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U499", "Parent" : "452"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U500", "Parent" : "452"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U501", "Parent" : "452"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U502", "Parent" : "452"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U503", "Parent" : "452"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U504", "Parent" : "452"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U505", "Parent" : "452"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U506", "Parent" : "452"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U507", "Parent" : "452"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U508", "Parent" : "452"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U509", "Parent" : "452"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U510", "Parent" : "452"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U511", "Parent" : "452"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U512", "Parent" : "452"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U513", "Parent" : "452"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U514", "Parent" : "452"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U515", "Parent" : "452"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U516", "Parent" : "452"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U517", "Parent" : "452"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U518", "Parent" : "452"},
	{"ID" : "478", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503"],
		"CDFG" : "PE_wrapper_1_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_6_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "1172", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "504", "DependentChan" : "1176", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "1145", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "686", "DependentChan" : "1177", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "1146", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "686", "DependentChan" : "1178", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x0166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1044", "DependentChan" : "1179", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_D_U", "Parent" : "478"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U526", "Parent" : "478"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U527", "Parent" : "478"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U528", "Parent" : "478"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U529", "Parent" : "478"},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U530", "Parent" : "478"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U531", "Parent" : "478"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U532", "Parent" : "478"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U533", "Parent" : "478"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U534", "Parent" : "478"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U535", "Parent" : "478"},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U536", "Parent" : "478"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U537", "Parent" : "478"},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U538", "Parent" : "478"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U539", "Parent" : "478"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U540", "Parent" : "478"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U541", "Parent" : "478"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U542", "Parent" : "478"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U543", "Parent" : "478"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U544", "Parent" : "478"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U545", "Parent" : "478"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U546", "Parent" : "478"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U547", "Parent" : "478"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U548", "Parent" : "478"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U549", "Parent" : "478"},
	{"ID" : "504", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0", "Parent" : "0", "Child" : ["505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529"],
		"CDFG" : "PE_wrapper_1_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_7_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "478", "DependentChan" : "1176", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "947", "DependentChan" : "1180", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "1149", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "1181", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "1150", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "1182", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x0170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1056", "DependentChan" : "1183", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_D_U", "Parent" : "504"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U557", "Parent" : "504"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U558", "Parent" : "504"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U559", "Parent" : "504"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U560", "Parent" : "504"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U561", "Parent" : "504"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U562", "Parent" : "504"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U563", "Parent" : "504"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U564", "Parent" : "504"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U565", "Parent" : "504"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U566", "Parent" : "504"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U567", "Parent" : "504"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U568", "Parent" : "504"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U569", "Parent" : "504"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U570", "Parent" : "504"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U571", "Parent" : "504"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U572", "Parent" : "504"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U573", "Parent" : "504"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U574", "Parent" : "504"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U575", "Parent" : "504"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U576", "Parent" : "504"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U577", "Parent" : "504"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U578", "Parent" : "504"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U579", "Parent" : "504"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U580", "Parent" : "504"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555"],
		"CDFG" : "PE_wrapper_2_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "1084", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "556", "DependentChan" : "1184", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "322", "DependentChan" : "1153", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "738", "DependentChan" : "1185", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "322", "DependentChan" : "1154", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "738", "DependentChan" : "1186", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "969", "DependentChan" : "1187", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x0143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_D_U", "Parent" : "530"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U588", "Parent" : "530"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U589", "Parent" : "530"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U590", "Parent" : "530"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U591", "Parent" : "530"},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U592", "Parent" : "530"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U593", "Parent" : "530"},
	{"ID" : "538", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U594", "Parent" : "530"},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U595", "Parent" : "530"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U596", "Parent" : "530"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U597", "Parent" : "530"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U598", "Parent" : "530"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U599", "Parent" : "530"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U600", "Parent" : "530"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U601", "Parent" : "530"},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U602", "Parent" : "530"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U603", "Parent" : "530"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U604", "Parent" : "530"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U605", "Parent" : "530"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U606", "Parent" : "530"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U607", "Parent" : "530"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U608", "Parent" : "530"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U609", "Parent" : "530"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U610", "Parent" : "530"},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U611", "Parent" : "530"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581"],
		"CDFG" : "PE_wrapper_2_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "530", "DependentChan" : "1184", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "582", "DependentChan" : "1188", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "348", "DependentChan" : "1157", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "764", "DependentChan" : "1189", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "348", "DependentChan" : "1158", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "764", "DependentChan" : "1190", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "981", "DependentChan" : "1191", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x0147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_D_U", "Parent" : "556"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U619", "Parent" : "556"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U620", "Parent" : "556"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U621", "Parent" : "556"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U622", "Parent" : "556"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U623", "Parent" : "556"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U624", "Parent" : "556"},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U625", "Parent" : "556"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U626", "Parent" : "556"},
	{"ID" : "566", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U627", "Parent" : "556"},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U628", "Parent" : "556"},
	{"ID" : "568", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U629", "Parent" : "556"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U630", "Parent" : "556"},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U631", "Parent" : "556"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U632", "Parent" : "556"},
	{"ID" : "572", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U633", "Parent" : "556"},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U634", "Parent" : "556"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U635", "Parent" : "556"},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U636", "Parent" : "556"},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U637", "Parent" : "556"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U638", "Parent" : "556"},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U639", "Parent" : "556"},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U640", "Parent" : "556"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U641", "Parent" : "556"},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U642", "Parent" : "556"},
	{"ID" : "582", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607"],
		"CDFG" : "PE_wrapper_2_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_2_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "556", "DependentChan" : "1188", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "608", "DependentChan" : "1192", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "1161", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "790", "DependentChan" : "1193", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "1162", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "790", "DependentChan" : "1194", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "993", "DependentChan" : "1195", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x0151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_D_U", "Parent" : "582"},
	{"ID" : "584", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U650", "Parent" : "582"},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U651", "Parent" : "582"},
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U652", "Parent" : "582"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U653", "Parent" : "582"},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U654", "Parent" : "582"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U655", "Parent" : "582"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U656", "Parent" : "582"},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U657", "Parent" : "582"},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U658", "Parent" : "582"},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U659", "Parent" : "582"},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U660", "Parent" : "582"},
	{"ID" : "595", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U661", "Parent" : "582"},
	{"ID" : "596", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U662", "Parent" : "582"},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U663", "Parent" : "582"},
	{"ID" : "598", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U664", "Parent" : "582"},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U665", "Parent" : "582"},
	{"ID" : "600", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U666", "Parent" : "582"},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U667", "Parent" : "582"},
	{"ID" : "602", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U668", "Parent" : "582"},
	{"ID" : "603", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U669", "Parent" : "582"},
	{"ID" : "604", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U670", "Parent" : "582"},
	{"ID" : "605", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U671", "Parent" : "582"},
	{"ID" : "606", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U672", "Parent" : "582"},
	{"ID" : "607", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U673", "Parent" : "582"},
	{"ID" : "608", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633"],
		"CDFG" : "PE_wrapper_2_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_3_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "582", "DependentChan" : "1192", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "634", "DependentChan" : "1196", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "400", "DependentChan" : "1165", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "816", "DependentChan" : "1197", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "400", "DependentChan" : "1166", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "816", "DependentChan" : "1198", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x0155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1005", "DependentChan" : "1199", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "609", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_D_U", "Parent" : "608"},
	{"ID" : "610", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U681", "Parent" : "608"},
	{"ID" : "611", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U682", "Parent" : "608"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U683", "Parent" : "608"},
	{"ID" : "613", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U684", "Parent" : "608"},
	{"ID" : "614", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U685", "Parent" : "608"},
	{"ID" : "615", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U686", "Parent" : "608"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U687", "Parent" : "608"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U688", "Parent" : "608"},
	{"ID" : "618", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U689", "Parent" : "608"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U690", "Parent" : "608"},
	{"ID" : "620", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U691", "Parent" : "608"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U692", "Parent" : "608"},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U693", "Parent" : "608"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U694", "Parent" : "608"},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U695", "Parent" : "608"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U696", "Parent" : "608"},
	{"ID" : "626", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U697", "Parent" : "608"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U698", "Parent" : "608"},
	{"ID" : "628", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U699", "Parent" : "608"},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U700", "Parent" : "608"},
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U701", "Parent" : "608"},
	{"ID" : "631", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U702", "Parent" : "608"},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U703", "Parent" : "608"},
	{"ID" : "633", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U704", "Parent" : "608"},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659"],
		"CDFG" : "PE_wrapper_2_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_4_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "608", "DependentChan" : "1196", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "660", "DependentChan" : "1200", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "426", "DependentChan" : "1169", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "842", "DependentChan" : "1201", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "426", "DependentChan" : "1170", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "842", "DependentChan" : "1202", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1017", "DependentChan" : "1203", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x0159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "635", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_D_U", "Parent" : "634"},
	{"ID" : "636", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U712", "Parent" : "634"},
	{"ID" : "637", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U713", "Parent" : "634"},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U714", "Parent" : "634"},
	{"ID" : "639", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U715", "Parent" : "634"},
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U716", "Parent" : "634"},
	{"ID" : "641", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U717", "Parent" : "634"},
	{"ID" : "642", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U718", "Parent" : "634"},
	{"ID" : "643", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U719", "Parent" : "634"},
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U720", "Parent" : "634"},
	{"ID" : "645", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U721", "Parent" : "634"},
	{"ID" : "646", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U722", "Parent" : "634"},
	{"ID" : "647", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U723", "Parent" : "634"},
	{"ID" : "648", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U724", "Parent" : "634"},
	{"ID" : "649", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U725", "Parent" : "634"},
	{"ID" : "650", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U726", "Parent" : "634"},
	{"ID" : "651", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U727", "Parent" : "634"},
	{"ID" : "652", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U728", "Parent" : "634"},
	{"ID" : "653", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U729", "Parent" : "634"},
	{"ID" : "654", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U730", "Parent" : "634"},
	{"ID" : "655", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U731", "Parent" : "634"},
	{"ID" : "656", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U732", "Parent" : "634"},
	{"ID" : "657", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U733", "Parent" : "634"},
	{"ID" : "658", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U734", "Parent" : "634"},
	{"ID" : "659", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U735", "Parent" : "634"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685"],
		"CDFG" : "PE_wrapper_2_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_5_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "634", "DependentChan" : "1200", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "686", "DependentChan" : "1204", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "1173", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "868", "DependentChan" : "1205", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "1174", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "868", "DependentChan" : "1206", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x0163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1029", "DependentChan" : "1207", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "661", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_D_U", "Parent" : "660"},
	{"ID" : "662", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U743", "Parent" : "660"},
	{"ID" : "663", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U744", "Parent" : "660"},
	{"ID" : "664", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U745", "Parent" : "660"},
	{"ID" : "665", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U746", "Parent" : "660"},
	{"ID" : "666", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U747", "Parent" : "660"},
	{"ID" : "667", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U748", "Parent" : "660"},
	{"ID" : "668", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U749", "Parent" : "660"},
	{"ID" : "669", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U750", "Parent" : "660"},
	{"ID" : "670", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U751", "Parent" : "660"},
	{"ID" : "671", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U752", "Parent" : "660"},
	{"ID" : "672", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U753", "Parent" : "660"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U754", "Parent" : "660"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U755", "Parent" : "660"},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U756", "Parent" : "660"},
	{"ID" : "676", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U757", "Parent" : "660"},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U758", "Parent" : "660"},
	{"ID" : "678", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U759", "Parent" : "660"},
	{"ID" : "679", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U760", "Parent" : "660"},
	{"ID" : "680", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U761", "Parent" : "660"},
	{"ID" : "681", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U762", "Parent" : "660"},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U763", "Parent" : "660"},
	{"ID" : "683", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U764", "Parent" : "660"},
	{"ID" : "684", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U765", "Parent" : "660"},
	{"ID" : "685", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U766", "Parent" : "660"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711"],
		"CDFG" : "PE_wrapper_2_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_6_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "660", "DependentChan" : "1204", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "1208", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "478", "DependentChan" : "1177", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "894", "DependentChan" : "1209", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "478", "DependentChan" : "1178", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "894", "DependentChan" : "1210", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1041", "DependentChan" : "1211", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "687", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_D_U", "Parent" : "686"},
	{"ID" : "688", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U774", "Parent" : "686"},
	{"ID" : "689", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U775", "Parent" : "686"},
	{"ID" : "690", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U776", "Parent" : "686"},
	{"ID" : "691", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U777", "Parent" : "686"},
	{"ID" : "692", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U778", "Parent" : "686"},
	{"ID" : "693", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U779", "Parent" : "686"},
	{"ID" : "694", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U780", "Parent" : "686"},
	{"ID" : "695", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U781", "Parent" : "686"},
	{"ID" : "696", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U782", "Parent" : "686"},
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U783", "Parent" : "686"},
	{"ID" : "698", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U784", "Parent" : "686"},
	{"ID" : "699", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U785", "Parent" : "686"},
	{"ID" : "700", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U786", "Parent" : "686"},
	{"ID" : "701", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U787", "Parent" : "686"},
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U788", "Parent" : "686"},
	{"ID" : "703", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U789", "Parent" : "686"},
	{"ID" : "704", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U790", "Parent" : "686"},
	{"ID" : "705", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U791", "Parent" : "686"},
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U792", "Parent" : "686"},
	{"ID" : "707", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U793", "Parent" : "686"},
	{"ID" : "708", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U794", "Parent" : "686"},
	{"ID" : "709", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U795", "Parent" : "686"},
	{"ID" : "710", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U796", "Parent" : "686"},
	{"ID" : "711", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U797", "Parent" : "686"},
	{"ID" : "712", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0", "Parent" : "0", "Child" : ["713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737"],
		"CDFG" : "PE_wrapper_2_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_7_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "686", "DependentChan" : "1208", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "948", "DependentChan" : "1212", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "504", "DependentChan" : "1181", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "920", "DependentChan" : "1213", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "504", "DependentChan" : "1182", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "920", "DependentChan" : "1214", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x0171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1053", "DependentChan" : "1215", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "713", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_D_U", "Parent" : "712"},
	{"ID" : "714", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U805", "Parent" : "712"},
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U806", "Parent" : "712"},
	{"ID" : "716", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U807", "Parent" : "712"},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U808", "Parent" : "712"},
	{"ID" : "718", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U809", "Parent" : "712"},
	{"ID" : "719", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U810", "Parent" : "712"},
	{"ID" : "720", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U811", "Parent" : "712"},
	{"ID" : "721", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U812", "Parent" : "712"},
	{"ID" : "722", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U813", "Parent" : "712"},
	{"ID" : "723", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U814", "Parent" : "712"},
	{"ID" : "724", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U815", "Parent" : "712"},
	{"ID" : "725", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U816", "Parent" : "712"},
	{"ID" : "726", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U817", "Parent" : "712"},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U818", "Parent" : "712"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U819", "Parent" : "712"},
	{"ID" : "729", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U820", "Parent" : "712"},
	{"ID" : "730", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U821", "Parent" : "712"},
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U822", "Parent" : "712"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U823", "Parent" : "712"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U824", "Parent" : "712"},
	{"ID" : "734", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U825", "Parent" : "712"},
	{"ID" : "735", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U826", "Parent" : "712"},
	{"ID" : "736", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U827", "Parent" : "712"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U828", "Parent" : "712"},
	{"ID" : "738", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763"],
		"CDFG" : "PE_wrapper_3_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "1085", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "764", "DependentChan" : "1216", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "530", "DependentChan" : "1185", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "950", "DependentChan" : "1217", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "530", "DependentChan" : "1186", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_0_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "958", "DependentChan" : "1218", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x0144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "966", "DependentChan" : "1219", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x0144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_D_U", "Parent" : "738"},
	{"ID" : "740", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U836", "Parent" : "738"},
	{"ID" : "741", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U837", "Parent" : "738"},
	{"ID" : "742", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U838", "Parent" : "738"},
	{"ID" : "743", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U839", "Parent" : "738"},
	{"ID" : "744", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U840", "Parent" : "738"},
	{"ID" : "745", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U841", "Parent" : "738"},
	{"ID" : "746", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U842", "Parent" : "738"},
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U843", "Parent" : "738"},
	{"ID" : "748", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U844", "Parent" : "738"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U845", "Parent" : "738"},
	{"ID" : "750", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U846", "Parent" : "738"},
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U847", "Parent" : "738"},
	{"ID" : "752", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U848", "Parent" : "738"},
	{"ID" : "753", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U849", "Parent" : "738"},
	{"ID" : "754", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U850", "Parent" : "738"},
	{"ID" : "755", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U851", "Parent" : "738"},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U852", "Parent" : "738"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U853", "Parent" : "738"},
	{"ID" : "758", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U854", "Parent" : "738"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U855", "Parent" : "738"},
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U856", "Parent" : "738"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U857", "Parent" : "738"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U858", "Parent" : "738"},
	{"ID" : "763", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U859", "Parent" : "738"},
	{"ID" : "764", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789"],
		"CDFG" : "PE_wrapper_3_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25170937", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "738", "DependentChan" : "1216", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "790", "DependentChan" : "1220", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "556", "DependentChan" : "1189", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "951", "DependentChan" : "1221", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "556", "DependentChan" : "1190", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_1_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "959", "DependentChan" : "1222", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x0148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "978", "DependentChan" : "1223", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x0148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "765", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_D_U", "Parent" : "764"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U867", "Parent" : "764"},
	{"ID" : "767", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U868", "Parent" : "764"},
	{"ID" : "768", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U869", "Parent" : "764"},
	{"ID" : "769", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U870", "Parent" : "764"},
	{"ID" : "770", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U871", "Parent" : "764"},
	{"ID" : "771", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U872", "Parent" : "764"},
	{"ID" : "772", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U873", "Parent" : "764"},
	{"ID" : "773", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U874", "Parent" : "764"},
	{"ID" : "774", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U875", "Parent" : "764"},
	{"ID" : "775", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U876", "Parent" : "764"},
	{"ID" : "776", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U877", "Parent" : "764"},
	{"ID" : "777", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U878", "Parent" : "764"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U879", "Parent" : "764"},
	{"ID" : "779", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U880", "Parent" : "764"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U881", "Parent" : "764"},
	{"ID" : "781", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U882", "Parent" : "764"},
	{"ID" : "782", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U883", "Parent" : "764"},
	{"ID" : "783", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U884", "Parent" : "764"},
	{"ID" : "784", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U885", "Parent" : "764"},
	{"ID" : "785", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U886", "Parent" : "764"},
	{"ID" : "786", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U887", "Parent" : "764"},
	{"ID" : "787", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U888", "Parent" : "764"},
	{"ID" : "788", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U889", "Parent" : "764"},
	{"ID" : "789", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U890", "Parent" : "764"},
	{"ID" : "790", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815"],
		"CDFG" : "PE_wrapper_3_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_2_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "764", "DependentChan" : "1220", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "816", "DependentChan" : "1224", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "582", "DependentChan" : "1193", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "952", "DependentChan" : "1225", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "582", "DependentChan" : "1194", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_2_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "960", "DependentChan" : "1226", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x0152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "990", "DependentChan" : "1227", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x0152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "791", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_D_U", "Parent" : "790"},
	{"ID" : "792", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U898", "Parent" : "790"},
	{"ID" : "793", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U899", "Parent" : "790"},
	{"ID" : "794", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U900", "Parent" : "790"},
	{"ID" : "795", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U901", "Parent" : "790"},
	{"ID" : "796", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U902", "Parent" : "790"},
	{"ID" : "797", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U903", "Parent" : "790"},
	{"ID" : "798", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U904", "Parent" : "790"},
	{"ID" : "799", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U905", "Parent" : "790"},
	{"ID" : "800", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U906", "Parent" : "790"},
	{"ID" : "801", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U907", "Parent" : "790"},
	{"ID" : "802", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U908", "Parent" : "790"},
	{"ID" : "803", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U909", "Parent" : "790"},
	{"ID" : "804", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U910", "Parent" : "790"},
	{"ID" : "805", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U911", "Parent" : "790"},
	{"ID" : "806", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U912", "Parent" : "790"},
	{"ID" : "807", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U913", "Parent" : "790"},
	{"ID" : "808", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U914", "Parent" : "790"},
	{"ID" : "809", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U915", "Parent" : "790"},
	{"ID" : "810", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U916", "Parent" : "790"},
	{"ID" : "811", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U917", "Parent" : "790"},
	{"ID" : "812", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U918", "Parent" : "790"},
	{"ID" : "813", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U919", "Parent" : "790"},
	{"ID" : "814", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U920", "Parent" : "790"},
	{"ID" : "815", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U921", "Parent" : "790"},
	{"ID" : "816", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841"],
		"CDFG" : "PE_wrapper_3_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_3_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "790", "DependentChan" : "1224", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "842", "DependentChan" : "1228", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "608", "DependentChan" : "1197", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "953", "DependentChan" : "1229", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "608", "DependentChan" : "1198", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "961", "DependentChan" : "1230", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x0156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1002", "DependentChan" : "1231", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x0156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "817", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_D_U", "Parent" : "816"},
	{"ID" : "818", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U929", "Parent" : "816"},
	{"ID" : "819", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U930", "Parent" : "816"},
	{"ID" : "820", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U931", "Parent" : "816"},
	{"ID" : "821", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U932", "Parent" : "816"},
	{"ID" : "822", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U933", "Parent" : "816"},
	{"ID" : "823", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U934", "Parent" : "816"},
	{"ID" : "824", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U935", "Parent" : "816"},
	{"ID" : "825", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U936", "Parent" : "816"},
	{"ID" : "826", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U937", "Parent" : "816"},
	{"ID" : "827", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U938", "Parent" : "816"},
	{"ID" : "828", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U939", "Parent" : "816"},
	{"ID" : "829", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U940", "Parent" : "816"},
	{"ID" : "830", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U941", "Parent" : "816"},
	{"ID" : "831", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U942", "Parent" : "816"},
	{"ID" : "832", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U943", "Parent" : "816"},
	{"ID" : "833", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U944", "Parent" : "816"},
	{"ID" : "834", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U945", "Parent" : "816"},
	{"ID" : "835", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U946", "Parent" : "816"},
	{"ID" : "836", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U947", "Parent" : "816"},
	{"ID" : "837", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U948", "Parent" : "816"},
	{"ID" : "838", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U949", "Parent" : "816"},
	{"ID" : "839", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U950", "Parent" : "816"},
	{"ID" : "840", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U951", "Parent" : "816"},
	{"ID" : "841", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U952", "Parent" : "816"},
	{"ID" : "842", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867"],
		"CDFG" : "PE_wrapper_3_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_4_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "816", "DependentChan" : "1228", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "868", "DependentChan" : "1232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "634", "DependentChan" : "1201", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "954", "DependentChan" : "1233", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "634", "DependentChan" : "1202", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_4_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "962", "DependentChan" : "1234", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x0160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1014", "DependentChan" : "1235", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x0160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "843", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_D_U", "Parent" : "842"},
	{"ID" : "844", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U960", "Parent" : "842"},
	{"ID" : "845", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U961", "Parent" : "842"},
	{"ID" : "846", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U962", "Parent" : "842"},
	{"ID" : "847", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U963", "Parent" : "842"},
	{"ID" : "848", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U964", "Parent" : "842"},
	{"ID" : "849", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U965", "Parent" : "842"},
	{"ID" : "850", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U966", "Parent" : "842"},
	{"ID" : "851", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U967", "Parent" : "842"},
	{"ID" : "852", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U968", "Parent" : "842"},
	{"ID" : "853", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U969", "Parent" : "842"},
	{"ID" : "854", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U970", "Parent" : "842"},
	{"ID" : "855", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U971", "Parent" : "842"},
	{"ID" : "856", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U972", "Parent" : "842"},
	{"ID" : "857", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U973", "Parent" : "842"},
	{"ID" : "858", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U974", "Parent" : "842"},
	{"ID" : "859", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U975", "Parent" : "842"},
	{"ID" : "860", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U976", "Parent" : "842"},
	{"ID" : "861", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U977", "Parent" : "842"},
	{"ID" : "862", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U978", "Parent" : "842"},
	{"ID" : "863", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U979", "Parent" : "842"},
	{"ID" : "864", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U980", "Parent" : "842"},
	{"ID" : "865", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U981", "Parent" : "842"},
	{"ID" : "866", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U982", "Parent" : "842"},
	{"ID" : "867", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U983", "Parent" : "842"},
	{"ID" : "868", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["869", "870", "871", "872", "873", "874", "875", "876", "877", "878", "879", "880", "881", "882", "883", "884", "885", "886", "887", "888", "889", "890", "891", "892", "893"],
		"CDFG" : "PE_wrapper_3_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_5_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "842", "DependentChan" : "1232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "894", "DependentChan" : "1236", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "660", "DependentChan" : "1205", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "955", "DependentChan" : "1237", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "660", "DependentChan" : "1206", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_5_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "963", "DependentChan" : "1238", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x0164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1026", "DependentChan" : "1239", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "869", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_D_U", "Parent" : "868"},
	{"ID" : "870", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U991", "Parent" : "868"},
	{"ID" : "871", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U992", "Parent" : "868"},
	{"ID" : "872", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U993", "Parent" : "868"},
	{"ID" : "873", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U994", "Parent" : "868"},
	{"ID" : "874", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U995", "Parent" : "868"},
	{"ID" : "875", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U996", "Parent" : "868"},
	{"ID" : "876", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U997", "Parent" : "868"},
	{"ID" : "877", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U998", "Parent" : "868"},
	{"ID" : "878", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U999", "Parent" : "868"},
	{"ID" : "879", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1000", "Parent" : "868"},
	{"ID" : "880", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1001", "Parent" : "868"},
	{"ID" : "881", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1002", "Parent" : "868"},
	{"ID" : "882", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1003", "Parent" : "868"},
	{"ID" : "883", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1004", "Parent" : "868"},
	{"ID" : "884", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1005", "Parent" : "868"},
	{"ID" : "885", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1006", "Parent" : "868"},
	{"ID" : "886", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1007", "Parent" : "868"},
	{"ID" : "887", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1008", "Parent" : "868"},
	{"ID" : "888", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1009", "Parent" : "868"},
	{"ID" : "889", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1010", "Parent" : "868"},
	{"ID" : "890", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1011", "Parent" : "868"},
	{"ID" : "891", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1012", "Parent" : "868"},
	{"ID" : "892", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1013", "Parent" : "868"},
	{"ID" : "893", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1014", "Parent" : "868"},
	{"ID" : "894", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["895", "896", "897", "898", "899", "900", "901", "902", "903", "904", "905", "906", "907", "908", "909", "910", "911", "912", "913", "914", "915", "916", "917", "918", "919"],
		"CDFG" : "PE_wrapper_3_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_6_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "868", "DependentChan" : "1236", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "920", "DependentChan" : "1240", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "686", "DependentChan" : "1209", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "956", "DependentChan" : "1241", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "686", "DependentChan" : "1210", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_6_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "964", "DependentChan" : "1242", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1038", "DependentChan" : "1243", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "895", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_D_U", "Parent" : "894"},
	{"ID" : "896", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1022", "Parent" : "894"},
	{"ID" : "897", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1023", "Parent" : "894"},
	{"ID" : "898", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1024", "Parent" : "894"},
	{"ID" : "899", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1025", "Parent" : "894"},
	{"ID" : "900", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1026", "Parent" : "894"},
	{"ID" : "901", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1027", "Parent" : "894"},
	{"ID" : "902", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1028", "Parent" : "894"},
	{"ID" : "903", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1029", "Parent" : "894"},
	{"ID" : "904", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1030", "Parent" : "894"},
	{"ID" : "905", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1031", "Parent" : "894"},
	{"ID" : "906", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1032", "Parent" : "894"},
	{"ID" : "907", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1033", "Parent" : "894"},
	{"ID" : "908", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1034", "Parent" : "894"},
	{"ID" : "909", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1035", "Parent" : "894"},
	{"ID" : "910", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1036", "Parent" : "894"},
	{"ID" : "911", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1037", "Parent" : "894"},
	{"ID" : "912", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1038", "Parent" : "894"},
	{"ID" : "913", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1039", "Parent" : "894"},
	{"ID" : "914", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1040", "Parent" : "894"},
	{"ID" : "915", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1041", "Parent" : "894"},
	{"ID" : "916", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1042", "Parent" : "894"},
	{"ID" : "917", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1043", "Parent" : "894"},
	{"ID" : "918", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1044", "Parent" : "894"},
	{"ID" : "919", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1045", "Parent" : "894"},
	{"ID" : "920", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0", "Parent" : "0", "Child" : ["921", "922", "923", "924", "925", "926", "927", "928", "929", "930", "931", "932", "933", "934", "935", "936", "937", "938", "939", "940", "941", "942", "943", "944", "945"],
		"CDFG" : "PE_wrapper_3_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "25170937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_7_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "894", "DependentChan" : "1240", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "949", "DependentChan" : "1244", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "712", "DependentChan" : "1213", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "957", "DependentChan" : "1245", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "712", "DependentChan" : "1214", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_7_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "965", "DependentChan" : "1246", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x0172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1050", "DependentChan" : "1247", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "921", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_D_U", "Parent" : "920"},
	{"ID" : "922", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1053", "Parent" : "920"},
	{"ID" : "923", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1054", "Parent" : "920"},
	{"ID" : "924", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1055", "Parent" : "920"},
	{"ID" : "925", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1056", "Parent" : "920"},
	{"ID" : "926", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1057", "Parent" : "920"},
	{"ID" : "927", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1058", "Parent" : "920"},
	{"ID" : "928", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1059", "Parent" : "920"},
	{"ID" : "929", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1060", "Parent" : "920"},
	{"ID" : "930", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1061", "Parent" : "920"},
	{"ID" : "931", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1062", "Parent" : "920"},
	{"ID" : "932", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1063", "Parent" : "920"},
	{"ID" : "933", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1064", "Parent" : "920"},
	{"ID" : "934", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1065", "Parent" : "920"},
	{"ID" : "935", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1066", "Parent" : "920"},
	{"ID" : "936", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1067", "Parent" : "920"},
	{"ID" : "937", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1068", "Parent" : "920"},
	{"ID" : "938", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1069", "Parent" : "920"},
	{"ID" : "939", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1070", "Parent" : "920"},
	{"ID" : "940", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1071", "Parent" : "920"},
	{"ID" : "941", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1072", "Parent" : "920"},
	{"ID" : "942", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1073", "Parent" : "920"},
	{"ID" : "943", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1074", "Parent" : "920"},
	{"ID" : "944", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1075", "Parent" : "920"},
	{"ID" : "945", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1076", "Parent" : "920"},
	{"ID" : "946", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_0_x0",
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
			{"Name" : "fifo_A_PE_0_8_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "1148", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x033_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "947", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_1_x0",
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
			{"Name" : "fifo_A_PE_1_8_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "504", "DependentChan" : "1180", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x042_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "948", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_2_x0",
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
			{"Name" : "fifo_A_PE_2_8_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "712", "DependentChan" : "1212", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x051_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "949", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "A_PE_dummy_in_3_x0",
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
			{"Name" : "fifo_A_PE_3_8_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "920", "DependentChan" : "1244", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x060_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "950", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_0_x0",
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
			{"Name" : "fifo_B_PE_4_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "738", "DependentChan" : "1217", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "951", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_1_x0",
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
			{"Name" : "fifo_B_PE_4_1_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "764", "DependentChan" : "1221", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x070_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "952", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_2_x0",
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
			{"Name" : "fifo_B_PE_4_2_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "790", "DependentChan" : "1225", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x075_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "953", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_3_x0",
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
			{"Name" : "fifo_B_PE_4_3_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "816", "DependentChan" : "1229", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x080_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "954", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_4_x0",
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
			{"Name" : "fifo_B_PE_4_4_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "842", "DependentChan" : "1233", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "955", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_5_x0",
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
			{"Name" : "fifo_B_PE_4_5_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "868", "DependentChan" : "1237", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "956", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_6_x0",
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
			{"Name" : "fifo_B_PE_4_6_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "894", "DependentChan" : "1241", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "957", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x0_U0", "Parent" : "0",
		"CDFG" : "B_PE_dummy_in_7_x0",
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
			{"Name" : "fifo_B_PE_4_7_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "920", "DependentChan" : "1245", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "958", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_0_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_0_x0",
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
			{"Name" : "fifo_C_PE_4_0_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "738", "DependentChan" : "1218", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "959", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_1_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_1_x0",
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
			{"Name" : "fifo_C_PE_4_1_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "764", "DependentChan" : "1222", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x0110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "960", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_2_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_2_x0",
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
			{"Name" : "fifo_C_PE_4_2_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "790", "DependentChan" : "1226", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x0115_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "961", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_3_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_3_x0",
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
			{"Name" : "fifo_C_PE_4_3_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "816", "DependentChan" : "1230", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x0120_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "962", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_4_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_4_x0",
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
			{"Name" : "fifo_C_PE_4_4_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "842", "DependentChan" : "1234", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x0125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "963", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_5_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_5_x0",
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
			{"Name" : "fifo_C_PE_4_5_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "868", "DependentChan" : "1238", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x0130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "964", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_6_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_6_x0",
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
			{"Name" : "fifo_C_PE_4_6_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "894", "DependentChan" : "1242", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x0135_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "965", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_7_x0_U0", "Parent" : "0",
		"CDFG" : "C_PE_dummy_in_7_x0",
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
			{"Name" : "fifo_C_PE_4_7_x0140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "920", "DependentChan" : "1246", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x0140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "966", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x0_U0", "Parent" : "0", "Child" : ["967", "968"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "969", "DependentChan" : "1248", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x0144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "738", "DependentChan" : "1219", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x0144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "967", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x0_U0.local_D_V_U", "Parent" : "966"},
	{"ID" : "968", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x0_U0.data_split_V_U", "Parent" : "966"},
	{"ID" : "969", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["970", "971"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "966", "DependentChan" : "1248", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "972", "DependentChan" : "1249", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x0143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "530", "DependentChan" : "1187", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x0143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "970", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x0_U0.local_D_V_U", "Parent" : "969"},
	{"ID" : "971", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x0_U0.data_split_V_U", "Parent" : "969"},
	{"ID" : "972", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["973", "974"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "969", "DependentChan" : "1249", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "975", "DependentChan" : "1250", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "322", "DependentChan" : "1155", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x0142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "973", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x0_U0.local_D_V_U", "Parent" : "972"},
	{"ID" : "974", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x0_U0.data_split_V_U", "Parent" : "972"},
	{"ID" : "975", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["976", "977"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "972", "DependentChan" : "1250", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1069", "DependentChan" : "1251", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x0141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "1123", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x0141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "976", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x0_U0.local_D_V_U", "Parent" : "975"},
	{"ID" : "977", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x0_U0.data_split_V_U", "Parent" : "975"},
	{"ID" : "978", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x0_U0", "Parent" : "0", "Child" : ["979", "980"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "981", "DependentChan" : "1252", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "764", "DependentChan" : "1223", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x0148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "979", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x0_U0.local_D_V_U", "Parent" : "978"},
	{"ID" : "980", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x0_U0.data_split_V_U", "Parent" : "978"},
	{"ID" : "981", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["982", "983"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "978", "DependentChan" : "1252", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "984", "DependentChan" : "1253", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x0147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "556", "DependentChan" : "1191", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x0147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "982", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x0_U0.local_D_V_U", "Parent" : "981"},
	{"ID" : "983", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x0_U0.data_split_V_U", "Parent" : "981"},
	{"ID" : "984", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["985", "986"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "981", "DependentChan" : "1253", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "987", "DependentChan" : "1254", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "348", "DependentChan" : "1159", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "985", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x0_U0.local_D_V_U", "Parent" : "984"},
	{"ID" : "986", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x0_U0.data_split_V_U", "Parent" : "984"},
	{"ID" : "987", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["988", "989"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "984", "DependentChan" : "1254", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1068", "DependentChan" : "1255", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x0145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "1127", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "988", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x0_U0.local_D_V_U", "Parent" : "987"},
	{"ID" : "989", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x0_U0.data_split_V_U", "Parent" : "987"},
	{"ID" : "990", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x0_U0", "Parent" : "0", "Child" : ["991", "992"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "993", "DependentChan" : "1256", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "790", "DependentChan" : "1227", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x0152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "991", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x0_U0.local_D_V_U", "Parent" : "990"},
	{"ID" : "992", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x0_U0.data_split_V_U", "Parent" : "990"},
	{"ID" : "993", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["994", "995"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "990", "DependentChan" : "1256", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "996", "DependentChan" : "1257", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x0151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "582", "DependentChan" : "1195", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x0151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "994", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x0_U0.local_D_V_U", "Parent" : "993"},
	{"ID" : "995", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x0_U0.data_split_V_U", "Parent" : "993"},
	{"ID" : "996", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["997", "998"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "993", "DependentChan" : "1257", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "999", "DependentChan" : "1258", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "1163", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x0150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "997", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x0_U0.local_D_V_U", "Parent" : "996"},
	{"ID" : "998", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x0_U0.data_split_V_U", "Parent" : "996"},
	{"ID" : "999", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["1000", "1001"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "996", "DependentChan" : "1258", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1067", "DependentChan" : "1259", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x0149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "1131", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x0149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1000", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x0_U0.local_D_V_U", "Parent" : "999"},
	{"ID" : "1001", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x0_U0.data_split_V_U", "Parent" : "999"},
	{"ID" : "1002", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x0_U0", "Parent" : "0", "Child" : ["1003", "1004"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_3_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1005", "DependentChan" : "1260", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "816", "DependentChan" : "1231", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x0156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1003", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x0_U0.local_D_V_U", "Parent" : "1002"},
	{"ID" : "1004", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x0_U0.data_split_V_U", "Parent" : "1002"},
	{"ID" : "1005", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["1006", "1007"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1002", "DependentChan" : "1260", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1008", "DependentChan" : "1261", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x0155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "608", "DependentChan" : "1199", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1006", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x0_U0.local_D_V_U", "Parent" : "1005"},
	{"ID" : "1007", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x0_U0.data_split_V_U", "Parent" : "1005"},
	{"ID" : "1008", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["1009", "1010"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1005", "DependentChan" : "1261", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1011", "DependentChan" : "1262", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x0154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "400", "DependentChan" : "1167", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1009", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x0_U0.local_D_V_U", "Parent" : "1008"},
	{"ID" : "1010", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x0_U0.data_split_V_U", "Parent" : "1008"},
	{"ID" : "1011", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["1012", "1013"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1008", "DependentChan" : "1262", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1066", "DependentChan" : "1263", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "1135", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1012", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x0_U0.local_D_V_U", "Parent" : "1011"},
	{"ID" : "1013", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x0_U0.data_split_V_U", "Parent" : "1011"},
	{"ID" : "1014", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x0_U0", "Parent" : "0", "Child" : ["1015", "1016"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_4_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1017", "DependentChan" : "1264", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "842", "DependentChan" : "1235", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x0160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1015", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x0_U0.local_D_V_U", "Parent" : "1014"},
	{"ID" : "1016", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x0_U0.data_split_V_U", "Parent" : "1014"},
	{"ID" : "1017", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["1018", "1019"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1014", "DependentChan" : "1264", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1020", "DependentChan" : "1265", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x0159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "634", "DependentChan" : "1203", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x0159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1018", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x0_U0.local_D_V_U", "Parent" : "1017"},
	{"ID" : "1019", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x0_U0.data_split_V_U", "Parent" : "1017"},
	{"ID" : "1020", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["1021", "1022"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1017", "DependentChan" : "1265", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1023", "DependentChan" : "1266", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "426", "DependentChan" : "1171", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x0158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1021", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x0_U0.local_D_V_U", "Parent" : "1020"},
	{"ID" : "1022", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x0_U0.data_split_V_U", "Parent" : "1020"},
	{"ID" : "1023", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["1024", "1025"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1020", "DependentChan" : "1266", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1065", "DependentChan" : "1267", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x0157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "1139", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x0157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1024", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x0_U0.local_D_V_U", "Parent" : "1023"},
	{"ID" : "1025", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x0_U0.data_split_V_U", "Parent" : "1023"},
	{"ID" : "1026", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x0_U0", "Parent" : "0", "Child" : ["1027", "1028"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_5_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1029", "DependentChan" : "1268", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x0164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "868", "DependentChan" : "1239", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1027", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x0_U0.local_D_V_U", "Parent" : "1026"},
	{"ID" : "1028", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x0_U0.data_split_V_U", "Parent" : "1026"},
	{"ID" : "1029", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["1030", "1031"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1026", "DependentChan" : "1268", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1032", "DependentChan" : "1269", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x0163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "660", "DependentChan" : "1207", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1030", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x0_U0.local_D_V_U", "Parent" : "1029"},
	{"ID" : "1031", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x0_U0.data_split_V_U", "Parent" : "1029"},
	{"ID" : "1032", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["1033", "1034"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1029", "DependentChan" : "1269", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1035", "DependentChan" : "1270", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x0162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "1175", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x0162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1033", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x0_U0.local_D_V_U", "Parent" : "1032"},
	{"ID" : "1034", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x0_U0.data_split_V_U", "Parent" : "1032"},
	{"ID" : "1035", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["1036", "1037"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1032", "DependentChan" : "1270", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1064", "DependentChan" : "1271", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "1143", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1036", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x0_U0.local_D_V_U", "Parent" : "1035"},
	{"ID" : "1037", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x0_U0.data_split_V_U", "Parent" : "1035"},
	{"ID" : "1038", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x0_U0", "Parent" : "0", "Child" : ["1039", "1040"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_6_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1041", "DependentChan" : "1272", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x0168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "894", "DependentChan" : "1243", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1039", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x0_U0.local_D_V_U", "Parent" : "1038"},
	{"ID" : "1040", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x0_U0.data_split_V_U", "Parent" : "1038"},
	{"ID" : "1041", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["1042", "1043"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1038", "DependentChan" : "1272", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1044", "DependentChan" : "1273", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x0167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "686", "DependentChan" : "1211", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1042", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x0_U0.local_D_V_U", "Parent" : "1041"},
	{"ID" : "1043", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x0_U0.data_split_V_U", "Parent" : "1041"},
	{"ID" : "1044", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["1045", "1046"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1041", "DependentChan" : "1273", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1047", "DependentChan" : "1274", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "478", "DependentChan" : "1179", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1045", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x0_U0.local_D_V_U", "Parent" : "1044"},
	{"ID" : "1046", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x0_U0.data_split_V_U", "Parent" : "1044"},
	{"ID" : "1047", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["1048", "1049"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1044", "DependentChan" : "1274", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1063", "DependentChan" : "1275", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x0165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "270", "DependentChan" : "1147", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1048", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x0_U0.local_D_V_U", "Parent" : "1047"},
	{"ID" : "1049", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x0_U0.data_split_V_U", "Parent" : "1047"},
	{"ID" : "1050", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x0_U0", "Parent" : "0", "Child" : ["1051", "1052"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_7_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1053", "DependentChan" : "1276", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x0172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "920", "DependentChan" : "1247", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1051", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x0_U0.local_D_V_U", "Parent" : "1050"},
	{"ID" : "1052", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x0_U0.data_split_V_U", "Parent" : "1050"},
	{"ID" : "1053", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["1054", "1055"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1050", "DependentChan" : "1276", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1056", "DependentChan" : "1277", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x0171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "712", "DependentChan" : "1215", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1054", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x0_U0.local_D_V_U", "Parent" : "1053"},
	{"ID" : "1055", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x0_U0.data_split_V_U", "Parent" : "1053"},
	{"ID" : "1056", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["1057", "1058"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1053", "DependentChan" : "1277", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1059", "DependentChan" : "1278", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x0170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "504", "DependentChan" : "1183", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1057", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x0_U0.local_D_V_U", "Parent" : "1056"},
	{"ID" : "1058", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x0_U0.data_split_V_U", "Parent" : "1056"},
	{"ID" : "1059", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["1060", "1061"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1056", "DependentChan" : "1278", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1062", "DependentChan" : "1279", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x0169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "296", "DependentChan" : "1151", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1060", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x0_U0.local_D_V_U", "Parent" : "1059"},
	{"ID" : "1061", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x0_U0.data_split_V_U", "Parent" : "1059"},
	{"ID" : "1062", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_boundary_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_boundary_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1063", "DependentChan" : "1280", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1059", "DependentChan" : "1279", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1063", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_6_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_6_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1062", "DependentChan" : "1280", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1064", "DependentChan" : "1281", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1047", "DependentChan" : "1275", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1064", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_5_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_5_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1063", "DependentChan" : "1281", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1065", "DependentChan" : "1282", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1035", "DependentChan" : "1271", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1065", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_4_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_4_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1064", "DependentChan" : "1282", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1066", "DependentChan" : "1283", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1023", "DependentChan" : "1267", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1066", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_3_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_3_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1065", "DependentChan" : "1283", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1067", "DependentChan" : "1284", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1011", "DependentChan" : "1263", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1067", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_2_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1066", "DependentChan" : "1284", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1068", "DependentChan" : "1285", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "999", "DependentChan" : "1259", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1068", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_1_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1067", "DependentChan" : "1285", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1069", "DependentChan" : "1286", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "987", "DependentChan" : "1255", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1069", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_0_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L2_out_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1068", "DependentChan" : "1286", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1070", "DependentChan" : "1287", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x0205_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "975", "DependentChan" : "1251", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1070", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L3_out_x0",
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
			{"Name" : "fifo_D_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1071", "DependentChan" : "1288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1069", "DependentChan" : "1287", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1071", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x0_U0", "Parent" : "0", "Child" : ["1072"],
		"CDFG" : "D_drain_IO_L3_out_serialize_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L3_out_serialize_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1070", "DependentChan" : "1288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L3_out_serialize_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1072", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x0_U0.mem_data_split_V_U", "Parent" : "1071"},
	{"ID" : "1073", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_c1_U", "Parent" : "0"},
	{"ID" : "1074", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c2_U", "Parent" : "0"},
	{"ID" : "1075", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_c_U", "Parent" : "0"},
	{"ID" : "1076", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c_U", "Parent" : "0"},
	{"ID" : "1077", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "1078", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "1079", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "1080", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "1081", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "1082", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "1083", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "1084", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "1085", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "1086", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "1087", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "1088", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "1089", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "1090", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "1091", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "1092", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "1093", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "1094", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "1095", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "1096", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "1097", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "1098", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "1099", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "1100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "1101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "1102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "1103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "1104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "1105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "1106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "1107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "1108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "1109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "1110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "1111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "1112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "1113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "1114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "1115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "1116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "1117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "1118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "1119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "1120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "1121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "1122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "1123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "1124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "1125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "1126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "1127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "1128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "1129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "1130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "1131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "1132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "1133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "1134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "1135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "1136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "1137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "1138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "1139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "1140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "1141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "1142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "1143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "1144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "1145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "1146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "1147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "1148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x0_U", "Parent" : "0"},
	{"ID" : "1149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "1150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "1151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "1152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "1153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "1154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "1155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "1156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "1157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "1158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "1159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "1160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "1161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "1162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "1163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "1164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "1165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "1166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "1167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "1168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "1169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "1170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "1171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "1172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "1173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "1174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "1175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "1176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "1177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "1178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "1179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "1180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x0_U", "Parent" : "0"},
	{"ID" : "1181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "1182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "1183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "1184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "1185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "1186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "1187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "1188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "1189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "1190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "1191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "1192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "1193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "1194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "1195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "1196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "1197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "1198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "1199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "1200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "1201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "1202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "1203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "1204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "1205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "1206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "1207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "1208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "1209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "1210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "1211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "1212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x0_U", "Parent" : "0"},
	{"ID" : "1213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "1214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "1215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "1216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "1217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "1218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "1219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "1220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "1221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "1222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "1223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "1224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "1225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "1226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "1227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "1228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "1229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "1230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "1231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "1232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "1233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "1234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "1235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "1236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "1237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "1238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "1239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "1240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "1241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "1242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "1243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "1244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x0_U", "Parent" : "0"},
	{"ID" : "1245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "1246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "1247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "1248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_3_x0_U", "Parent" : "0"},
	{"ID" : "1249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_2_x0_U", "Parent" : "0"},
	{"ID" : "1250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_1_x0_U", "Parent" : "0"},
	{"ID" : "1251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_0_x0_U", "Parent" : "0"},
	{"ID" : "1252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_3_x0_U", "Parent" : "0"},
	{"ID" : "1253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_2_x0_U", "Parent" : "0"},
	{"ID" : "1254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_1_x0_U", "Parent" : "0"},
	{"ID" : "1255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_0_x0_U", "Parent" : "0"},
	{"ID" : "1256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_3_x0_U", "Parent" : "0"},
	{"ID" : "1257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_2_x0_U", "Parent" : "0"},
	{"ID" : "1258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_1_x0_U", "Parent" : "0"},
	{"ID" : "1259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_0_x0_U", "Parent" : "0"},
	{"ID" : "1260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_3_x0_U", "Parent" : "0"},
	{"ID" : "1261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_2_x0_U", "Parent" : "0"},
	{"ID" : "1262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_1_x0_U", "Parent" : "0"},
	{"ID" : "1263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_0_x0_U", "Parent" : "0"},
	{"ID" : "1264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_3_x0_U", "Parent" : "0"},
	{"ID" : "1265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_2_x0_U", "Parent" : "0"},
	{"ID" : "1266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_1_x0_U", "Parent" : "0"},
	{"ID" : "1267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_0_x0_U", "Parent" : "0"},
	{"ID" : "1268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_3_x0_U", "Parent" : "0"},
	{"ID" : "1269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_2_x0_U", "Parent" : "0"},
	{"ID" : "1270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_1_x0_U", "Parent" : "0"},
	{"ID" : "1271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_0_x0_U", "Parent" : "0"},
	{"ID" : "1272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_3_x0_U", "Parent" : "0"},
	{"ID" : "1273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_2_x0_U", "Parent" : "0"},
	{"ID" : "1274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_1_x0_U", "Parent" : "0"},
	{"ID" : "1275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_0_x0_U", "Parent" : "0"},
	{"ID" : "1276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_3_x0_U", "Parent" : "0"},
	{"ID" : "1277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_2_x0_U", "Parent" : "0"},
	{"ID" : "1278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_1_x0_U", "Parent" : "0"},
	{"ID" : "1279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_0_x0_U", "Parent" : "0"},
	{"ID" : "1280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_7_x0_U", "Parent" : "0"},
	{"ID" : "1281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_6_x0_U", "Parent" : "0"},
	{"ID" : "1282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_5_x0_U", "Parent" : "0"},
	{"ID" : "1283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_4_x0_U", "Parent" : "0"},
	{"ID" : "1284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_3_x0_U", "Parent" : "0"},
	{"ID" : "1285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_2_x0_U", "Parent" : "0"},
	{"ID" : "1286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_1_x0_U", "Parent" : "0"},
	{"ID" : "1287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_0_x0_U", "Parent" : "0"},
	{"ID" : "1288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L3_out_serialize_x0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		gmem_B {Type I LastRead 72 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 1 FirstWrite -1}
		D {Type O LastRead -1 FirstWrite 4}}
	kernel0_x0_entry3 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x0_entry11 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_serialize_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 73}
		A {Type I LastRead 0 FirstWrite -1}}
	A_IO_L3_in_x0 {
		fifo_A_in {Type I LastRead 8 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 8}}
	A_IO_L2_in_0_x0 {
		fifo_A_A_IO_L2_in_0_x05 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x06 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_0_0_x025 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x06 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x07 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x034 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_2_x0 {
		fifo_A_A_IO_L2_in_2_x07 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x08 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_2_0_x043 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_boundary_x0 {
		fifo_A_A_IO_L2_in_3_x08 {Type I LastRead 7 FirstWrite -1}
		fifo_A_PE_3_0_x052 {Type O LastRead -1 FirstWrite 8}}
	B_IO_L3_in_serialize_x0 {
		gmem_B {Type I LastRead 72 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 74}
		B {Type I LastRead 0 FirstWrite -1}}
	B_IO_L3_in_x0 {
		fifo_B_in {Type I LastRead 6 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 6}}
	B_IO_L2_in_0_x0 {
		fifo_B_B_IO_L2_in_0_x09 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x010 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_0_x061 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_1_x0 {
		fifo_B_B_IO_L2_in_1_x010 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x011 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_1_x066 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_2_x0 {
		fifo_B_B_IO_L2_in_2_x011 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x012 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_2_x071 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_3_x0 {
		fifo_B_B_IO_L2_in_3_x012 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x013 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_3_x076 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_4_x0 {
		fifo_B_B_IO_L2_in_4_x013 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x014 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_4_x081 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_5_x0 {
		fifo_B_B_IO_L2_in_5_x014 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x015 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_5_x086 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_6_x0 {
		fifo_B_B_IO_L2_in_6_x015 {Type I LastRead 5 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x016 {Type O LastRead -1 FirstWrite 5}
		fifo_B_PE_0_6_x091 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_boundary_x0 {
		fifo_B_B_IO_L2_in_7_x016 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_0_7_x096 {Type O LastRead -1 FirstWrite 6}}
	C_IO_L3_in_serialize_x0 {
		fifo_C_C_IO_L3_in_serialize_x03 {Type O LastRead -1 FirstWrite 2}
		C {Type I LastRead 1 FirstWrite -1}}
	C_IO_L3_in_x0 {
		fifo_C_in {Type I LastRead 6 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_0_x0 {
		fifo_C_C_IO_L2_in_0_x017 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_1_x018 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_0_x0101 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_1_x0 {
		fifo_C_C_IO_L2_in_1_x018 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_2_x019 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_1_x0106 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_2_x0 {
		fifo_C_C_IO_L2_in_2_x019 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_3_x020 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_2_x0111 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_3_x0 {
		fifo_C_C_IO_L2_in_3_x020 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_4_x021 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_3_x0116 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_4_x0 {
		fifo_C_C_IO_L2_in_4_x021 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_5_x022 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_4_x0121 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_5_x0 {
		fifo_C_C_IO_L2_in_5_x022 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_6_x023 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_5_x0126 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_6_x0 {
		fifo_C_C_IO_L2_in_6_x023 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_7_x024 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_6_x0131 {Type O LastRead -1 FirstWrite 9}}
	C_IO_L2_in_boundary_x0 {
		fifo_C_C_IO_L2_in_7_x024 {Type I LastRead 5 FirstWrite -1}
		fifo_C_PE_0_7_x0136 {Type O LastRead -1 FirstWrite 9}}
	PE_wrapper_0_0_x0 {
		fifo_A_PE_0_0_x025 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_1_x026 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_0_x061 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_0_x062 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_0_x0101 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_0_x0102 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_0_x0141 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_1_x0 {
		fifo_A_PE_0_1_x026 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x027 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_1_x066 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_1_x067 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_1_x0106 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_1_x0107 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_1_x0145 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_2_x0 {
		fifo_A_PE_0_2_x027 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_3_x028 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_2_x071 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_2_x072 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_2_x0111 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_2_x0112 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_2_x0149 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x028 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_4_x029 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_3_x076 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_3_x077 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_3_x0116 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_3_x0117 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_3_x0153 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_4_x0 {
		fifo_A_PE_0_4_x029 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_5_x030 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_4_x081 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_4_x082 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_4_x0121 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_4_x0122 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_4_x0157 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x030 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_6_x031 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_5_x086 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_5_x087 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_5_x0126 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_5_x0127 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_5_x0161 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_6_x0 {
		fifo_A_PE_0_6_x031 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_7_x032 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_6_x091 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_6_x092 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_6_x0131 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_6_x0132 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_6_x0165 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_0_7_x0 {
		fifo_A_PE_0_7_x032 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_8_x033 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_7_x096 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_7_x097 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_0_7_x0136 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_1_7_x0137 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_0_7_x0169 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x034 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x035 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_0_x062 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_0_x063 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_0_x0102 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_0_x0103 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_0_x0142 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x035 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_2_x036 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_1_x067 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_1_x068 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_1_x0107 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_1_x0108 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_1_x0146 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_2_x0 {
		fifo_A_PE_1_2_x036 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_3_x037 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_2_x072 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_2_x073 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_2_x0112 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_2_x0113 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_2_x0150 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_3_x0 {
		fifo_A_PE_1_3_x037 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_4_x038 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_3_x077 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_3_x078 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_3_x0117 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_3_x0118 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_3_x0154 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x038 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_5_x039 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_4_x082 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_4_x083 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_4_x0122 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_4_x0123 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_4_x0158 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_5_x0 {
		fifo_A_PE_1_5_x039 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_6_x040 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_5_x087 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_5_x088 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_5_x0127 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_5_x0128 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_5_x0162 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_6_x0 {
		fifo_A_PE_1_6_x040 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_7_x041 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_6_x092 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_6_x093 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_6_x0132 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_6_x0133 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_6_x0166 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_1_7_x0 {
		fifo_A_PE_1_7_x041 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_8_x042 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_7_x097 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_7_x098 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_1_7_x0137 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_2_7_x0138 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_1_7_x0170 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_0_x0 {
		fifo_A_PE_2_0_x043 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_1_x044 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_0_x063 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_0_x064 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_0_x0103 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_0_x0104 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_0_x0143 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x044 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_2_x045 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_1_x068 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_1_x069 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_1_x0108 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_1_x0109 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_1_x0147 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_2_x0 {
		fifo_A_PE_2_2_x045 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_3_x046 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_2_x073 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_2_x074 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_2_x0113 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_2_x0114 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_2_x0151 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_3_x0 {
		fifo_A_PE_2_3_x046 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_4_x047 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_3_x078 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_3_x079 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_3_x0118 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_3_x0119 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_3_x0155 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_4_x0 {
		fifo_A_PE_2_4_x047 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_5_x048 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_4_x083 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_4_x084 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_4_x0123 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_4_x0124 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_4_x0159 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_5_x0 {
		fifo_A_PE_2_5_x048 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_6_x049 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_5_x088 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_5_x089 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_5_x0128 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_5_x0129 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_5_x0163 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x049 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_7_x050 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_6_x093 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_6_x094 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_6_x0133 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_6_x0134 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_6_x0167 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_2_7_x0 {
		fifo_A_PE_2_7_x050 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_8_x051 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_7_x098 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_7_x099 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_2_7_x0138 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_3_7_x0139 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_2_7_x0171 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_0_x0 {
		fifo_A_PE_3_0_x052 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_1_x053 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_0_x064 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_0_x065 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_0_x0104 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_0_x0105 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_0_x0144 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_1_x0 {
		fifo_A_PE_3_1_x053 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_2_x054 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_1_x069 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_1_x070 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_1_x0109 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_1_x0110 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_1_x0148 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_2_x0 {
		fifo_A_PE_3_2_x054 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_3_x055 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_2_x074 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_2_x075 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_2_x0114 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_2_x0115 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_2_x0152 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_3_x0 {
		fifo_A_PE_3_3_x055 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_4_x056 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_3_x079 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_3_x080 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_3_x0119 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_3_x0120 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_3_x0156 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x056 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_5_x057 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_4_x084 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_4_x085 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_4_x0124 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_4_x0125 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_4_x0160 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_5_x0 {
		fifo_A_PE_3_5_x057 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_6_x058 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_5_x089 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_5_x090 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_5_x0129 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_5_x0130 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_5_x0164 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_6_x0 {
		fifo_A_PE_3_6_x058 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_7_x059 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_6_x094 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_6_x095 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_6_x0134 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_6_x0135 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_6_x0168 {Type O LastRead -1 FirstWrite 69}}
	PE_wrapper_3_7_x0 {
		fifo_A_PE_3_7_x059 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_8_x060 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_7_x099 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_7_x0100 {Type O LastRead -1 FirstWrite 4}
		fifo_C_PE_3_7_x0139 {Type I LastRead 4 FirstWrite -1}
		fifo_C_PE_4_7_x0140 {Type O LastRead -1 FirstWrite 4}
		fifo_D_drain_PE_3_7_x0172 {Type O LastRead -1 FirstWrite 69}}
	A_PE_dummy_in_0_x0 {
		fifo_A_PE_0_8_x033 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_1_x0 {
		fifo_A_PE_1_8_x042 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_2_x0 {
		fifo_A_PE_2_8_x051 {Type I LastRead 7 FirstWrite -1}}
	A_PE_dummy_in_3_x0 {
		fifo_A_PE_3_8_x060 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_0_x0 {
		fifo_B_PE_4_0_x065 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_1_x0 {
		fifo_B_PE_4_1_x070 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_2_x0 {
		fifo_B_PE_4_2_x075 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_3_x0 {
		fifo_B_PE_4_3_x080 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_4_x0 {
		fifo_B_PE_4_4_x085 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_5_x0 {
		fifo_B_PE_4_5_x090 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_6_x0 {
		fifo_B_PE_4_6_x095 {Type I LastRead 7 FirstWrite -1}}
	B_PE_dummy_in_7_x0 {
		fifo_B_PE_4_7_x0100 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_0_x0 {
		fifo_C_PE_4_0_x0105 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_1_x0 {
		fifo_C_PE_4_1_x0110 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_2_x0 {
		fifo_C_PE_4_2_x0115 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_3_x0 {
		fifo_C_PE_4_3_x0120 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_4_x0 {
		fifo_C_PE_4_4_x0125 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_5_x0 {
		fifo_C_PE_4_5_x0130 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_6_x0 {
		fifo_C_PE_4_6_x0135 {Type I LastRead 7 FirstWrite -1}}
	C_PE_dummy_in_7_x0 {
		fifo_C_PE_4_7_x0140 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_0_3_x0176 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_0_x0144 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_0_3_x0176 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_2_x0175 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_0_x0143 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_0_2_x0175 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_1_x0174 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_0_x0142 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_0_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_0_1_x0174 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_0_0_x0173 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_0_x0141 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_1_3_x0180 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_1_x0148 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_1_3_x0180 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_2_x0179 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_1_x0147 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_1_2_x0179 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_1_x0178 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_1_x0146 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_1_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_1_1_x0178 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_1_0_x0177 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_1_x0145 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_2_3_x0184 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_2_x0152 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_2_3_x0184 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_2_x0183 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_2_x0151 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_2_2_x0183 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_1_x0182 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_2_x0150 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_2_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_2_1_x0182 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_2_0_x0181 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_2_x0149 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_3_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_3_x0188 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_3_x0156 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_3_x0188 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_2_x0187 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_3_x0155 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_2_x0187 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_3_x0154 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_3_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_3_1_x0186 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_3_x0153 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_4_x0 {
		fifo_D_drain_D_drain_IO_L1_out_4_3_x0192 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_4_x0160 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_4_3_x0192 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_2_x0191 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_4_x0159 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_4_2_x0191 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_1_x0190 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_4_x0158 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_4_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_4_1_x0190 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_4_0_x0189 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_4_x0157 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_5_x0 {
		fifo_D_drain_D_drain_IO_L1_out_5_3_x0196 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_5_x0164 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_5_3_x0196 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_2_x0195 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_5_x0163 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_5_2_x0195 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_1_x0194 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_5_x0162 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_5_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_5_1_x0194 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_5_0_x0193 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_5_x0161 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_6_x0 {
		fifo_D_drain_D_drain_IO_L1_out_6_3_x0200 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_6_x0168 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_6_3_x0200 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_2_x0199 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_6_x0167 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_6_2_x0199 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_1_x0198 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_6_x0166 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_6_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_6_1_x0198 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_6_0_x0197 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_6_x0165 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_boundary_wrapper_7_x0 {
		fifo_D_drain_D_drain_IO_L1_out_7_3_x0204 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_PE_3_7_x0172 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_2_x0 {
		fifo_D_drain_D_drain_IO_L1_out_7_3_x0204 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_2_x0203 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_2_7_x0171 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_1_x0 {
		fifo_D_drain_D_drain_IO_L1_out_7_2_x0203 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_1_x0202 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_1_7_x0170 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L1_out_wrapper_7_0_x0 {
		fifo_D_drain_D_drain_IO_L1_out_7_1_x0202 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L1_out_7_0_x0201 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_PE_0_7_x0169 {Type I LastRead 5 FirstWrite -1}}
	D_drain_IO_L2_out_boundary_x0 {
		fifo_D_drain_D_drain_IO_L2_out_7_x0212 {Type O LastRead -1 FirstWrite 6}
		fifo_D_drain_D_drain_IO_L1_out_7_0_x0201 {Type I LastRead 6 FirstWrite -1}}
	D_drain_IO_L2_out_6_x0 {
		fifo_D_drain_D_drain_IO_L2_out_7_x0212 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_6_x0211 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_6_0_x0197 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_5_x0 {
		fifo_D_drain_D_drain_IO_L2_out_6_x0211 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_5_x0210 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_5_0_x0193 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_4_x0 {
		fifo_D_drain_D_drain_IO_L2_out_5_x0210 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_4_x0209 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_4_0_x0189 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_3_x0 {
		fifo_D_drain_D_drain_IO_L2_out_4_x0209 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_3_x0208 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_3_0_x0185 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_2_x0 {
		fifo_D_drain_D_drain_IO_L2_out_3_x0208 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_2_x0207 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_2_0_x0181 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_1_x0 {
		fifo_D_drain_D_drain_IO_L2_out_2_x0207 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_1_x0206 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_1_0_x0177 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L2_out_0_x0 {
		fifo_D_drain_D_drain_IO_L2_out_1_x0206 {Type I LastRead 7 FirstWrite -1}
		fifo_D_drain_D_drain_IO_L2_out_0_x0205 {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_D_drain_IO_L1_out_0_0_x0173 {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L3_out_x0 {
		fifo_D_drain_out {Type O LastRead -1 FirstWrite 7}
		fifo_D_drain_local_in {Type I LastRead 7 FirstWrite -1}}
	D_drain_IO_L3_out_serialize_x0 {
		fifo_D_drain_D_drain_IO_L3_out_serialize_x04 {Type I LastRead 3 FirstWrite -1}
		D {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "125677961", "Max" : "158046471"}
	, {"Name" : "Interval", "Min" : "28723258", "Max" : "158046399"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_A { m_axi {  { m_axi_gmem_A_AWVALID VALID 1 1 }  { m_axi_gmem_A_AWREADY READY 0 1 }  { m_axi_gmem_A_AWADDR ADDR 1 64 }  { m_axi_gmem_A_AWID ID 1 1 }  { m_axi_gmem_A_AWLEN LEN 1 32 }  { m_axi_gmem_A_AWSIZE SIZE 1 3 }  { m_axi_gmem_A_AWBURST BURST 1 2 }  { m_axi_gmem_A_AWLOCK LOCK 1 2 }  { m_axi_gmem_A_AWCACHE CACHE 1 4 }  { m_axi_gmem_A_AWPROT PROT 1 3 }  { m_axi_gmem_A_AWQOS QOS 1 4 }  { m_axi_gmem_A_AWREGION REGION 1 4 }  { m_axi_gmem_A_AWUSER USER 1 1 }  { m_axi_gmem_A_WVALID VALID 1 1 }  { m_axi_gmem_A_WREADY READY 0 1 }  { m_axi_gmem_A_WDATA DATA 1 512 }  { m_axi_gmem_A_WSTRB STRB 1 64 }  { m_axi_gmem_A_WLAST LAST 1 1 }  { m_axi_gmem_A_WID ID 1 1 }  { m_axi_gmem_A_WUSER USER 1 1 }  { m_axi_gmem_A_ARVALID VALID 1 1 }  { m_axi_gmem_A_ARREADY READY 0 1 }  { m_axi_gmem_A_ARADDR ADDR 1 64 }  { m_axi_gmem_A_ARID ID 1 1 }  { m_axi_gmem_A_ARLEN LEN 1 32 }  { m_axi_gmem_A_ARSIZE SIZE 1 3 }  { m_axi_gmem_A_ARBURST BURST 1 2 }  { m_axi_gmem_A_ARLOCK LOCK 1 2 }  { m_axi_gmem_A_ARCACHE CACHE 1 4 }  { m_axi_gmem_A_ARPROT PROT 1 3 }  { m_axi_gmem_A_ARQOS QOS 1 4 }  { m_axi_gmem_A_ARREGION REGION 1 4 }  { m_axi_gmem_A_ARUSER USER 1 1 }  { m_axi_gmem_A_RVALID VALID 0 1 }  { m_axi_gmem_A_RREADY READY 1 1 }  { m_axi_gmem_A_RDATA DATA 0 512 }  { m_axi_gmem_A_RLAST LAST 0 1 }  { m_axi_gmem_A_RID ID 0 1 }  { m_axi_gmem_A_RUSER USER 0 1 }  { m_axi_gmem_A_RRESP RESP 0 2 }  { m_axi_gmem_A_BVALID VALID 0 1 }  { m_axi_gmem_A_BREADY READY 1 1 }  { m_axi_gmem_A_BRESP RESP 0 2 }  { m_axi_gmem_A_BID ID 0 1 }  { m_axi_gmem_A_BUSER USER 0 1 } } }
	gmem_B { m_axi {  { m_axi_gmem_B_AWVALID VALID 1 1 }  { m_axi_gmem_B_AWREADY READY 0 1 }  { m_axi_gmem_B_AWADDR ADDR 1 64 }  { m_axi_gmem_B_AWID ID 1 1 }  { m_axi_gmem_B_AWLEN LEN 1 32 }  { m_axi_gmem_B_AWSIZE SIZE 1 3 }  { m_axi_gmem_B_AWBURST BURST 1 2 }  { m_axi_gmem_B_AWLOCK LOCK 1 2 }  { m_axi_gmem_B_AWCACHE CACHE 1 4 }  { m_axi_gmem_B_AWPROT PROT 1 3 }  { m_axi_gmem_B_AWQOS QOS 1 4 }  { m_axi_gmem_B_AWREGION REGION 1 4 }  { m_axi_gmem_B_AWUSER USER 1 1 }  { m_axi_gmem_B_WVALID VALID 1 1 }  { m_axi_gmem_B_WREADY READY 0 1 }  { m_axi_gmem_B_WDATA DATA 1 512 }  { m_axi_gmem_B_WSTRB STRB 1 64 }  { m_axi_gmem_B_WLAST LAST 1 1 }  { m_axi_gmem_B_WID ID 1 1 }  { m_axi_gmem_B_WUSER USER 1 1 }  { m_axi_gmem_B_ARVALID VALID 1 1 }  { m_axi_gmem_B_ARREADY READY 0 1 }  { m_axi_gmem_B_ARADDR ADDR 1 64 }  { m_axi_gmem_B_ARID ID 1 1 }  { m_axi_gmem_B_ARLEN LEN 1 32 }  { m_axi_gmem_B_ARSIZE SIZE 1 3 }  { m_axi_gmem_B_ARBURST BURST 1 2 }  { m_axi_gmem_B_ARLOCK LOCK 1 2 }  { m_axi_gmem_B_ARCACHE CACHE 1 4 }  { m_axi_gmem_B_ARPROT PROT 1 3 }  { m_axi_gmem_B_ARQOS QOS 1 4 }  { m_axi_gmem_B_ARREGION REGION 1 4 }  { m_axi_gmem_B_ARUSER USER 1 1 }  { m_axi_gmem_B_RVALID VALID 0 1 }  { m_axi_gmem_B_RREADY READY 1 1 }  { m_axi_gmem_B_RDATA DATA 0 512 }  { m_axi_gmem_B_RLAST LAST 0 1 }  { m_axi_gmem_B_RID ID 0 1 }  { m_axi_gmem_B_RUSER USER 0 1 }  { m_axi_gmem_B_RRESP RESP 0 2 }  { m_axi_gmem_B_BVALID VALID 0 1 }  { m_axi_gmem_B_BREADY READY 1 1 }  { m_axi_gmem_B_BRESP RESP 0 2 }  { m_axi_gmem_B_BID ID 0 1 }  { m_axi_gmem_B_BUSER USER 0 1 } } }
	A { ap_none {  { A in_data 0 64 }  { A_ap_vld in_vld 0 1 } } }
	B { ap_none {  { B in_data 0 64 }  { B_ap_vld in_vld 0 1 } } }
	C { ap_memory {  { C_address0 mem_address 1 10 }  { C_ce0 mem_ce 1 1 }  { C_d0 mem_din 1 512 }  { C_q0 mem_dout 0 512 }  { C_we0 mem_we 1 1 }  { C_address1 mem_address 1 10 }  { C_ce1 mem_ce 1 1 }  { C_d1 mem_din 1 512 }  { C_q1 mem_dout 0 512 }  { C_we1 mem_we 1 1 } } }
	D { ap_memory {  { D_address0 mem_address 1 10 }  { D_ce0 mem_ce 1 1 }  { D_d0 mem_din 1 512 }  { D_q0 mem_dout 0 512 }  { D_we0 mem_we 1 1 }  { D_address1 mem_address 1 10 }  { D_ce1 mem_ce 1 1 }  { D_d1 mem_din 1 512 }  { D_q1 mem_dout 0 512 }  { D_we1 mem_we 1 1 } } }
}
