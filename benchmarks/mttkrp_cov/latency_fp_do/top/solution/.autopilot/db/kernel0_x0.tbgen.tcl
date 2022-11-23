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
	{ C int 512 regular {array 4096 { 1 3 } 1 1 }  }
	{ D int 128 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_A", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_B", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
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
	{ C_address0 sc_out sc_lv 12 signal 4 } 
	{ C_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_d0 sc_out sc_lv 512 signal 4 } 
	{ C_q0 sc_in sc_lv 512 signal 4 } 
	{ C_we0 sc_out sc_logic 1 signal 4 } 
	{ C_address1 sc_out sc_lv 12 signal 4 } 
	{ C_ce1 sc_out sc_logic 1 signal 4 } 
	{ C_d1 sc_out sc_lv 512 signal 4 } 
	{ C_q1 sc_in sc_lv 512 signal 4 } 
	{ C_we1 sc_out sc_logic 1 signal 4 } 
	{ D_address0 sc_out sc_lv 12 signal 5 } 
	{ D_ce0 sc_out sc_logic 1 signal 5 } 
	{ D_d0 sc_out sc_lv 128 signal 5 } 
	{ D_q0 sc_in sc_lv 128 signal 5 } 
	{ D_we0 sc_out sc_logic 1 signal 5 } 
	{ D_address1 sc_out sc_lv 12 signal 5 } 
	{ D_ce1 sc_out sc_logic 1 signal 5 } 
	{ D_d1 sc_out sc_lv 128 signal 5 } 
	{ D_q1 sc_in sc_lv 128 signal 5 } 
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
 	{ "name": "D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "D", "role": "address0" }} , 
 	{ "name": "D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce0" }} , 
 	{ "name": "D_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "D", "role": "d0" }} , 
 	{ "name": "D_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "D", "role": "q0" }} , 
 	{ "name": "D_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "we0" }} , 
 	{ "name": "D_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "D", "role": "address1" }} , 
 	{ "name": "D_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce1" }} , 
 	{ "name": "D_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "D", "role": "d1" }} , 
 	{ "name": "D_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "D", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "8", "11", "14", "17", "18", "19", "25", "31", "37", "43", "49", "55", "61", "67", "68", "69", "72", "75", "78", "81", "84", "87", "90", "93", "99", "105", "111", "117", "123", "129", "135", "141", "147", "153", "159", "165", "171", "177", "183", "189", "195", "201", "207", "213", "219", "225", "231", "237", "243", "249", "255", "261", "267", "273", "279", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "307", "309", "311", "313", "315", "317", "319", "321", "323", "325", "327", "329", "331", "333", "335", "337", "339", "341", "343", "345", "347", "349", "351", "353", "355", "357", "359", "361", "363", "365", "367", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594"],
		"CDFG" : "kernel0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1369555329", "EstimateLatencyMax" : "1230509849",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "kernel0_x0_entry5_U0"},
			{"ID" : "3", "Name" : "A_IO_L3_in_serialize_x0_U0"},
			{"ID" : "17", "Name" : "B_IO_L3_in_serialize_x0_U0"},
			{"ID" : "67", "Name" : "C_IO_L3_in_serialize_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "285", "Name" : "A_PE_dummy_in_0_x0_U0"},
			{"ID" : "286", "Name" : "A_PE_dummy_in_1_x0_U0"},
			{"ID" : "287", "Name" : "A_PE_dummy_in_2_x0_U0"},
			{"ID" : "288", "Name" : "A_PE_dummy_in_3_x0_U0"},
			{"ID" : "289", "Name" : "B_PE_dummy_in_0_x0_U0"},
			{"ID" : "290", "Name" : "B_PE_dummy_in_1_x0_U0"},
			{"ID" : "291", "Name" : "B_PE_dummy_in_2_x0_U0"},
			{"ID" : "292", "Name" : "B_PE_dummy_in_3_x0_U0"},
			{"ID" : "293", "Name" : "B_PE_dummy_in_4_x0_U0"},
			{"ID" : "294", "Name" : "B_PE_dummy_in_5_x0_U0"},
			{"ID" : "295", "Name" : "B_PE_dummy_in_6_x0_U0"},
			{"ID" : "296", "Name" : "B_PE_dummy_in_7_x0_U0"},
			{"ID" : "297", "Name" : "C_PE_dummy_in_0_x0_U0"},
			{"ID" : "298", "Name" : "C_PE_dummy_in_1_x0_U0"},
			{"ID" : "299", "Name" : "C_PE_dummy_in_2_x0_U0"},
			{"ID" : "300", "Name" : "C_PE_dummy_in_3_x0_U0"},
			{"ID" : "301", "Name" : "C_PE_dummy_in_4_x0_U0"},
			{"ID" : "302", "Name" : "C_PE_dummy_in_5_x0_U0"},
			{"ID" : "303", "Name" : "C_PE_dummy_in_6_x0_U0"},
			{"ID" : "304", "Name" : "C_PE_dummy_in_7_x0_U0"},
			{"ID" : "378", "Name" : "D_drain_IO_L3_out_serialize_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "A_IO_L3_in_serialize_x0_U0", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "B_IO_L3_in_serialize_x0_U0", "Port" : "gmem_B"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "C_IO_L3_in_serialize_x0_U0", "Port" : "C"}]},
			{"Name" : "D", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "378", "SubInstance" : "D_drain_IO_L3_out_serialize_x0_U0", "Port" : "D"}]}]},
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
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel0_x0_entry15_U0", "Parent" : "0",
		"CDFG" : "kernel0_x0_entry15",
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
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_serialize_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L3_in_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["6", "7"],
		"CDFG" : "A_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13838526", "EstimateLatencyMax" : "143218878",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x025_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_ping_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_0_x0_U0.local_A_pong_V_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "A_IO_L2_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10391742", "EstimateLatencyMax" : "139772094",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x034_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_ping_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_1_x0_U0.local_A_pong_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "A_IO_L2_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6944958", "EstimateLatencyMax" : "136325310",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x043_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_ping_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_2_x0_U0.local_A_pong_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["15", "16"],
		"CDFG" : "A_IO_L2_in_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3492030", "EstimateLatencyMax" : "132872382",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "237", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x052_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_ping_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_serialize_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L3_in_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24"],
		"CDFG" : "B_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_0_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x061_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_ping_V_0_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.local_B_pong_V_0_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.mux_83_32_1_1_U31", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.mux_83_32_1_1_U32", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_0_x0_U0.mux_83_32_1_1_U33", "Parent" : "19"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["26", "27", "28", "29", "30"],
		"CDFG" : "B_IO_L2_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_1_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x066_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_ping_V_0_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.local_B_pong_V_0_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.mux_83_32_1_1_U39", "Parent" : "25"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.mux_83_32_1_1_U40", "Parent" : "25"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_1_x0_U0.mux_83_32_1_1_U41", "Parent" : "25"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["32", "33", "34", "35", "36"],
		"CDFG" : "B_IO_L2_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_2_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x012", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "105", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x071_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_ping_V_0_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.local_B_pong_V_0_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.mux_83_32_1_1_U45", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.mux_83_32_1_1_U46", "Parent" : "31"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_2_x0_U0.mux_83_32_1_1_U47", "Parent" : "31"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["38", "39", "40", "41", "42"],
		"CDFG" : "B_IO_L2_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_3_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x076_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_ping_V_0_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.local_B_pong_V_0_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.mux_83_32_1_1_U51", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.mux_83_32_1_1_U52", "Parent" : "37"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_3_x0_U0.mux_83_32_1_1_U53", "Parent" : "37"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["44", "45", "46", "47", "48"],
		"CDFG" : "B_IO_L2_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_4_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x014", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x081_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_ping_V_0_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.local_B_pong_V_0_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.mux_83_32_1_1_U57", "Parent" : "43"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.mux_83_32_1_1_U58", "Parent" : "43"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_4_x0_U0.mux_83_32_1_1_U59", "Parent" : "43"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54"],
		"CDFG" : "B_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_5_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "123", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_ping_V_0_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.local_B_pong_V_0_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.mux_83_32_1_1_U63", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.mux_83_32_1_1_U64", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_5_x0_U0.mux_83_32_1_1_U65", "Parent" : "49"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["56", "57", "58", "59", "60"],
		"CDFG" : "B_IO_L2_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182464", "EstimateLatencyMax" : "255520960",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_6_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "129", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_ping_V_0_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.local_B_pong_V_0_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.mux_83_32_1_1_U69", "Parent" : "55"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.mux_83_32_1_1_U70", "Parent" : "55"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_6_x0_U0.mux_83_32_1_1_U71", "Parent" : "55"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["62", "63", "64", "65", "66"],
		"CDFG" : "B_IO_L2_in_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157888", "EstimateLatencyMax" : "255379648",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_7_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_ping_V_0_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_0_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.mux_83_32_1_1_U75", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.mux_83_32_1_1_U76", "Parent" : "61"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.B_IO_L2_in_boundary_x0_U0.mux_83_32_1_1_U77", "Parent" : "61"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "C_IO_L3_in_serialize_x0",
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
			{"Name" : "fifo_C_C_IO_L3_in_serialize_x03", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L3_in_serialize_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L3_in_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0", "Parent" : "0", "Child" : ["70", "71"],
		"CDFG" : "C_IO_L2_in_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4414722", "EstimateLatencyMax" : "110254290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_0_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_0_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_1_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.local_C_ping_V_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_0_x0_U0.local_C_pong_V_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0", "Parent" : "0", "Child" : ["73", "74"],
		"CDFG" : "C_IO_L2_in_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4414722", "EstimateLatencyMax" : "110254290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_1_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_1_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_2_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.local_C_ping_V_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_1_x0_U0.local_C_pong_V_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0", "Parent" : "0", "Child" : ["76", "77"],
		"CDFG" : "C_IO_L2_in_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4414722", "EstimateLatencyMax" : "110254290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_2_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_2_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_3_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "105", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x0111_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.local_C_ping_V_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_2_x0_U0.local_C_pong_V_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0", "Parent" : "0", "Child" : ["79", "80"],
		"CDFG" : "C_IO_L2_in_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4414722", "EstimateLatencyMax" : "110254290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_3_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_3_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_4_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x0116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.local_C_ping_V_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_3_x0_U0.local_C_pong_V_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0", "Parent" : "0", "Child" : ["82", "83"],
		"CDFG" : "C_IO_L2_in_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4414722", "EstimateLatencyMax" : "110254290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_4_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_4_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_5_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x0121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.local_C_ping_V_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_4_x0_U0.local_C_pong_V_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0", "Parent" : "0", "Child" : ["85", "86"],
		"CDFG" : "C_IO_L2_in_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4414722", "EstimateLatencyMax" : "110254290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_5_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_5_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_6_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "123", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.local_C_ping_V_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_5_x0_U0.local_C_pong_V_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0", "Parent" : "0", "Child" : ["88", "89"],
		"CDFG" : "C_IO_L2_in_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4414722", "EstimateLatencyMax" : "110254290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_6_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_6_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_C_IO_L2_in_7_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "129", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x0131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.local_C_ping_V_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_6_x0_U0.local_C_pong_V_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0", "Parent" : "0", "Child" : ["91", "92"],
		"CDFG" : "C_IO_L2_in_boundary_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4408146", "EstimateLatencyMax" : "110208210",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_C_IO_L2_in_7_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_C_IO_L2_in_7_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x0136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.local_C_ping_V_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.C_IO_L2_in_boundary_x0_U0.local_C_pong_V_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["94", "95", "96", "97", "98"],
		"CDFG" : "PE_wrapper_0_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4155921873", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_0_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_0_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_0_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x0141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "311", "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x0141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.local_D_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U108", "Parent" : "93"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U109", "Parent" : "93"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.mux_83_32_1_1_U110", "Parent" : "93"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_0_x0_U0.mux_83_32_1_1_U111", "Parent" : "93"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["100", "101", "102", "103", "104"],
		"CDFG" : "PE_wrapper_0_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4155921873", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_1_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "105", "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "147", "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "147", "DependentChan" : "432", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x0145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "319", "DependentChan" : "433", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.local_D_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U122", "Parent" : "99"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U123", "Parent" : "99"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.mux_83_32_1_1_U124", "Parent" : "99"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_1_x0_U0.mux_83_32_1_1_U125", "Parent" : "99"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["106", "107", "108", "109", "110"],
		"CDFG" : "PE_wrapper_0_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_2_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "434", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "153", "DependentChan" : "435", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "153", "DependentChan" : "436", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "437", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x0149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.local_D_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U133", "Parent" : "105"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U134", "Parent" : "105"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.mux_83_32_1_1_U135", "Parent" : "105"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_2_x0_U0.mux_83_32_1_1_U136", "Parent" : "105"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0", "Parent" : "0", "Child" : ["112", "113", "114", "115", "116"],
		"CDFG" : "PE_wrapper_0_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_3_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "434", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "438", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "439", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_3_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_3_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "440", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "441", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.local_D_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U144", "Parent" : "111"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U145", "Parent" : "111"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.mux_83_32_1_1_U146", "Parent" : "111"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_3_x0_U0.mux_83_32_1_1_U147", "Parent" : "111"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0", "Parent" : "0", "Child" : ["118", "119", "120", "121", "122"],
		"CDFG" : "PE_wrapper_0_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_4_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "438", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "123", "DependentChan" : "442", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "443", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_4_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_4_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "444", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "343", "DependentChan" : "445", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x0157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.local_D_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U155", "Parent" : "117"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U156", "Parent" : "117"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.mux_83_32_1_1_U157", "Parent" : "117"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_4_x0_U0.mux_83_32_1_1_U158", "Parent" : "117"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0", "Parent" : "0", "Child" : ["124", "125", "126", "127", "128"],
		"CDFG" : "PE_wrapper_0_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_5_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "442", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "129", "DependentChan" : "446", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "447", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_5_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_5_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "448", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.local_D_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U166", "Parent" : "123"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U167", "Parent" : "123"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.mux_83_32_1_1_U168", "Parent" : "123"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_5_x0_U0.mux_83_32_1_1_U169", "Parent" : "123"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0", "Parent" : "0", "Child" : ["130", "131", "132", "133", "134"],
		"CDFG" : "PE_wrapper_0_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_6_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "123", "DependentChan" : "446", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x091_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_6_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_6_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x0165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.local_D_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U177", "Parent" : "129"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U178", "Parent" : "129"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.mux_83_32_1_1_U179", "Parent" : "129"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_6_x0_U0.mux_83_32_1_1_U180", "Parent" : "129"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0", "Parent" : "0", "Child" : ["136", "137", "138", "139", "140"],
		"CDFG" : "PE_wrapper_0_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_7_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "129", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "285", "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_0_7_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_0_7_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x0137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "367", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.local_D_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U188", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U189", "Parent" : "135"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.mux_83_32_1_1_U190", "Parent" : "135"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_0_7_x0_U0.mux_83_32_1_1_U191", "Parent" : "135"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["142", "143", "144", "145", "146"],
		"CDFG" : "PE_wrapper_1_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4155921873", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_0_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "147", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_0_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_0_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x0142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "309", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x0142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.local_D_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U199", "Parent" : "141"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U200", "Parent" : "141"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.mux_83_32_1_1_U201", "Parent" : "141"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_0_x0_U0.mux_83_32_1_1_U202", "Parent" : "141"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["148", "149", "150", "151", "152"],
		"CDFG" : "PE_wrapper_1_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4155921873", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_1_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "153", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "463", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "432", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "317", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.local_D_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U210", "Parent" : "147"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U211", "Parent" : "147"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.mux_83_32_1_1_U212", "Parent" : "147"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_1_x0_U0.mux_83_32_1_1_U213", "Parent" : "147"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["154", "155", "156", "157", "158"],
		"CDFG" : "PE_wrapper_1_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_2_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "147", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "435", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_2_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "436", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x0150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x0150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.local_D_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U221", "Parent" : "153"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U222", "Parent" : "153"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.mux_83_32_1_1_U223", "Parent" : "153"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_2_x0_U0.mux_83_32_1_1_U224", "Parent" : "153"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0", "Parent" : "0", "Child" : ["160", "161", "162", "163", "164"],
		"CDFG" : "PE_wrapper_1_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_3_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "153", "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "439", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_3_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "440", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_3_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x0154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "333", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.local_D_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U232", "Parent" : "159"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U233", "Parent" : "159"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.mux_83_32_1_1_U234", "Parent" : "159"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_3_x0_U0.mux_83_32_1_1_U235", "Parent" : "159"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0", "Parent" : "0", "Child" : ["166", "167", "168", "169", "170"],
		"CDFG" : "PE_wrapper_1_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_4_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "443", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "213", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_4_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "444", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_4_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "213", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x0158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.local_D_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U243", "Parent" : "165"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U244", "Parent" : "165"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.mux_83_32_1_1_U245", "Parent" : "165"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_4_x0_U0.mux_83_32_1_1_U246", "Parent" : "165"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0", "Parent" : "0", "Child" : ["172", "173", "174", "175", "176"],
		"CDFG" : "PE_wrapper_1_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_5_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "123", "DependentChan" : "447", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "219", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_5_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "123", "DependentChan" : "448", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "219", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x0162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "349", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x0162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.local_D_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U254", "Parent" : "171"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U255", "Parent" : "171"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.mux_83_32_1_1_U256", "Parent" : "171"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_5_x0_U0.mux_83_32_1_1_U257", "Parent" : "171"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0", "Parent" : "0", "Child" : ["178", "179", "180", "181", "182"],
		"CDFG" : "PE_wrapper_1_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_6_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "129", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_6_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "129", "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_6_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x0166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "357", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.local_D_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U265", "Parent" : "177"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U266", "Parent" : "177"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.mux_83_32_1_1_U267", "Parent" : "177"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_6_x0_U0.mux_83_32_1_1_U268", "Parent" : "177"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0", "Parent" : "0", "Child" : ["184", "185", "186", "187", "188"],
		"CDFG" : "PE_wrapper_1_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_1_7_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_1_7_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_1_7_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x0170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "365", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.local_D_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U276", "Parent" : "183"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U277", "Parent" : "183"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.mux_83_32_1_1_U278", "Parent" : "183"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_1_7_x0_U0.mux_83_32_1_1_U279", "Parent" : "183"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["190", "191", "192", "193", "194"],
		"CDFG" : "PE_wrapper_2_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4155921873", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_0_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "237", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_0_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_0_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "237", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "307", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x0143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.local_D_U", "Parent" : "189"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U287", "Parent" : "189"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U288", "Parent" : "189"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.mux_83_32_1_1_U289", "Parent" : "189"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_0_x0_U0.mux_83_32_1_1_U290", "Parent" : "189"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["196", "197", "198", "199", "200"],
		"CDFG" : "PE_wrapper_2_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4155921873", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_1_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "147", "DependentChan" : "463", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "243", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "147", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "243", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "315", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x0147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.local_D_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U298", "Parent" : "195"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U299", "Parent" : "195"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.mux_83_32_1_1_U300", "Parent" : "195"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_1_x0_U0.mux_83_32_1_1_U301", "Parent" : "195"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["202", "203", "204", "205", "206"],
		"CDFG" : "PE_wrapper_2_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_2_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "153", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "249", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_2_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "153", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "249", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "323", "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x0151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.local_D_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U309", "Parent" : "201"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U310", "Parent" : "201"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.mux_83_32_1_1_U311", "Parent" : "201"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_2_x0_U0.mux_83_32_1_1_U312", "Parent" : "201"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0", "Parent" : "0", "Child" : ["208", "209", "210", "211", "212"],
		"CDFG" : "PE_wrapper_2_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_3_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "213", "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_3_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_3_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x0155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "331", "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.local_D_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U320", "Parent" : "207"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U321", "Parent" : "207"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.mux_83_32_1_1_U322", "Parent" : "207"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_3_x0_U0.mux_83_32_1_1_U323", "Parent" : "207"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0", "Parent" : "0", "Child" : ["214", "215", "216", "217", "218"],
		"CDFG" : "PE_wrapper_2_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_4_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "207", "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "219", "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "261", "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_4_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_4_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "261", "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "339", "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x0159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.local_D_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U331", "Parent" : "213"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U332", "Parent" : "213"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.mux_83_32_1_1_U333", "Parent" : "213"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_4_x0_U0.mux_83_32_1_1_U334", "Parent" : "213"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0", "Parent" : "0", "Child" : ["220", "221", "222", "223", "224"],
		"CDFG" : "PE_wrapper_2_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_5_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "267", "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_5_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_5_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "267", "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x0163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "347", "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.local_D_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U342", "Parent" : "219"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U343", "Parent" : "219"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.mux_83_32_1_1_U344", "Parent" : "219"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_5_x0_U0.mux_83_32_1_1_U345", "Parent" : "219"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0", "Parent" : "0", "Child" : ["226", "227", "228", "229", "230"],
		"CDFG" : "PE_wrapper_2_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_6_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "219", "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "231", "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "273", "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_6_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_6_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "273", "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "355", "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.local_D_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U353", "Parent" : "225"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U354", "Parent" : "225"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.mux_83_32_1_1_U355", "Parent" : "225"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_6_x0_U0.mux_83_32_1_1_U356", "Parent" : "225"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0", "Parent" : "0", "Child" : ["232", "233", "234", "235", "236"],
		"CDFG" : "PE_wrapper_2_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_2_7_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "279", "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_2_7_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_2_7_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "279", "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x0171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.local_D_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U364", "Parent" : "231"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U365", "Parent" : "231"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.mux_83_32_1_1_U366", "Parent" : "231"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_2_7_x0_U0.mux_83_32_1_1_U367", "Parent" : "231"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["238", "239", "240", "241", "242"],
		"CDFG" : "PE_wrapper_3_0_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4155921873", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_0_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "243", "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "289", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_0_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_0_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_0_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x0144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "305", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x0144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.local_D_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U375", "Parent" : "237"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U376", "Parent" : "237"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.mux_83_32_1_1_U377", "Parent" : "237"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_0_x0_U0.mux_83_32_1_1_U378", "Parent" : "237"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["244", "245", "246", "247", "248"],
		"CDFG" : "PE_wrapper_3_1_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4155921873", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_1_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "237", "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "249", "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_1_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_1_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "298", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x0148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "313", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x0148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.local_D_U", "Parent" : "243"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U386", "Parent" : "243"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U387", "Parent" : "243"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.mux_83_32_1_1_U388", "Parent" : "243"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_1_x0_U0.mux_83_32_1_1_U389", "Parent" : "243"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["250", "251", "252", "253", "254"],
		"CDFG" : "PE_wrapper_3_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_2_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "243", "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "255", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "291", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_2_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_2_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "299", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x0152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "321", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x0152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.local_D_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U397", "Parent" : "249"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U398", "Parent" : "249"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.mux_83_32_1_1_U399", "Parent" : "249"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_2_x0_U0.mux_83_32_1_1_U400", "Parent" : "249"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0", "Parent" : "0", "Child" : ["256", "257", "258", "259", "260"],
		"CDFG" : "PE_wrapper_3_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_3_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "249", "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "261", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "207", "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "207", "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "300", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x0156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "329", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x0156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.local_D_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U408", "Parent" : "255"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U409", "Parent" : "255"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.mux_83_32_1_1_U410", "Parent" : "255"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_3_x0_U0.mux_83_32_1_1_U411", "Parent" : "255"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0", "Parent" : "0", "Child" : ["262", "263", "264", "265", "266"],
		"CDFG" : "PE_wrapper_3_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_4_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "267", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "293", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_4_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_4_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_4_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "301", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x0160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "337", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x0160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.local_D_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U419", "Parent" : "261"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U420", "Parent" : "261"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.mux_83_32_1_1_U421", "Parent" : "261"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_4_x0_U0.mux_83_32_1_1_U422", "Parent" : "261"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0", "Parent" : "0", "Child" : ["268", "269", "270", "271", "272"],
		"CDFG" : "PE_wrapper_3_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_5_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "261", "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "273", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "219", "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "294", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_5_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "219", "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_5_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_5_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x0164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "345", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.local_D_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U430", "Parent" : "267"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U431", "Parent" : "267"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.mux_83_32_1_1_U432", "Parent" : "267"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_5_x0_U0.mux_83_32_1_1_U433", "Parent" : "267"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0", "Parent" : "0", "Child" : ["274", "275", "276", "277", "278"],
		"CDFG" : "PE_wrapper_3_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_6_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "267", "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "279", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "295", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_6_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_6_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_6_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "303", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "353", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.local_D_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U441", "Parent" : "273"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U442", "Parent" : "273"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.mux_83_32_1_1_U443", "Parent" : "273"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_6_x0_U0.mux_83_32_1_1_U444", "Parent" : "273"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0", "Parent" : "0", "Child" : ["280", "281", "282", "283", "284"],
		"CDFG" : "PE_wrapper_3_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4155921873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_3_7_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "273", "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "288", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "296", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_3_7_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_3_7_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_PE_4_7_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "304", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x0172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "361", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.local_D_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U452", "Parent" : "279"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U453", "Parent" : "279"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.mux_83_32_1_1_U454", "Parent" : "279"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_wrapper_3_7_x0_U0.mux_83_32_1_1_U455", "Parent" : "279"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_0_8_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x033_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_1_8_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x042_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_2_8_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x051_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_PE_dummy_in_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_A_PE_3_8_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "279", "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x060_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "237", "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_1_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "243", "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x070_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_2_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "249", "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x075_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_3_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x080_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_4_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "261", "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_5_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "267", "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_6_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "273", "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_PE_dummy_in_7_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_B_PE_4_7_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "279", "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_0_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "237", "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_0_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_1_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "243", "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_1_x0110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_2_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "249", "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_2_x0115_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_3_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_3_x0120_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_4_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "261", "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_4_x0125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_5_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "267", "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_5_x0130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_6_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "273", "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_6_x0135_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_PE_dummy_in_7_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_C_PE_4_7_x0140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "279", "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_PE_4_7_x0140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x0_U0", "Parent" : "0", "Child" : ["306"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "307", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_0_x0144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "237", "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_0_x0144_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_0_x0_U0.local_D_V_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x0_U0", "Parent" : "0", "Child" : ["308"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "305", "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_3_x0176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "309", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_0_x0143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_0_x0143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_2_x0_U0.local_D_V_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x0_U0", "Parent" : "0", "Child" : ["310"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "307", "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_2_x0175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "311", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_0_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_0_x0142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_1_x0_U0.local_D_V_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x0_U0", "Parent" : "0", "Child" : ["312"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_0_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "309", "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_1_x0174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "376", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_0_x0141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_0_x0141_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_0_0_x0_U0.local_D_V_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x0_U0", "Parent" : "0", "Child" : ["314"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "315", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_1_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "243", "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_1_x0148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_1_x0_U0.local_D_V_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x0_U0", "Parent" : "0", "Child" : ["316"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "313", "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_3_x0180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "317", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_1_x0147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_1_x0147_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_2_x0_U0.local_D_V_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x0_U0", "Parent" : "0", "Child" : ["318"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "315", "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_2_x0179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "319", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_1_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "147", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_1_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_1_x0_U0.local_D_V_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x0_U0", "Parent" : "0", "Child" : ["320"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_1_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "317", "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_1_x0178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "375", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_1_x0145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "433", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_1_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_1_0_x0_U0.local_D_V_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x0_U0", "Parent" : "0", "Child" : ["322"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "323", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_2_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "249", "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_2_x0152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_2_x0_U0.local_D_V_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x0_U0", "Parent" : "0", "Child" : ["324"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "321", "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_3_x0184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "325", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_2_x0151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_2_x0151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_2_x0_U0.local_D_V_U", "Parent" : "323"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x0_U0", "Parent" : "0", "Child" : ["326"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "323", "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_2_x0183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_2_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "153", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_2_x0150_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_1_x0_U0.local_D_V_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x0_U0", "Parent" : "0", "Child" : ["328"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_2_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "325", "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_1_x0182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_2_x0149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "105", "DependentChan" : "437", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_2_x0149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_2_0_x0_U0.local_D_V_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x0_U0", "Parent" : "0", "Child" : ["330"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_3_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "331", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_3_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "255", "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_3_x0156_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_3_x0_U0.local_D_V_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x0_U0", "Parent" : "0", "Child" : ["332"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "329", "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_3_x0188_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "333", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_3_x0155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "207", "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_3_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_2_x0_U0.local_D_V_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x0_U0", "Parent" : "0", "Child" : ["334"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "331", "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_2_x0187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_3_x0154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_3_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_1_x0_U0.local_D_V_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x0_U0", "Parent" : "0", "Child" : ["336"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_3_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "333", "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_1_x0186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "373", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_3_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "441", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_3_x0153_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_3_0_x0_U0.local_D_V_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x0_U0", "Parent" : "0", "Child" : ["338"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_4_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "339", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_4_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "261", "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_4_x0160_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_4_x0_U0.local_D_V_U", "Parent" : "337"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x0_U0", "Parent" : "0", "Child" : ["340"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "337", "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_3_x0192_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_4_x0159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_4_x0159_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_2_x0_U0.local_D_V_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x0_U0", "Parent" : "0", "Child" : ["342"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "339", "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_2_x0191_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "343", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_4_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_4_x0158_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_1_x0_U0.local_D_V_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x0_U0", "Parent" : "0", "Child" : ["344"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_4_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "572", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_1_x0190_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "372", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_4_x0157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "445", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_4_x0157_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_4_0_x0_U0.local_D_V_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x0_U0", "Parent" : "0", "Child" : ["346"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_5_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "347", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_5_x0164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "267", "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_5_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_5_x0_U0.local_D_V_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x0_U0", "Parent" : "0", "Child" : ["348"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "345", "DependentChan" : "574", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_3_x0196_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "349", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_5_x0163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "219", "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_5_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_2_x0_U0.local_D_V_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x0_U0", "Parent" : "0", "Child" : ["350"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "347", "DependentChan" : "575", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_2_x0195_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_5_x0162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_5_x0162_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_1_x0_U0.local_D_V_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x0_U0", "Parent" : "0", "Child" : ["352"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_5_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "349", "DependentChan" : "576", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_1_x0194_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "371", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_5_x0161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "123", "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_5_x0161_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_5_0_x0_U0.local_D_V_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x0_U0", "Parent" : "0", "Child" : ["354"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_6_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "355", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_6_x0168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "273", "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_6_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_6_x0_U0.local_D_V_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x0_U0", "Parent" : "0", "Child" : ["356"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "353", "DependentChan" : "578", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_3_x0200_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "357", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_6_x0167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_6_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_2_x0_U0.local_D_V_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x0_U0", "Parent" : "0", "Child" : ["358"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "355", "DependentChan" : "579", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_2_x0199_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_6_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_6_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_1_x0_U0.local_D_V_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x0_U0", "Parent" : "0", "Child" : ["360"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_6_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "357", "DependentChan" : "580", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_1_x0198_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "370", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_6_x0165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "129", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_6_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_6_0_x0_U0.local_D_V_U", "Parent" : "359"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x0_U0", "Parent" : "0", "Child" : ["362"],
		"CDFG" : "D_drain_IO_L1_out_boundary_wrapper_7_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "363", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_3_7_x0172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "279", "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_3_7_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_boundary_wrapper_7_x0_U0.local_D_V_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x0_U0", "Parent" : "0", "Child" : ["364"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_2_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "361", "DependentChan" : "582", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_3_x0204_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "365", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_2_7_x0171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "231", "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_2_7_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_2_x0_U0.local_D_V_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x0_U0", "Parent" : "0", "Child" : ["366"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_1_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "363", "DependentChan" : "583", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_2_x0203_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "367", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_1_7_x0170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_1_7_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_1_x0_U0.local_D_V_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x0_U0", "Parent" : "0", "Child" : ["368"],
		"CDFG" : "D_drain_IO_L1_out_wrapper_7_0_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "365", "DependentChan" : "584", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_1_x0202_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "369", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_PE_0_7_x0169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_PE_0_7_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L1_out_wrapper_7_0_x0_U0.local_D_V_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_boundary_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "370", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "367", "DependentChan" : "585", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_7_0_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_6_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "369", "DependentChan" : "586", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_7_x0212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "371", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "359", "DependentChan" : "581", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_6_0_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_5_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "370", "DependentChan" : "587", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_6_x0211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "372", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "351", "DependentChan" : "577", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_5_0_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_4_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "371", "DependentChan" : "588", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_5_x0210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "373", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "343", "DependentChan" : "573", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_4_0_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_3_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "372", "DependentChan" : "589", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_4_x0209_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "374", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_3_0_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_2_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "373", "DependentChan" : "590", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_3_x0208_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "375", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "327", "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_2_0_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_1_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "374", "DependentChan" : "591", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_2_x0207_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "376", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "319", "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_1_0_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L2_out_0_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "375", "DependentChan" : "592", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "377", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L2_out_0_x0205_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "311", "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_x0_U0", "Parent" : "0",
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
			{"Name" : "fifo_D_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "378", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "376", "DependentChan" : "593", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_drain_IO_L3_out_serialize_x0_U0", "Parent" : "0",
		"CDFG" : "D_drain_IO_L3_out_serialize_x0",
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
			{"Name" : "fifo_D_drain_D_drain_IO_L3_out_serialize_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "377", "DependentChan" : "594", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_D_drain_IO_L3_out_serialize_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_c1_U", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c2_U", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_c_U", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_c_U", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_B_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L3_in_serialize_x0_U", "Parent" : "0"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_0_x0_U", "Parent" : "0"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_1_x0_U", "Parent" : "0"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_2_x0_U", "Parent" : "0"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_3_x0_U", "Parent" : "0"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_4_x0_U", "Parent" : "0"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_5_x0_U", "Parent" : "0"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_6_x0_U", "Parent" : "0"},
	{"ID" : "422", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_C_IO_L2_in_7_x0_U", "Parent" : "0"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "427", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "428", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "429", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_0_x0_U", "Parent" : "0"},
	{"ID" : "430", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "432", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "433", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_1_x0_U", "Parent" : "0"},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "435", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "436", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "437", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_2_x0_U", "Parent" : "0"},
	{"ID" : "438", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "439", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "441", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_3_x0_U", "Parent" : "0"},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "443", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "444", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "445", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_4_x0_U", "Parent" : "0"},
	{"ID" : "446", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "447", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "448", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "449", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_5_x0_U", "Parent" : "0"},
	{"ID" : "450", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "452", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "453", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_6_x0_U", "Parent" : "0"},
	{"ID" : "454", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_0_8_x0_U", "Parent" : "0"},
	{"ID" : "455", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "456", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_0_7_x0_U", "Parent" : "0"},
	{"ID" : "458", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "459", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "460", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "461", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_0_x0_U", "Parent" : "0"},
	{"ID" : "462", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "465", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_1_x0_U", "Parent" : "0"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "468", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_2_x0_U", "Parent" : "0"},
	{"ID" : "470", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "471", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "472", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_3_x0_U", "Parent" : "0"},
	{"ID" : "474", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "475", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "476", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_4_x0_U", "Parent" : "0"},
	{"ID" : "478", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "479", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "480", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "481", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_5_x0_U", "Parent" : "0"},
	{"ID" : "482", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "483", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "484", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "485", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_6_x0_U", "Parent" : "0"},
	{"ID" : "486", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_1_8_x0_U", "Parent" : "0"},
	{"ID" : "487", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "488", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "489", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_1_7_x0_U", "Parent" : "0"},
	{"ID" : "490", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "491", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "493", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_0_x0_U", "Parent" : "0"},
	{"ID" : "494", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "495", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "496", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "497", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_1_x0_U", "Parent" : "0"},
	{"ID" : "498", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "499", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "500", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "501", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_2_x0_U", "Parent" : "0"},
	{"ID" : "502", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "504", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "505", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_3_x0_U", "Parent" : "0"},
	{"ID" : "506", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "507", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "508", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_4_x0_U", "Parent" : "0"},
	{"ID" : "510", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "511", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "512", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "513", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_5_x0_U", "Parent" : "0"},
	{"ID" : "514", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "515", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "516", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "517", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_6_x0_U", "Parent" : "0"},
	{"ID" : "518", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_2_8_x0_U", "Parent" : "0"},
	{"ID" : "519", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "520", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "521", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_2_7_x0_U", "Parent" : "0"},
	{"ID" : "522", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "523", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "524", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_0_x0_U", "Parent" : "0"},
	{"ID" : "525", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_0_x0_U", "Parent" : "0"},
	{"ID" : "526", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "528", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_1_x0_U", "Parent" : "0"},
	{"ID" : "529", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_1_x0_U", "Parent" : "0"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "531", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "532", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_2_x0_U", "Parent" : "0"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_2_x0_U", "Parent" : "0"},
	{"ID" : "534", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_3_x0_U", "Parent" : "0"},
	{"ID" : "537", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_3_x0_U", "Parent" : "0"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_4_x0_U", "Parent" : "0"},
	{"ID" : "541", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_4_x0_U", "Parent" : "0"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_5_x0_U", "Parent" : "0"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_5_x0_U", "Parent" : "0"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_6_x0_U", "Parent" : "0"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_6_x0_U", "Parent" : "0"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_A_PE_3_8_x0_U", "Parent" : "0"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_B_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_C_PE_4_7_x0_U", "Parent" : "0"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_PE_3_7_x0_U", "Parent" : "0"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_3_x0_U", "Parent" : "0"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_2_x0_U", "Parent" : "0"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_1_x0_U", "Parent" : "0"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_0_0_x0_U", "Parent" : "0"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_3_x0_U", "Parent" : "0"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_2_x0_U", "Parent" : "0"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_1_x0_U", "Parent" : "0"},
	{"ID" : "561", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_1_0_x0_U", "Parent" : "0"},
	{"ID" : "562", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_3_x0_U", "Parent" : "0"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_2_x0_U", "Parent" : "0"},
	{"ID" : "564", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_1_x0_U", "Parent" : "0"},
	{"ID" : "565", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_2_0_x0_U", "Parent" : "0"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_3_x0_U", "Parent" : "0"},
	{"ID" : "567", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_2_x0_U", "Parent" : "0"},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_1_x0_U", "Parent" : "0"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_3_0_x0_U", "Parent" : "0"},
	{"ID" : "570", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_3_x0_U", "Parent" : "0"},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_2_x0_U", "Parent" : "0"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_1_x0_U", "Parent" : "0"},
	{"ID" : "573", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_4_0_x0_U", "Parent" : "0"},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_3_x0_U", "Parent" : "0"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_2_x0_U", "Parent" : "0"},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_1_x0_U", "Parent" : "0"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_5_0_x0_U", "Parent" : "0"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_3_x0_U", "Parent" : "0"},
	{"ID" : "579", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_2_x0_U", "Parent" : "0"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_1_x0_U", "Parent" : "0"},
	{"ID" : "581", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_6_0_x0_U", "Parent" : "0"},
	{"ID" : "582", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_3_x0_U", "Parent" : "0"},
	{"ID" : "583", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_2_x0_U", "Parent" : "0"},
	{"ID" : "584", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_1_x0_U", "Parent" : "0"},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L1_out_7_0_x0_U", "Parent" : "0"},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_7_x0_U", "Parent" : "0"},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_6_x0_U", "Parent" : "0"},
	{"ID" : "588", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_5_x0_U", "Parent" : "0"},
	{"ID" : "589", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_4_x0_U", "Parent" : "0"},
	{"ID" : "590", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_3_x0_U", "Parent" : "0"},
	{"ID" : "591", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_2_x0_U", "Parent" : "0"},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_1_x0_U", "Parent" : "0"},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L2_out_0_x0_U", "Parent" : "0"},
	{"ID" : "594", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_D_drain_D_drain_IO_L3_out_serialize_x0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel0_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		gmem_B {Type I LastRead 72 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 1 FirstWrite -1}
		D {Type O LastRead -1 FirstWrite 2}}
	kernel0_x0_entry5 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	kernel0_x0_entry15 {
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
		fifo_A_PE_0_0_x025 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x06 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x07 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_1_0_x034 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_2_x0 {
		fifo_A_A_IO_L2_in_2_x07 {Type I LastRead 8 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x08 {Type O LastRead -1 FirstWrite 8}
		fifo_A_PE_2_0_x043 {Type O LastRead -1 FirstWrite 7}}
	A_IO_L2_in_boundary_x0 {
		fifo_A_A_IO_L2_in_3_x08 {Type I LastRead 7 FirstWrite -1}
		fifo_A_PE_3_0_x052 {Type O LastRead -1 FirstWrite 7}}
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
		fifo_B_PE_0_0_x061 {Type O LastRead -1 FirstWrite 7}}
	B_IO_L2_in_1_x0 {
		fifo_B_B_IO_L2_in_1_x010 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_2_x011 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_1_x066 {Type O LastRead -1 FirstWrite 7}}
	B_IO_L2_in_2_x0 {
		fifo_B_B_IO_L2_in_2_x011 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_3_x012 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_2_x071 {Type O LastRead -1 FirstWrite 7}}
	B_IO_L2_in_3_x0 {
		fifo_B_B_IO_L2_in_3_x012 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_4_x013 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_3_x076 {Type O LastRead -1 FirstWrite 7}}
	B_IO_L2_in_4_x0 {
		fifo_B_B_IO_L2_in_4_x013 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_5_x014 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_4_x081 {Type O LastRead -1 FirstWrite 7}}
	B_IO_L2_in_5_x0 {
		fifo_B_B_IO_L2_in_5_x014 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_6_x015 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_5_x086 {Type O LastRead -1 FirstWrite 7}}
	B_IO_L2_in_6_x0 {
		fifo_B_B_IO_L2_in_6_x015 {Type I LastRead 6 FirstWrite -1}
		fifo_B_B_IO_L2_in_7_x016 {Type O LastRead -1 FirstWrite 6}
		fifo_B_PE_0_6_x091 {Type O LastRead -1 FirstWrite 7}}
	B_IO_L2_in_boundary_x0 {
		fifo_B_B_IO_L2_in_7_x016 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_0_7_x096 {Type O LastRead -1 FirstWrite 7}}
	C_IO_L3_in_serialize_x0 {
		fifo_C_C_IO_L3_in_serialize_x03 {Type O LastRead -1 FirstWrite 3}
		C {Type I LastRead 1 FirstWrite -1}}
	C_IO_L3_in_x0 {
		fifo_C_in {Type I LastRead 6 FirstWrite -1}
		fifo_C_local_out {Type O LastRead -1 FirstWrite 6}}
	C_IO_L2_in_0_x0 {
		fifo_C_C_IO_L2_in_0_x017 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_1_x018 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_0_x0101 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L2_in_1_x0 {
		fifo_C_C_IO_L2_in_1_x018 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_2_x019 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_1_x0106 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L2_in_2_x0 {
		fifo_C_C_IO_L2_in_2_x019 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_3_x020 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_2_x0111 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L2_in_3_x0 {
		fifo_C_C_IO_L2_in_3_x020 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_4_x021 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_3_x0116 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L2_in_4_x0 {
		fifo_C_C_IO_L2_in_4_x021 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_5_x022 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_4_x0121 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L2_in_5_x0 {
		fifo_C_C_IO_L2_in_5_x022 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_6_x023 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_5_x0126 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L2_in_6_x0 {
		fifo_C_C_IO_L2_in_6_x023 {Type I LastRead 6 FirstWrite -1}
		fifo_C_C_IO_L2_in_7_x024 {Type O LastRead -1 FirstWrite 6}
		fifo_C_PE_0_6_x0131 {Type O LastRead -1 FirstWrite 8}}
	C_IO_L2_in_boundary_x0 {
		fifo_C_C_IO_L2_in_7_x024 {Type I LastRead 5 FirstWrite -1}
		fifo_C_PE_0_7_x0136 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_0_0_x0 {
		fifo_A_PE_0_0_x025 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_1_x026 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_0_x061 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_0_x062 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_0_0_x0101 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_0_x0102 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_0_0_x0141 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_1_x0 {
		fifo_A_PE_0_1_x026 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_2_x027 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_1_x066 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_1_x067 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_0_1_x0106 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_1_x0107 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_0_1_x0145 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_2_x0 {
		fifo_A_PE_0_2_x027 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_3_x028 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_2_x071 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_2_x072 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_0_2_x0111 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_2_x0112 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_0_2_x0149 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_3_x0 {
		fifo_A_PE_0_3_x028 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_4_x029 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_3_x076 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_3_x077 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_0_3_x0116 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_3_x0117 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_0_3_x0153 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_4_x0 {
		fifo_A_PE_0_4_x029 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_5_x030 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_4_x081 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_4_x082 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_0_4_x0121 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_4_x0122 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_0_4_x0157 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_5_x0 {
		fifo_A_PE_0_5_x030 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_6_x031 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_5_x086 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_5_x087 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_0_5_x0126 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_5_x0127 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_0_5_x0161 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_6_x0 {
		fifo_A_PE_0_6_x031 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_7_x032 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_6_x091 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_6_x092 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_0_6_x0131 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_6_x0132 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_0_6_x0165 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_0_7_x0 {
		fifo_A_PE_0_7_x032 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_0_8_x033 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_7_x096 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_1_7_x097 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_0_7_x0136 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_1_7_x0137 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_0_7_x0169 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x034 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_1_x035 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_0_x062 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_0_x063 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_1_0_x0102 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_0_x0103 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_1_0_x0142 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x035 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_2_x036 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_1_x067 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_1_x068 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_1_1_x0107 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_1_x0108 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_1_1_x0146 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_2_x0 {
		fifo_A_PE_1_2_x036 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_3_x037 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_2_x072 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_2_x073 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_1_2_x0112 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_2_x0113 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_1_2_x0150 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_3_x0 {
		fifo_A_PE_1_3_x037 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_4_x038 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_3_x077 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_3_x078 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_1_3_x0117 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_3_x0118 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_1_3_x0154 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_4_x0 {
		fifo_A_PE_1_4_x038 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_5_x039 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_4_x082 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_4_x083 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_1_4_x0122 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_4_x0123 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_1_4_x0158 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_5_x0 {
		fifo_A_PE_1_5_x039 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_6_x040 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_5_x087 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_5_x088 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_1_5_x0127 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_5_x0128 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_1_5_x0162 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_6_x0 {
		fifo_A_PE_1_6_x040 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_7_x041 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_6_x092 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_6_x093 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_1_6_x0132 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_6_x0133 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_1_6_x0166 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_1_7_x0 {
		fifo_A_PE_1_7_x041 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_1_8_x042 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_7_x097 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_2_7_x098 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_1_7_x0137 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_2_7_x0138 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_1_7_x0170 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_0_x0 {
		fifo_A_PE_2_0_x043 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_1_x044 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_0_x063 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_0_x064 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_2_0_x0103 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_0_x0104 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_2_0_x0143 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x044 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_2_x045 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_1_x068 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_1_x069 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_2_1_x0108 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_1_x0109 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_2_1_x0147 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_2_x0 {
		fifo_A_PE_2_2_x045 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_3_x046 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_2_x073 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_2_x074 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_2_2_x0113 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_2_x0114 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_2_2_x0151 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_3_x0 {
		fifo_A_PE_2_3_x046 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_4_x047 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_3_x078 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_3_x079 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_2_3_x0118 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_3_x0119 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_2_3_x0155 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_4_x0 {
		fifo_A_PE_2_4_x047 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_5_x048 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_4_x083 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_4_x084 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_2_4_x0123 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_4_x0124 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_2_4_x0159 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_5_x0 {
		fifo_A_PE_2_5_x048 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_6_x049 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_5_x088 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_5_x089 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_2_5_x0128 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_5_x0129 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_2_5_x0163 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_6_x0 {
		fifo_A_PE_2_6_x049 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_7_x050 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_6_x093 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_6_x094 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_2_6_x0133 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_6_x0134 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_2_6_x0167 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_2_7_x0 {
		fifo_A_PE_2_7_x050 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_2_8_x051 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_7_x098 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_3_7_x099 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_2_7_x0138 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_3_7_x0139 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_2_7_x0171 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_0_x0 {
		fifo_A_PE_3_0_x052 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_1_x053 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_0_x064 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_0_x065 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_0_x0104 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_0_x0105 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_0_x0144 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_1_x0 {
		fifo_A_PE_3_1_x053 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_2_x054 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_1_x069 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_1_x070 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_1_x0109 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_1_x0110 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_1_x0148 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_2_x0 {
		fifo_A_PE_3_2_x054 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_3_x055 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_2_x074 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_2_x075 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_2_x0114 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_2_x0115 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_2_x0152 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_3_x0 {
		fifo_A_PE_3_3_x055 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_4_x056 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_3_x079 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_3_x080 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_3_x0119 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_3_x0120 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_3_x0156 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_4_x0 {
		fifo_A_PE_3_4_x056 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_5_x057 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_4_x084 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_4_x085 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_4_x0124 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_4_x0125 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_4_x0160 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_5_x0 {
		fifo_A_PE_3_5_x057 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_6_x058 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_5_x089 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_5_x090 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_5_x0129 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_5_x0130 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_5_x0164 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_6_x0 {
		fifo_A_PE_3_6_x058 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_7_x059 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_6_x094 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_6_x095 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_6_x0134 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_6_x0135 {Type O LastRead -1 FirstWrite 12}
		fifo_D_drain_PE_3_6_x0168 {Type O LastRead -1 FirstWrite 12}}
	PE_wrapper_3_7_x0 {
		fifo_A_PE_3_7_x059 {Type I LastRead 8 FirstWrite -1}
		fifo_A_PE_3_8_x060 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_7_x099 {Type I LastRead 9 FirstWrite -1}
		fifo_B_PE_4_7_x0100 {Type O LastRead -1 FirstWrite 12}
		fifo_C_PE_3_7_x0139 {Type I LastRead 9 FirstWrite -1}
		fifo_C_PE_4_7_x0140 {Type O LastRead -1 FirstWrite 12}
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
		fifo_D_drain_D_drain_IO_L3_out_serialize_x04 {Type I LastRead 2 FirstWrite -1}
		D {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1369555329", "Max" : "1230509849"}
	, {"Name" : "Interval", "Min" : "-139045422", "Max" : "-139045422"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_A { m_axi {  { m_axi_gmem_A_AWVALID VALID 1 1 }  { m_axi_gmem_A_AWREADY READY 0 1 }  { m_axi_gmem_A_AWADDR ADDR 1 64 }  { m_axi_gmem_A_AWID ID 1 1 }  { m_axi_gmem_A_AWLEN LEN 1 32 }  { m_axi_gmem_A_AWSIZE SIZE 1 3 }  { m_axi_gmem_A_AWBURST BURST 1 2 }  { m_axi_gmem_A_AWLOCK LOCK 1 2 }  { m_axi_gmem_A_AWCACHE CACHE 1 4 }  { m_axi_gmem_A_AWPROT PROT 1 3 }  { m_axi_gmem_A_AWQOS QOS 1 4 }  { m_axi_gmem_A_AWREGION REGION 1 4 }  { m_axi_gmem_A_AWUSER USER 1 1 }  { m_axi_gmem_A_WVALID VALID 1 1 }  { m_axi_gmem_A_WREADY READY 0 1 }  { m_axi_gmem_A_WDATA DATA 1 512 }  { m_axi_gmem_A_WSTRB STRB 1 64 }  { m_axi_gmem_A_WLAST LAST 1 1 }  { m_axi_gmem_A_WID ID 1 1 }  { m_axi_gmem_A_WUSER USER 1 1 }  { m_axi_gmem_A_ARVALID VALID 1 1 }  { m_axi_gmem_A_ARREADY READY 0 1 }  { m_axi_gmem_A_ARADDR ADDR 1 64 }  { m_axi_gmem_A_ARID ID 1 1 }  { m_axi_gmem_A_ARLEN LEN 1 32 }  { m_axi_gmem_A_ARSIZE SIZE 1 3 }  { m_axi_gmem_A_ARBURST BURST 1 2 }  { m_axi_gmem_A_ARLOCK LOCK 1 2 }  { m_axi_gmem_A_ARCACHE CACHE 1 4 }  { m_axi_gmem_A_ARPROT PROT 1 3 }  { m_axi_gmem_A_ARQOS QOS 1 4 }  { m_axi_gmem_A_ARREGION REGION 1 4 }  { m_axi_gmem_A_ARUSER USER 1 1 }  { m_axi_gmem_A_RVALID VALID 0 1 }  { m_axi_gmem_A_RREADY READY 1 1 }  { m_axi_gmem_A_RDATA DATA 0 512 }  { m_axi_gmem_A_RLAST LAST 0 1 }  { m_axi_gmem_A_RID ID 0 1 }  { m_axi_gmem_A_RUSER USER 0 1 }  { m_axi_gmem_A_RRESP RESP 0 2 }  { m_axi_gmem_A_BVALID VALID 0 1 }  { m_axi_gmem_A_BREADY READY 1 1 }  { m_axi_gmem_A_BRESP RESP 0 2 }  { m_axi_gmem_A_BID ID 0 1 }  { m_axi_gmem_A_BUSER USER 0 1 } } }
	gmem_B { m_axi {  { m_axi_gmem_B_AWVALID VALID 1 1 }  { m_axi_gmem_B_AWREADY READY 0 1 }  { m_axi_gmem_B_AWADDR ADDR 1 64 }  { m_axi_gmem_B_AWID ID 1 1 }  { m_axi_gmem_B_AWLEN LEN 1 32 }  { m_axi_gmem_B_AWSIZE SIZE 1 3 }  { m_axi_gmem_B_AWBURST BURST 1 2 }  { m_axi_gmem_B_AWLOCK LOCK 1 2 }  { m_axi_gmem_B_AWCACHE CACHE 1 4 }  { m_axi_gmem_B_AWPROT PROT 1 3 }  { m_axi_gmem_B_AWQOS QOS 1 4 }  { m_axi_gmem_B_AWREGION REGION 1 4 }  { m_axi_gmem_B_AWUSER USER 1 1 }  { m_axi_gmem_B_WVALID VALID 1 1 }  { m_axi_gmem_B_WREADY READY 0 1 }  { m_axi_gmem_B_WDATA DATA 1 512 }  { m_axi_gmem_B_WSTRB STRB 1 64 }  { m_axi_gmem_B_WLAST LAST 1 1 }  { m_axi_gmem_B_WID ID 1 1 }  { m_axi_gmem_B_WUSER USER 1 1 }  { m_axi_gmem_B_ARVALID VALID 1 1 }  { m_axi_gmem_B_ARREADY READY 0 1 }  { m_axi_gmem_B_ARADDR ADDR 1 64 }  { m_axi_gmem_B_ARID ID 1 1 }  { m_axi_gmem_B_ARLEN LEN 1 32 }  { m_axi_gmem_B_ARSIZE SIZE 1 3 }  { m_axi_gmem_B_ARBURST BURST 1 2 }  { m_axi_gmem_B_ARLOCK LOCK 1 2 }  { m_axi_gmem_B_ARCACHE CACHE 1 4 }  { m_axi_gmem_B_ARPROT PROT 1 3 }  { m_axi_gmem_B_ARQOS QOS 1 4 }  { m_axi_gmem_B_ARREGION REGION 1 4 }  { m_axi_gmem_B_ARUSER USER 1 1 }  { m_axi_gmem_B_RVALID VALID 0 1 }  { m_axi_gmem_B_RREADY READY 1 1 }  { m_axi_gmem_B_RDATA DATA 0 512 }  { m_axi_gmem_B_RLAST LAST 0 1 }  { m_axi_gmem_B_RID ID 0 1 }  { m_axi_gmem_B_RUSER USER 0 1 }  { m_axi_gmem_B_RRESP RESP 0 2 }  { m_axi_gmem_B_BVALID VALID 0 1 }  { m_axi_gmem_B_BREADY READY 1 1 }  { m_axi_gmem_B_BRESP RESP 0 2 }  { m_axi_gmem_B_BID ID 0 1 }  { m_axi_gmem_B_BUSER USER 0 1 } } }
	A { ap_none {  { A in_data 0 64 }  { A_ap_vld in_vld 0 1 } } }
	B { ap_none {  { B in_data 0 64 }  { B_ap_vld in_vld 0 1 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_d0 mem_din 1 512 }  { C_q0 mem_dout 0 512 }  { C_we0 mem_we 1 1 }  { C_address1 mem_address 1 12 }  { C_ce1 mem_ce 1 1 }  { C_d1 mem_din 1 512 }  { C_q1 mem_dout 0 512 }  { C_we1 mem_we 1 1 } } }
	D { ap_memory {  { D_address0 mem_address 1 12 }  { D_ce0 mem_ce 1 1 }  { D_d0 mem_din 1 128 }  { D_q0 mem_dout 0 128 }  { D_we0 mem_we 1 1 }  { D_address1 mem_address 1 12 }  { D_ce1 mem_ce 1 1 }  { D_d1 mem_din 1 128 }  { D_q1 mem_dout 0 128 }  { D_we1 mem_we 1 1 } } }
}
